<?php

/** @var yii\web\View $this */
/** @var yii\bootstrap5\ActiveForm $form */
/** @var SignupForm $model */

use frontend\models\SignupForm;
use yii\bootstrap5\Html;
use yii\bootstrap5\ActiveForm;

$this->title = 'Signup';
?>
<div style="margin: 0 auto; width: 500px;">
    <?= Html::img('@web/images/adort2.png', [
        'alt' => 'logo',
        'class' => 'mb-3',
        'style' => 'width: 50%; display: block; margin: 0 auto;'
    ]) ?>

    <?php $form = ActiveForm::begin(['id' => 'form-signup']); ?>

    <?= $form->field($model, 'username')->textInput(['autofocus' => true, 'placeholder' => 'ЖСН / ИИН'])->label(false) ?>

    <?= $form->field($model, 'password')->passwordInput()->label(false) ?>

    <div class="form-group text-center">
        <?= Html::submitButton('Тіркелу / Регистрация', ['class' => 'btn btn-outline-success', 'name' => 'signup-button']) ?>
    </div>

    <div class="text-end mt-2">
        <?= Html::a(Yii::t('app', 'Артқа / Назад'), ['site/login'], ['class' => 'btn btn-outline-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>
</div>
