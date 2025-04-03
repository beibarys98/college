<?php

namespace frontend\controllers;

use common\models\search\ParticipantSearch;
use common\models\search\SeminarSearch;
use common\models\Seminar;
use yii\data\ActiveDataProvider;
use yii\filters\VerbFilter;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

class SeminarController extends Controller
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

    public function actionIndex($category)
    {
        $searchModel = new SeminarSearch();

        // Add the category filter to the search model query
        $queryParams = $this->request->queryParams;
        if ($category) {
            $queryParams['SeminarSearch']['category'] = $category;  // Assuming the column name is 'category'
        }

        $dataProvider = $searchModel->search($queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'category' => $category,
        ]);
    }

    public function actionView($id, $category)
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Seminar::find()->andWhere(['id' => $id]),
        ]);

        $participantsSM = new ParticipantSearch();
        $queryParams = $this->request->queryParams;
        $queryParams['ParticipantSearch']['course_id'] = $id;
        $participantsDP = $participantsSM->search($queryParams);

        return $this->render('view', [
            'model' => $this->findModel($id),
            'dataProvider' => $dataProvider,
            'category' => $category,
            'participantsDP' => $participantsDP,
            'participantsSM' => $participantsSM,
        ]);
    }

    public function actionCreate($category)
    {
        $model = new Seminar();

        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {
                $model->category = $category;
                $model->save();
                return $this->redirect(['index', 'category' => $category]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
            'category' => $category,
        ]);
    }

    public function actionUpdate($id, $category)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['index', 'category' => $category]);
        }

        return $this->render('update', [
            'model' => $model,
            'category' => $category,
        ]);
    }

    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    protected function findModel($id)
    {
        if (($model = Seminar::findOne(['id' => $id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
}
