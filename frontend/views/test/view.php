<?php

use common\models\Answer;
use common\models\Question;
use common\models\Test;
use yii\grid\ActionColumn;
use yii\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;

/** @var yii\web\View $this */
/** @var common\models\Test $model */
/** @var $dataProvider */

$this->title = $model->type == 'test' ? 'test_id_' . $model->id : 'survey_id_' . $model->id;
\yii\web\YiiAsset::register($this);
?>
<div class="test-view">

    <h1><?= Html::encode($this->title) ?></h1>

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
                'attribute' => 'course_id',
                'format' => 'raw',
                'value' => function ($model) {
                    return Html::a($model->course->title, ['course/view', 'id' => $model->course->id, 'category_id' => $model->course->category_id]);
                }
            ],
            'lang',
            'status',
            'duration',
            [
                'headerOptions' => ['style' => 'width: 5%;'],
                'class' => ActionColumn::className(),
                'template' => '{update}',
                'urlCreator' => function ($action, Test $model, $key, $index, $column){
                    return Url::toRoute([$action, 'id' => $model->id, 'category_id' => $model->course->category_id]); // Default for other actions
                }
            ]
        ],
    ]); ?>

    <hr>
    <div>
        <?= Html::a('новый',
            ['test/new', 'id' => $model->id, 'category_id' => $model->course->category_id],
            ['class' => $model->status == 'new' ? 'btn btn-primary' : 'btn btn-outline-primary']) ?>
        <?= Html::a('готово',
            ['test/ready', 'id' => $model->id, 'category_id' => $model->course->category_id],
            ['class' => $model->status == 'ready' ? 'btn btn-primary' : 'btn btn-outline-primary']) ?>
        <?= Html::a('опубликовать',
            ['test/publish', 'id' => $model->id, 'category_id' => $model->course->category_id],
            ['class' => $model->status == 'public' ? 'btn btn-primary' : 'btn btn-outline-primary']) ?>
        <?= Html::a('закончить',
            ['test/end', 'id' => $model->id, 'category_id' => $model->course->category_id],
            ['class' => $model->status == 'finished' ? 'btn btn-primary' : 'btn btn-outline-primary']) ?>
        <?= Html::a('наградить',
            ['test/certificate', 'id' => $model->id, 'category_id' => $model->course->category_id],
            ['class' => $model->status == 'certificated' ? 'btn btn-primary' : 'btn btn-outline-primary']) ?>
    </div>
    <hr>

    <div style="font-size: 20px;">
        <?php
        $questions = Question::find()->andWhere(['test_id' => $model->id])->all();

        foreach ($questions as $index => $question) {
            echo Html::a('_/',
                    ['question/update', 'id' => $question->id, 'category_id' => $model->course->category_id],
                    ['class' => 'btn btn-sm btn-outline-primary']) . ' ';
            echo Html::a('Х',
                    ['question/delete', 'id' => $question->id],
                    [
                        'class' => 'btn btn-sm btn-outline-danger',
                        'data' => [
                            'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                            'method' => 'post',
                        ],
                    ]) . ' ';
            echo $index + 1 . '. ';
            if($question->img_path){
                echo Html::img(Yii::getAlias('@web/') . $question->img_path, ['style' => 'max-width: 80%; padding: 10px;']) . '<br>';
            }else{
                echo $question->question . '<br>';
            }
            $answers = Answer::find()->andWhere(['question_id' => $question->id])->all();
            $alphabet = range('A', 'Z');
            foreach ($answers as $index2 => $answer) {
                if($index2 == 0){
                    echo '<span style="margin: 15px;"></span>'
                        . Html::a('_/',
                            ['answer/update', 'id' => $answer->id, 'category_id' => $model->course->category_id],
                            ['class' => 'btn btn-sm btn-outline-primary']) . ' ';
                    echo Html::a('Х',
                            ['answer/delete', 'id' => $answer->id],
                            [
                                'class' => 'btn btn-sm btn-outline-danger',
                                'data' => [
                                    'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                                    'method' => 'post',
                                ],
                            ]) . ' ';
                    echo '<strong>' . $alphabet[$index2] . '. ' .'</strong>';
                    if($answer->img_path){
                        echo Html::img(Yii::getAlias('@web/') . $answer->img_path, ['style' => 'max-width: 80%; padding: 10px;']) . '<br>';
                    }else{
                        echo '<strong>' . $answer->answer . '<br>' .'</strong>';
                    }
                }else{
                    echo '<span style="margin: 15px;"></span>'
                        . Html::a('_/',
                            ['answer/update', 'id' => $answer->id, 'category_id' => $model->course->category_id],
                            ['class' => 'btn btn-sm btn-outline-primary']) . ' ';
                    echo Html::a('Х',
                            ['answer/delete', 'id' => $answer->id],
                            [
                                'class' => 'btn btn-sm btn-outline-danger',
                                'data' => [
                                    'confirm' => Yii::t('app', 'Are you sure you want to delete this item?'),
                                    'method' => 'post',
                                ],
                            ]) . ' ';
                    echo $alphabet[$index2] . '. ';
                    if($answer->img_path){
                        echo Html::img(Yii::getAlias('@web/') . $answer->img_path, ['style' => 'max-width: 80%; padding: 10px;']) . '<br>';
                    }else{
                        echo $answer->answer . '<br>';
                    }
                }
            }
            echo '<span style="margin: 15px;"></span>'
                . Html::a('+ ответ',
                    ['answer/create', 'id' => $question->id, 'category_id' => $model->course->category_id],
                    ['class' => 'btn btn-sm btn-outline-primary']) . '<br>';
        }
        echo Html::a('+ вопрос',
                ['question/create', 'id' => $model->id, 'category_id' => $model->course->category_id],
                ['class' => 'btn btn-sm btn-outline-primary']) . '<br>';
        ?>
    </div>


</div>
