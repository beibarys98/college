<?php

namespace frontend\controllers;

use common\models\Course;
use common\models\search\CourseSearch;
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

        // Add the category filter to the search model query
        $queryParams = $this->request->queryParams;
        if ($category) {
            $queryParams['CourseSearch']['category'] = $category;  // Assuming the column name is 'category'
        }

        $dataProvider = $searchModel->search($queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'category' => $category,
            'sidebar' => $sidebar,
        ]);
    }

    public function actionView($id, $category, $sidebar)
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Course::find()->andWhere(['id' => $id]),
        ]);

        return $this->render('view', [
            'model' => $this->findModel($id),
            'dataProvider' => $dataProvider,
            'category' => $category,
            'sidebar' => $sidebar,
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

    public function actionUpdate($id, $category, $sidebar)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['index', 'category' => $category]);
        }

        return $this->render('update', [
            'model' => $model,
            'category' => $category,
            'sidebar' => $sidebar,
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
