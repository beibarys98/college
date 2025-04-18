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

    <?= $form->field($model, 'ssn')->textInput(['autofocus' => true, 'placeholder' => Yii::t('app', 'ЖСН')])->label(false) ?>

    <?= $form->field($model, 'name')->textInput(['placeholder' => Yii::t('app', 'ТАЖ')])->label(false) ?>

    <?= $form->field($model, 'telephone')->textInput(['placeholder' => 'Телефон'])->label(false) ?>

    <?= $form->field($model, 'organisation')->textInput(['placeholder' => Yii::t('app', 'Мекеме')])->label(false) ?>

    <div class="form-group text-center">
        <?= Html::submitButton(Yii::t('app', 'Тіркелу'), ['class' => 'btn btn-outline-success', 'name' => 'signup-button']) ?>
    </div>

    <div class="text-end mt-2">
        <?= Html::a(Yii::t('app', 'Артқа'), ['site/login'], ['class' => 'btn btn-outline-primary']) ?>
    </div>

    <hr>
    <div>
        <?php
        echo Html::tag('div', Html::a( Html::img(
            Yii::$app->language == 'kz' ? '/images/kz.png' : '/images/ru.png',
            ['style' => 'width: 40px; height: 40px; border: 1px solid black;', 'class' => 'rounded']
        ), ['/site/language', 'view' => '/site/index']));
        ?>
    </div>

    <?php ActiveForm::end(); ?>
</div>
