<?php

use common\models\Course;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

/** @var yii\web\View $this */
/** @var $model */
/** @var $dataProvider */
/** @var $category */

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
                'urlCreator' => function ($action, Course $model, $key, $index, $column) {
                    if ($action === 'update') {
                        return Url::toRoute(['update', 'id' => $model->id, 'category' => $model->category]); // Custom update URL
                    }
                    return Url::toRoute([$action, 'id' => $model->id]); // Default for other actions
                }
            ]

        ],
    ]) ?>

    <br>

    <h1>Тесты</h1>

    <br>

    <h1>Анкета</h1>

</div>
