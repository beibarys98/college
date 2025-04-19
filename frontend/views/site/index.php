<?php

/** @var yii\web\View $this */
/** @var $model */
/** @var $dataProvider */

use common\models\Participant;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

$this->title = $model->name;
?>
<div class="site-index">
    <h1>
        <?= $this->title; ?>
    </h1>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
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
                'attribute' => 'course',
                'label' => 'Цикл',
                'format' => 'raw',
                'value' => function ($model) {
                    return $model->course ? Html::a($model->course->title, ['/course/view', 'id' => $model->course_id, 'category_id' => $model->course->category_id]) : '';
                },
            ],
            [
                'attribute' => 'ssn',
                'label' => Yii::t('app', 'ЖСН'),
                'value' => function ($model) {
                    return $model->user->ssn ?: '';
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
                'attribute' => 'organisation',
                'label' => Yii::t('app', 'Мекеме'),
                'value' => function ($model) {
                    return $model->organisation ?: '';
                }
            ],
            [
                'headerOptions' => ['style' => 'width: 5%;'],
                'class' => ActionColumn::className(),
                'template' => '{update}',
                'urlCreator' => function ($action, Participant $model, $key, $index, $column) {
                    return Url::toRoute(['participant/update', 'id' => $model->id, 'category_id' => $model->course ? $model->course->category_id : '']);
                }
            ],
        ],
    ]); ?>
</div>
