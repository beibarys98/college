<?php

use common\models\Certificate;
use common\models\Course;
use common\models\Participant;
use common\models\Test;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

/** @var yii\web\View $this */
/** @var $model */
/** @var $dataProvider */
/** @var $testsDP */
/** @var $surveyDP */
/** @var $participant */

$this->title = $model->title;

\yii\web\YiiAsset::register($this);
?>
<div class="course-view">

    <h1><?= $this->title ?></h1>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
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
                'headerOptions' => ['style' => 'width: 10%;'],
                'format' => 'raw',
                'value' => function ($model){
                    return Html::a(Yii::t('app', 'Жазылу') , ['enroll', 'id' => $model->id, 'type' => '1', 'category_id' => $model->category_id], ['class' => 'btn btn-primary w-100']);
                }
            ]
        ],
    ]) ?>

    <br>

    <?php if($participant->course_id == $model->id): ?>
    <?php if($model->category->type != 'sem'): ?>

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
        ],
    ]); ?>

    <br>
    <?php endif; ?>
    <?php endif; ?>

    <h1>Сертификат</h1>
</div>
