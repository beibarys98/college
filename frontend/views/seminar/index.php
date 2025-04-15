<?php

use common\models\Seminar;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\Pjax;

/** @var yii\web\View $this */
/** @var \common\models\search\SeminarSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */
/** @var $category */

$this->title = Yii::t('app', $category);
?>
<div class="seminar-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Добавить'), ['create', 'category' => $category], ['class' => 'btn btn-success']) ?>
    </p>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'tableOptions' => ['class' => 'table table-striped'],
        'pager' => [
            'class' => \yii\bootstrap5\LinkPager::class,
        ],
        'columns' => [
            [
                'attribute' => 'id',
                'headerOptions' => ['style' => 'width: 5%;'],
            ],
            [
                'attribute' => 'title',
                'format' => 'raw',
                'value' => function ($model) use ($category) {
                    return Html::a($model->title, ['view', 'id' => $model->id, 'category' => $category]);
                },
            ],
            [
                'headerOptions' => ['style' => 'width: 5%;'],
                'class' => ActionColumn::className(),
                'template' => '{delete}',
                'urlCreator' => function ($action, Seminar $model, $key, $index, $column) use($category) {
                    return Url::toRoute([$action, 'id' => $model->id, 'category' => $category]);
                 }
            ],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
