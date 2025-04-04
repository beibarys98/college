<?php

use yii\bootstrap5\ActiveForm;
use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var common\models\Test $model */

$this->title = Yii::t('app', 'Добавить тест');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Тесты'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="test-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <!-- File input -->
    <?= $form->field($model, 'file')->fileInput() ?>

    <!-- Lang input -->
    <?= $form->field($model, 'lang')->textInput(['maxlength' => true]) ?>

    <!-- Duration as time input -->
    <?= $form->field($model, 'duration')->input('time', ['step' => 1]) ?> <!-- step=1 enables HH:MM:SS -->

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Добавить'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
