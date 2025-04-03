<?php

namespace frontend\controllers;

use common\models\Certificate;
use common\models\Course;
use common\models\search\CertificateSearch;
use common\models\search\CourseSearch;
use common\models\search\ParticipantSearch;
use common\models\Test;
use yii\data\ActiveDataProvider;
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

    public function actionIndex($category, $sidebar)
    {
        $searchModel = new CourseSearch();

        $queryParams = $this->request->queryParams;
        $queryParams['CourseSearch']['category'] = $category;

        $dataProvider = $searchModel->search($queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'category' => $category,
            'sidebar' => $sidebar,
        ]);
    }

    public function actionView($id, $category)
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
            'query' => Test::find()->andWhere(['course_id' => $id]),
        ]);

        $surveyDP = new ActiveDataProvider([
            'query' => Test::find()->andWhere(['course_id' => $id, 'status' => 'new_survey']),
        ]);

        return $this->render('view', [
            'model' => $this->findModel($id),
            'dataProvider' => $dataProvider,
            'category' => $category,
            'participantsDP' => $participantsDP,
            'participantsSM' => $participantsSM,
            'certificatesDP' => $certificatesDP,
            'testsDP' => $testsDP,
            'surveyDP' => $surveyDP,
        ]);
    }

    public function actionCreate($category, $sidebar)
    {
        $model = new Course();

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
            'sidebar' => $sidebar,
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
            'category' => $category
        ]);
    }

    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    protected function findModel($id)
    {
        if (($model = Course::findOne(['id' => $id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
    }
}
