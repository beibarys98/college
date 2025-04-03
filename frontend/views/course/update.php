<?php

use yii\helpers\Html;
use yii\bootstrap5\ActiveForm;

/** @var yii\web\View $this */
/** @var common\models\Course $model */
/** @var yii\bootstrap5\ActiveForm $form */
/** @var $category */

$this->title = 'Изменить цикл';
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', $category), 'url' => ['index', 'category' => $category]];
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', $model->title), 'url' => ['view', 'id' => $model->id,'category' => $category]];
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="course-form">

    <h1><?= $this->title ?></h1>

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'month')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'duration')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Изменить'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
