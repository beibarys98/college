<?php

/** @var \yii\web\View $this */
/** @var string $content */

use common\widgets\Alert;
use frontend\assets\AppAsset;
use yii\bootstrap5\Breadcrumbs;
use yii\bootstrap5\Html;

AppAsset::register($this);

$currentCategory = Yii::$app->request->get('category');
$sidebar = Yii::$app->request->get('sidebar');
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" class="h-100">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body class="d-flex flex-column h-100">
<?php $this->beginBody() ?>

<main role="main" class="d-flex vh-100">
    <?php if (!Yii::$app->user->isGuest): ?>
        <div class="d-flex flex-column p-3 text-bg-dark overflow-auto" style="width: 300px;">
            <ul class="nav nav-pills flex-column mb-auto">
                <li>
                    <a href="<?= \yii\helpers\Url::to(['participant/index']) ?>"
                       class="nav-link <?= Yii::$app->controller->id == 'participant' ? 'active' : 'text-white' ?>">
                        Участники
                    </a>
                </li>
                <hr>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white dropdown-toggle" data-bs-toggle="collapse" data-bs-target="#qualificationMenu" aria-expanded="false">
                        Повышение квалификации
                    </a>
                    <div class="collapse <?= $sidebar == 1 ? 'show' : '' ?>" id="qualificationMenu">
                        <ul class="nav flex-column ms-3">
                            <?php
                            $categories = [
                                'sestrin' => 'Сестринское дело',
                                'akusher' => 'Акушерское дело',
                                'lecheb' => 'Лечебное дело',
                                'laborat' => 'Лабораторная диагностика',
                                'pharma' => 'Фармация',
                                'stomat' => 'Стоматология',
                                'epidemio' => 'Эпидемиология и гигиена',
                                'social' => 'Соц работник',
                            ];

                            foreach ($categories as $key => $name) {
                                $isActive = ($currentCategory === $name) ? 'active' : '';
                                echo '<li><a href="' . \yii\helpers\Url::to(['course/index', 'category' => $name, 'sidebar' => 1]) . '" class="nav-link text-white ' . $isActive . '">' . $name . '</a></li>';
                            }
                            ?>
                        </ul>
                    </div>
                </li>
                <hr>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white dropdown-toggle" data-bs-toggle="collapse" data-bs-target="#qualificationMenu2" aria-expanded="false">
                        Сертификационный курс
                    </a>
                    <div class="collapse <?= $sidebar == 2 ? 'show' : '' ?>" id="qualificationMenu2">
                        <ul class="nav flex-column ms-3">
                            <?php
                            $categories = [
                                'medses' => 'Медсестра общей практики',
                                'rentgen' => 'Сестринское дело в рентгенологии',
                                'classic' => 'Классический и лечебный массаж',
                                'schoolmed' => 'Сестринское дело в школьной медицине',
                            ];

                            foreach ($categories as $key => $name) {
                                $isActive = ($currentCategory === $name) ? 'active' : '';
                                echo '<li><a href="' . \yii\helpers\Url::to(['course/index', 'category' => $name, 'sidebar' => 2]) . '" class="nav-link text-white ' . $isActive . '">' . $name . '</a></li>';
                            }
                            ?>
                        </ul>
                    </div>
                </li>
                <hr>
                <?php
                $currentCategory = Yii::$app->request->get('category');
                $categories = [
                    'seminar' => 'Семинар, тренинг, мастер-класс',
                    'siezd' => 'Съезд, конгресс, конференции',
                    'litsa' => 'Лица без медицинского образование (парамедик)',
                ];

                foreach ($categories as $key => $name) {
                    $isActive = ($currentCategory === $name) ? 'active' : '';
                    echo '<li><a href="' . \yii\helpers\Url::to(['seminar/index', 'category' => $name]) . '" class="nav-link text-white ' . $isActive . '">' . $name . '</a></li>';
                }
                ?>
                <hr>
            </ul>
            <div class="mt-auto">
                <?php if (!Yii::$app->user->isGuest): ?>
                    <?= Html::beginForm(['/site/logout'], 'post', ['class' => 'd-flex'])
                    . Html::submitButton(
                        Yii::t('app', 'Выйти ({username})', ['username' => Yii::$app->user->identity->username]),
                        ['class' => 'btn btn-link logout text-decoration-none', 'style' => 'color: red;']
                    )
                    . Html::endForm();
                    ?>
                <?php endif; ?>
            </div>
        </div>
    <?php endif; ?>

    <div class="flex-grow-1 px-5 py-3 overflow-auto">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</main>


<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage();
