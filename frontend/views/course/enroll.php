<?php

use common\models\File;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\widgets\Pjax;

/** @var yii\web\View $this */

$this->title = 'Запись';
?>
<div class="course-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php if(Yii::$app->user->identity->ssn === 'admin'): ?>
    <p>
        <?= Html::a(Yii::t('app', 'Добавить'),
            ['create', 'category_id' => $category->id],
            ['class' => 'btn btn-outline-primary']) ?>
    </p>
    <?php endif; ?>

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $files,
        'columns' => [
            'title',
            'file_path',
            [
                'class' => ActionColumn::className(),
                'urlCreator' => function ($action, File $model, $key, $index, $column) {
                    return Url::toRoute([$action, 'id' => $model->id]);
                }
            ],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
