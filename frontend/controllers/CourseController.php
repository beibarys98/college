<?php

namespace frontend\controllers;

use common\models\Category;
use common\models\Certificate;
use common\models\Course;
use common\models\File;
use common\models\FileType;
use common\models\Participant;
use common\models\search\CourseSearch;
use common\models\search\ParticipantSearch;
use common\models\Test;
use Yii;
use yii\data\ActiveDataProvider;
use yii\helpers\ArrayHelper;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

class CourseController extends Controller
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

    public function actionIndex($category_id)
    {
        $searchModel = new CourseSearch();
        $queryParams = $this->request->queryParams;
        $queryParams['CourseSearch']['category_id'] = $category_id;
        $dataProvider = $searchModel->search($queryParams);

        $category = Category::findOne($category_id);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'category' => $category,
        ]);
    }

    public function actionView($id)
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Course::find()->andWhere(['id' => $id]),
        ]);

        $participantsSM = new ParticipantSearch();
        $queryParams = $this->request->queryParams;
        $queryParams['ParticipantSearch']['course_id'] = $id;
        $participantsDP = $participantsSM->search($queryParams);

        $certificatesDP = new ActiveDataProvider([
            'query' => Certificate::find()->andWhere(['course_id' => $id]),
        ]);

        $testsDP = new ActiveDataProvider([
            'query' => Test::find()->andWhere(['course_id' => $id, 'type' => 'test']),
        ]);

        $surveyDP = new ActiveDataProvider([
            'query' => Test::find()->andWhere(['course_id' => $id, 'type' => 'survey']),
        ]);

        return $this->render('view', [
            'model' => $this->findModel($id),
            'dataProvider' => $dataProvider,
            'participantsDP' => $participantsDP,
            'participantsSM' => $participantsSM,
            'certificatesDP' => $certificatesDP,
            'testsDP' => $testsDP,
            'surveyDP' => $surveyDP,
        ]);
    }

    public function actionView2($id)
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Course::find()->andWhere(['id' => $id]),
        ]);

        $testsDP = new ActiveDataProvider([
            'query' => Test::find()->andWhere(['course_id' => $id, 'type' => 'test', 'lang' => Yii::$app->language, 'status' => 'public']),
        ]);

        $surveyDP = new ActiveDataProvider([
            'query' => Test::find()->andWhere(['course_id' => $id, 'type' => 'survey', 'lang' => Yii::$app->language, 'status' => 'public']),
        ]);

        $participant = Participant::findOne(['id' => Yii::$app->user->identity->participant_id]);

        return $this->render('view2', [
            'model' => $this->findModel($id),
            'dataProvider' => $dataProvider,
            'testsDP' => $testsDP,
            'surveyDP' => $surveyDP,
            'participant' => $participant,
        ]);
    }

    public function actionEnroll($id, $type)
    {
        $participant = Participant::findOne(['id' => Yii::$app->user->identity->participant_id]);

        $fileCount = File::find()
            ->andWhere(['participant_id' => $participant->id, 'course_id' => $id, 'type' => 'doc'])
            ->count();

        if ($fileCount == 0) {
            $fileTypes = FileType::find()->all();

            foreach ($fileTypes as $fileType) {
                $file = new File();
                $file->participant_id = $participant->id;
                $file->course_id = $id;
                $file->title = $fileType->title;
                $file->title_ru = $fileType->title_ru;
                $file->file_path = '';
                $file->type = 'doc';
                $file->save(false);
            }
        }

        $files = new ActiveDataProvider([
            'query' => File::find()->andWhere(['course_id' => $id, 'participant_id' => $participant->id, 'type' => 'doc']),
        ]);

        return $this->render('enroll', [
            'files' => $files,
            'type' => $type,
            'id' => $id,
        ]);
    }

    public function actionCheckEnroll($id, $type){
        $participant = Participant::findOne(['id' => Yii::$app->user->identity->participant_id]);

        $requiredFilesCount = 6; // Assuming 7 files are required (6 or 7 based on type)
        $uploadedFilesCount = File::find()
            ->andWhere(['participant_id' => $participant->id, 'course_id' => $id, 'type' => 'doc'])
            ->andWhere(['not', ['file_path' => '']]) // Check if file_path is not empty
            ->count();

        $checkboxChecked = Yii::$app->request->get('agreeCheckbox', false);
        $category_id = Course::findOne(['id' => $id])->category_id;

        if ($type == '2' && !$checkboxChecked) {
            Yii::$app->session->setFlash('error', 'Please agree to the contract.');
            return $this->redirect(['course/enroll', 'id' => $id, 'type' => $type, 'category_id' => $category_id]);
        }

        if ($uploadedFilesCount != $requiredFilesCount) {
            Yii::$app->session->setFlash('error', 'Please upload all required files.');
            return $this->redirect(['course/enroll', 'id' => $id, 'type' => $type, 'category_id' => $category_id]);
        }

        $participant->course_id = $id;
        $participant->save(false);

        Yii::$app->session->setFlash('success', 'You have been successfully enrolled.');
        return $this->redirect(['course/view2', 'id' => $id, 'category_id' => $category_id]);
    }

    public function actionCreate($category_id)
    {
        $model = new Course();

        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {
                $model->category_id = $category_id;
                $model->save();
                return $this->redirect(['course/view', 'id' => $model->id, 'category_id' => $category_id]);
            }
        } else {
            $model->loadDefaultValues();
        }

        $category = Category::findOne($category_id);

        return $this->render('create', [
            'model' => $model,
            'type' => $category->type,
        ]);
    }

    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $id, 'category_id' => $model->category_id]);
        }

        return $this->render('update', [
            'model' => $model,
            'type' => $model->category->type,
        ]);
    }

    public function actionDelete($id)
    {
        $model = $this->findModel($id);
        $category_id = $model->category_id;
        $model->delete();

        return $this->redirect(['index', 'category_id' => $category_id]);
    }

    protected function findModel($id)
    {
        if (($model = Course::findOne(['id' => $id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
}
