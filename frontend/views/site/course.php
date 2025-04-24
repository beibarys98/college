<?php

use common\models\Certificate;
use common\models\Course;
use common\models\Participant;
use common\models\Test;
use common\models\User;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

/** @var yii\web\View $this */
/** @var $user */
/** @var $userDP */
/** @var $course */
/** @var $courseDP*/
/** @var $testsDP */
/** @var $surveyDP */
/** @var $certificatesDP */

$this->title = $user->name;

\yii\web\YiiAsset::register($this);
?>
<div class="course-view">

    <h1>
        <?= $this->title; ?>
    </h1>

    <?= GridView::widget([
        'dataProvider' => $userDP,
        'tableOptions' => ['class' => 'table table-striped'],
        'pager' => [
            'class' => \yii\bootstrap5\LinkPager::class,
        ],
        'summary' => false,
        'columns' => [
            [
                'attribute' => 'id',
                'headerOptions' => ['style' => 'width: 5%;'],
            ],
            [
                'attribute' => 'ssn',
                'label' => Yii::t('app', 'ЖСН'),
                'value' => function ($model) {
                    return $model->ssn ?: '';
                }
            ],
            [
                'attribute' => 'telephone',
                'label' => 'Телефон',
                'value' => function ($model) {
                    return $model->telephone ?: '';
                }
            ],
            [
                'attribute' => 'organization',
                'label' => Yii::t('app', 'Мекеме'),
                'value' => function ($model) {
                    return $model->organization ?: '';
                }
            ],
            [
                'headerOptions' => ['style' => 'width: 5%;'],
                'class' => ActionColumn::className(),
                'template' => '{update}',
                'urlCreator' => function ($action, User $model, $key, $index, $column) {
                    return Url::toRoute(['user/update', 'id' => $model->id]);
                }
            ],
        ],
    ]); ?>

    <br>

    <h1><?= Yii::$app->language == 'kz' ? $course->title : $course->title_ru ?></h1>

    <?= GridView::widget([
        'dataProvider' => $courseDP,
        'summary' => false,
        'tableOptions' => ['class' => 'table table-striped'],
        'columns' => [
            [
                'attribute' => 'id',
                'headerOptions' => ['style' => 'width: 5%;'],
            ],
            [
                'attribute' => 'month',
                'label' => Yii::t('app', 'Ай'),
                'value' => function ($model){
                    return Yii::t('app', $model->month);
                }
            ],
            [
                'attribute' => 'duration',
                'label' => Yii::t('app', 'Ұзақтығы'),
                'value' => function ($model){
                    return Yii::t('app', $model->duration);
                }
            ],
            [
                'headerOptions' => ['style' => 'width: 5%;'],
                'class' => ActionColumn::className(),
                'template' => '{update}',
                'urlCreator' => function ($action, Course $model, $key, $index, $column){
                    if ($action === 'update') {
                        return Url::toRoute(['update', 'id' => $model->id, 'category_id' => $model->category_id]); // Custom update URL
                    }
                    return Url::toRoute([$action, 'id' => $model->id]); // Default for other actions
                }
            ]
        ],
    ]) ?>

    <br>

    <h1>Тесты</h1>

    <?= GridView::widget([
        'dataProvider' => $testsDP,
        'tableOptions' => ['class' => 'table table-striped'],
        'pager' => [
            'class' => \yii\bootstrap5\LinkPager::class,
        ],
        'summary' => false,
        'columns' => [
            [
                'attribute' => 'id',
                'headerOptions' => ['style' => 'width: 5%;'],
            ],
            [
                'attribute' => 'title',
                'label' => 'Название',
                'format' => 'raw',
                'value' => function ($model){
                    return Html::a('test_id_' . $model->id, ['test/view', 'id' => $model->id, 'category_id' => $model->course->category_id]);
                },
            ],
            [
                'attribute' => 'lang',
                'label' => 'Язык'
            ],
            [
                'attribute' => 'status',
                'label' => 'Статус'
            ],
            [
                'attribute' => 'duration',
                'label' => 'Длительность'
            ],
        ],
    ]); ?>

    <br>

    <h1>Анкета</h1>

    <?= GridView::widget([
        'dataProvider' => $surveyDP,
        'tableOptions' => ['class' => 'table table-striped'],
        'pager' => [
            'class' => \yii\bootstrap5\LinkPager::class,
        ],
        'summary' => false,
        'columns' => [
            [
                'attribute' => 'id',
                'headerOptions' => ['style' => 'width: 5%;'],
            ],
            [
                'attribute' => 'title',
                'label' => 'Название',
                'format' => 'raw',
                'value' => function ($model){
                    return Html::a('survey_id_' . $model->id, ['test/view', 'id' => $model->id, 'category_id' => $model->course->category_id]);
                }
            ],
            [
                'attribute' => 'lang',
                'label' => 'Язык'
            ],
            [
                'attribute' => 'status',
                'label' => 'Статус'
            ],
        ],
    ]); ?>

    <br>

    <h1>Сертификаты</h1>

    <?= GridView::widget([
        'dataProvider' => $certificatesDP,
        'tableOptions' => ['class' => 'table table-striped'],
        'pager' => [
            'class' => \yii\bootstrap5\LinkPager::class,
        ],
        'summary' => false,
        'showHeader' => false,
        'columns' => [
            [
                'class' => 'yii\grid\SerialColumn',
                'headerOptions' => ['style' => 'width: 5%;'],
            ],
            [
                'attribute' => 'img_path',
                'format' => 'raw',
                'value' => function ($model){
                    return Html::a('certificate_id_' . $model->id, [$model->img_path], ['target' => '_blank']);
                }
            ],
        ],
    ]); ?>
</div>
