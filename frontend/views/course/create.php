<?php

use yii\helpers\Html;
use yii\bootstrap5\ActiveForm;

/** @var yii\web\View $this */
/** @var common\models\Course $model */
/** @var yii\bootstrap5\ActiveForm $form */
/** @var $category */
/** @var $sidebar */

$this->title = 'Добавить цикл';
?>

<div class="course-form">

    <h1><?= $this->title ?></h1>

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'month')->dropDownList(
        [
            'Январь' => 'Январь',
            'Февраль' => 'Февраль',
            'Март' => 'Март',
            'Апрель' => 'Апрель',
            'Май' => 'Май',
            'Июнь' => 'Июнь',
            'Июль' => 'Июль',
            'Август' => 'Август',
            'Сентябрь' => 'Сентябрь',
            'Октябрь' => 'Октябрь',
            'Ноябрь' => 'Ноябрь',
            'Декабрь' => 'Декабрь',
        ],
        ['prompt' => 'Выберите месяц']
    ) ?>

    <?php
    $options = ($sidebar == 1)
        ? [
            '1 неделя' => '1 неделя',
            '2 недели' => '2 недели',
            '3 недели' => '3 недели',
        ]
        : [
            '1 месяц' => '1 месяц',
            '1.5 месяца' => '1.5 месяца',
        ];
    ?>

    <?= $form->field($model, 'duration')->dropDownList(
        $options,
        ['prompt' => 'Выберите длительность']
    ) ?>


    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Добавить'), ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
