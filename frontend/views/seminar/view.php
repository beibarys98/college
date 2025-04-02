<?php

use common\models\Seminar;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\helpers\Url;

/** @var yii\web\View $this */
/** @var $model */
/** @var $dataProvider */
/** @var $category */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', $category), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;

\yii\web\YiiAsset::register($this);
?>
<div class="seminar-view">

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
            [
                'headerOptions' => ['style' => 'width: 5%;'],
                'class' => ActionColumn::className(),
                'template' => '{update}<span style="margin: 10px;"></span>{delete}',
                'urlCreator' => function ($action, Seminar $model, $key, $index, $column) use ($category) {
                    if ($action === 'update') {
                        return Url::toRoute(['update', 'id' => $model->id, 'category' => $category]); // Custom update URL
                    }
                    return Url::toRoute([$action, 'id' => $model->id]); // Default for other actions
                }
            ]

        ],
    ]) ?>

</div>
