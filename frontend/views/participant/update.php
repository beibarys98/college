<?php

use yii\bootstrap5\ActiveForm;
use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var common\models\Participant $model */

$this->title = Yii::t('app', 'Изменить участника');
?>
<div class="participant-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true, 'placeholder' => 'Имя'])->label(false) ?>

    <?= $form->field($model, 'telephone')->textInput(['maxlength' => true, 'placeholder' => 'Телефон'])->label(false) ?>

    <?= $form->field($model, 'organisation')->textInput(['maxlength' => true, 'placeholder' => 'Организация'])->label(false) ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Изменить'), ['class' => 'btn btn-outline-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>