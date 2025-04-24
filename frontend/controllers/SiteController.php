<?php

namespace frontend\controllers;

use common\models\Certificate;
use common\models\Course;
use common\models\File;
use common\models\FileType;
use common\models\search\UserSearch;
use common\models\Test;
use common\models\User;
use Yii;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;
use frontend\models\SignupForm;

class SiteController extends Controller
{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::class,
                'only' => ['logout', 'signup'],
                'rules' => [
                    [
                        'actions' => ['signup'],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::class,
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    public function actions()
    {
        return [
            'error' => [
                'class' => \yii\web\ErrorAction::class,
            ],
            'captcha' => [
                'class' => \yii\captcha\CaptchaAction::class,
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    public function actionIndex()
    {
        if(Yii::$app->user->isGuest) {
            return $this->redirect('/site/login');
        }

        if(Yii::$app->user->identity->ssn == 'admin'){
            Yii::$app->session->set('language', 'ru');
            return $this->redirect('/user/index');
        }else{
            $model = User::findOne(Yii::$app->user->id);

            if($model->course_id != null){
                return $this->redirect(['site/course', 'id' => $model->course_id]);
            }

            $searchModel = new UserSearch();
            $searchModel->id = Yii::$app->user->id;
            $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

            $courseDP = new ActiveDataProvider([
                'query' => Course::find()->andWhere(['category_id' => $model->category_id]),
            ]);

            return $this->render('index', [
                'model' => $model,
                'dataProvider' => $dataProvider,
                'courseDP' => $courseDP,
            ]);
        }
    }

    public function actionEnroll($id, $type)
    {
        $user = User::findOne(Yii::$app->user->id);

        $fileCount = File::find()
            ->andWhere(['user_id' => $user->id, 'course_id' => $id, 'type' => 'doc'])
            ->count();

        if ($fileCount == 0) {
            $fileTypes = FileType::find()->all();

            foreach ($fileTypes as $fileType) {
                $file = new File();
                $file->user_id = $user->id;
                $file->course_id = $id;
                $file->title = $fileType->title;
                $file->title_ru = $fileType->title_ru;
                $file->file_path = '';
                $file->type = 'doc';
                $file->save(false);
            }
        }

        $files = new ActiveDataProvider([
            'query' => File::find()->andWhere(['course_id' => $id, 'user_id' => $user->id, 'type' => 'doc']),
        ]);

        return $this->render('enroll', [
            'files' => $files,
            'type' => $type,
            'id' => $id,
        ]);
    }

    public function actionCheckEnroll($id, $type){
        $user = User::findOne(Yii::$app->user->id);

        $requiredFilesCount = 6; // Assuming 7 files are required (6 or 7 based on type)
        $uploadedFilesCount = File::find()
            ->andWhere(['user_id' => $user->id, 'course_id' => $id, 'type' => 'doc'])
            ->andWhere(['not', ['file_path' => '']]) // Check if file_path is not empty
            ->count();

        $checkboxChecked = Yii::$app->request->get('agreeCheckbox', false);

        if ($type == '2' && !$checkboxChecked) {
            Yii::$app->session->setFlash('error', Yii::t('app', 'Келісімшартқа келісіңіз!'));
            return $this->redirect(['course/enroll', 'id' => $id, 'type' => $type]);
        }

        if ($uploadedFilesCount != $requiredFilesCount) {
            Yii::$app->session->setFlash('error', Yii::t('app', 'Файлдарды жуктеңіз!'));
            return $this->redirect(['course/enroll', 'id' => $id, 'type' => $type]);
        }

        $user->course_id = $id;
        $user->save(false);

        Yii::$app->session->setFlash('success', 'You have been successfully enrolled.');
        return $this->redirect(['site/course', 'id' => $id]);
    }

    public function actionCourse($id)
    {
        $searchModel = new UserSearch();
        $searchModel->id = Yii::$app->user->id;
        $userDP = $searchModel->search(Yii::$app->request->queryParams);

        $courseDP = new ActiveDataProvider([
            'query' => Course::find()->andWhere(['id' => $id]),
        ]);

        $testsDP = new ActiveDataProvider([
            'query' => Test::find()->andWhere(['course_id' => $id, 'type' => 'test']),
        ]);

        $surveyDP = new ActiveDataProvider([
            'query' => Test::find()->andWhere(['course_id' => $id, 'type' => 'survey']),
        ]);

        $certificatesDP = new ActiveDataProvider([
            'query' => Certificate::find()->andWhere(['course_id' => $id]),
        ]);

        return $this->render('course', [
            'user' => User::findOne(Yii::$app->user->id),
            'userDP' => $userDP,
            'course' => Course::findOne($id),
            'courseDP' => $courseDP,
            'testsDP' => $testsDP,
            'surveyDP' => $surveyDP,
            'certificatesDP' => $certificatesDP,
        ]);
    }

    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->redirect(['/site/index']);
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->redirect(['/site/index']);
        }

        $model->password = '';

        return $this->render('login', [
            'model' => $model,
        ]);
    }

    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->redirect(['/site/index']);
    }

    public function actionSignup()
    {
        $model = new SignupForm();
        if ($model->load(Yii::$app->request->post()) && $model->signup()) {
            Yii::$app->session->setFlash('success', Yii::t('app', 'Тіркелу сәтті өтті!'));
            return $this->redirect(['/site/index']);
        }

        return $this->render('signup', [
            'model' => $model,
        ]);
    }

    public function actionLanguage($view)
    {
        if(Yii::$app->language == 'kz'){
            Yii::$app->session->set('language', 'ru');
        }else{
            Yii::$app->session->set('language', 'kz');
        }
        return $this->redirect([$view]);
    }
}
