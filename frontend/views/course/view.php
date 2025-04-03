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
/** @var $category */
/** @var $participantsDP */
/** @var $participantsSM */
/** @var $certificatesDP */
/** @var $testsDP */
/** @var $surveyDP */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', $category), 'url' => ['index', 'category' => $category]];
$this->params['breadcrumbs'][] = $this->title;

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
            'title',
            'month',
            'duration',
            [
                'headerOptions' => ['style' => 'width: 5%;'],
                'class' => ActionColumn::className(),
                'template' => '{update}<span style="margin: 10px;"></span>{delete}',
                'urlCreator' => function ($action, Course $model, $key, $index, $column) use($category) {
                    if ($action === 'update') {
                        return Url::toRoute(['update', 'id' => $model->id, 'category' => $category]); // Custom update URL
                    }
                    return Url::toRoute([$action, 'id' => $model->id]); // Default for other actions
                }
            ]

        ],
    ]) ?>

    <br>

    <h1>Участники</h1>
    <p>
        <?= Html::a(Yii::t('app', 'Добавить'), ['participant/create', 'course_id' => $model->id, 'category' => $category, 'type' => 'course'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $participantsDP,
        'filterModel' => $participantsSM,
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
                'attribute' => 'name',
                'format' => 'raw',
                'value' => function ($model) {
                    return Html::a($model->name, ['participant/update', 'id' => $model->id]);
                }
            ],
            'telephone',
            'organisation',
            [
                'headerOptions' => ['style' => 'width: 5%;'],
                'class' => ActionColumn::className(),
                'template' => '{delete}',
                'urlCreator' => function ($action, Participant $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                }
            ],
        ],
    ]); ?>

    <br>

    <h1>Тесты</h1>
    <p>
        <?= Html::a(Yii::t('app', 'Добавить'), ['test/create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $testsDP,
        'tableOptions' => ['class' => 'table table-striped'],
        'pager' => [
            'class' => \yii\bootstrap5\LinkPager::class,
        ],
        'columns' => [
            [
                'attribute' => 'id',
                'headerOptions' => ['style' => 'width: 5%;'],
            ],
            'lang',
            'status',
            'duration',
            [
                'headerOptions' => ['style' => 'width: 5%;'],
                'class' => ActionColumn::className(),
                'template' => '{delete}',
                'urlCreator' => function ($action, Test $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                }
            ],
        ],
    ]); ?>

    <br>

    <h1>Анкета</h1>
    <p>
        <?= Html::a(Yii::t('app', 'Добавить'), ['test/create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $surveyDP,
        'tableOptions' => ['class' => 'table table-striped'],
        'pager' => [
            'class' => \yii\bootstrap5\LinkPager::class,
        ],
        'columns' => [
            [
                'attribute' => 'id',
                'headerOptions' => ['style' => 'width: 5%;'],
            ],
            'lang',
            'status',
            'duration',
            [
                'headerOptions' => ['style' => 'width: 5%;'],
                'class' => ActionColumn::className(),
                'template' => '{delete}',
                'urlCreator' => function ($action, Test $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                }
            ],
        ],
    ]); ?>

    <h1>Сертификаты</h1>
    <p>
        <?= Html::a(Yii::t('app', 'Добавить'), ['certificate/create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $certificatesDP,
        'tableOptions' => ['class' => 'table table-striped'],
        'pager' => [
            'class' => \yii\bootstrap5\LinkPager::class,
        ],
        'columns' => [
            [
                'attribute' => 'id',
                'headerOptions' => ['style' => 'width: 5%;'],
            ],
            'img_path',
            [
                'headerOptions' => ['style' => 'width: 5%;'],
                'class' => ActionColumn::className(),
                'template' => '{delete}',
                'urlCreator' => function ($action, Certificate $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                }
            ],
        ],
    ]); ?>
</div>
