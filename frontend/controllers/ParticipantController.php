<?php

namespace frontend\controllers;

use common\models\Participant;
use common\models\search\ParticipantSearch;
use common\models\User;
use PhpOffice\PhpSpreadsheet\IOFactory;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

class ParticipantController extends Controller
{
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    public function actionIndex()
    {
        $searchModel = new ParticipantSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    public function actionCreate($course_id, $category, $type)
    {
        $model = new Participant();

        if ($this->request->isPost) {
            $model->file = UploadedFile::getInstance($model, 'file');

            if ($model->file) {
                $filePath = Yii::getAlias('@webroot/uploads/') . $model->file->name;
                if ($model->file->saveAs($filePath)) {
                    $spreadsheet = IOFactory::load($filePath);
                    $sheet = $spreadsheet->getActiveSheet();
                    $rows = $sheet->toArray();

                    foreach ($rows as $row) {
                        $participant = new Participant();
                        $participant->course_id = $course_id;
                        $participant->name = trim($row[0]);

                        $participant->telephone = isset($row[1]) ? trim($row[1]) : '';
                        $participant->organisation = isset($row[2]) ? trim($row[2]) : '';

                        $participant->save(false);

                        $user = new User();
                        $user->username = $participant->id;
                        $user->password = Yii::$app->security->generatePasswordHash('password');
                        $user->generateAuthKey();
                        $user->save(false);
                    }

                    unlink($filePath);

                    return $this->redirect([$type . '/view', 'id' => $course_id, 'category' => $category]);
                }
            } elseif ($model->load($this->request->post()) && $model->save()) {
                return $this->redirect(['view', 'id' => $model->id]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
            'category' => $category
        ]);
    }

    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    protected function findModel($id)
    {
        if (($model = Participant::findOne(['id' => $id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
}
