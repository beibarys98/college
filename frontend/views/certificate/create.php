<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var common\models\Certificate $model */

$this->title = Yii::t('app', 'Create Certificate');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Certificates'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="certificate-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
