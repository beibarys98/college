<?php

/** @var \yii\web\View $this */
/** @var string $content */

use common\models\Category;
use common\widgets\Alert;
use frontend\assets\AppAsset;
use yii\bootstrap5\Breadcrumbs;
use yii\bootstrap5\Html;

AppAsset::register($this);

$currentCategory = Yii::$app->request->get('category_id');
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>" class="h-100">
<head>
    <link rel="icon" type="image/png" href="<?= Yii::getAlias('@web') ?>/images/adort2.png">

    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body class="d-flex flex-column h-100">
<?php $this->beginBody() ?>

<main role="main" class="d-flex vh-100 w-100">
    <?php if (!Yii::$app->user->isGuest): ?>
        <div class="d-flex flex-column p-3 text-bg-dark overflow-auto" style="width: 300px;">
            <ul class="nav nav-pills flex-column mb-auto">
                <?php if (Yii::$app->user->identity->ssn == 'admin'): ?>
                <li>
                    <a href="<?= \yii\helpers\Url::to(['user/index']) ?>"
                       class="nav-link <?= Yii::$app->controller->id == 'user' && Yii::$app->controller->action->id == 'index' ? 'active' : 'text-white' ?>">
                        Участники
                    </a>
                </li>
                <?php else: ?>
                <li>
                    <div class="d-flex align-items-center w-100">
                        <!-- Профиль link that stretches -->
                        <a href="<?= \yii\helpers\Url::to(['site/index']) ?>"
                           class="nav-link flex-grow-1 <?= Yii::$app->controller->id == 'site' ? 'active' : 'text-white' ?>">
                            <?= Yii::t('app', 'Жеке кабинет') ?>
                        </a>

                        <!-- Language switcher aligned to the end -->
                        <?= Html::a(
                            Html::img(
                                Yii::$app->language == 'kz' ? '/images/kz.png' : '/images/ru.png',
                                [
                                    'style' => 'width: 36px; height: 36px; border: 1px solid black;',
                                    'class' => 'rounded ms-2' // adds a little margin-left
                                ]
                            ),
                            ['/site/language', 'view' => '/site/index']
                        ) ?>
                    </div>
                </li>
                <?php endif; ?>
                <?php if (Yii::$app->user->identity->ssn == 'admin'): ?>
                <hr>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white dropdown-toggle" data-bs-toggle="collapse" data-bs-target="#qualificationMenu" aria-expanded="false">
                        <?= Yii::t('app', 'Білім жетілдіру') ?>
                    </a>
                    <div class="collapse show" id="qualificationMenu">
                        <ul class="nav flex-column ms-3">
                            <?php
                            $categories = Category::find()->andWhere(['type' => 'pov'])->all();

                            foreach ($categories as $category) {
                                $isActive = ($currentCategory == $category->id) ? 'active' : '';
                                echo '<li><a href="' . \yii\helpers\Url::to(['course/index', 'category_id' => $category->id]) . '" class="nav-link text-white ' . $isActive . '">' . (Yii::$app->language == 'kz' ? $category->title : $category->title_ru) . '</a></li>';
                            }
                            ?>
                        </ul>
                    </div>
                </li>
                <hr>
                <li class="nav-item">
                    <a href="#" class="nav-link text-white dropdown-toggle" data-bs-toggle="collapse" data-bs-target="#qualificationMenu2" aria-expanded="false">
                        <?= Yii::t('app', 'Сертификаттау курсы') ?>
                    </a>
                    <div class="collapse show" id="qualificationMenu2">
                        <ul class="nav flex-column ms-3">
                            <?php
                            $categories = Category::find()->andWhere(['type' => 'cert'])->all();

                            foreach ($categories as $category) {
                                $isActive = ($currentCategory == $category->id) ? 'active' : '';
                                echo '<li><a href="' . \yii\helpers\Url::to(['course/index', 'category_id' => $category->id]) . '" class="nav-link text-white ' . $isActive . '">' . (Yii::$app->language == 'kz' ? $category->title : $category->title_ru) . '</a></li>';
                            }
                            ?>
                        </ul>
                    </div>
                </li>
                <hr>
                <?php
                $categories = Category::find()->andWhere(['type' => 'sem'])->all();

                foreach ($categories as $category) {
                    $isActive = ($currentCategory == $category->id) ? 'active' : '';
                    echo '<li><a href="' . \yii\helpers\Url::to(['course/index', 'category_id' => $category->id]) . '" class="nav-link text-white ' . $isActive . '">' . (Yii::$app->language == 'kz' ? $category->title : $category->title_ru) . '</a></li>';
                }
                ?>
                <hr>

                <?php endif; ?>

                <?php if (Yii::$app->user->identity->ssn == 'admin'): ?>
                <li>
                    <a href="<?= \yii\helpers\Url::to(['place/index']) ?>"
                       class="nav-link <?= (Yii::$app->controller->id == 'place'
                           || Yii::$app->controller->id == 'category')
                           ? 'active' : 'text-white' ?>">
                        Настройки
                    </a>
                </li>
                <hr>
                <?php endif; ?>
            </ul>
            <div class="mt-auto">
                <?php if (!Yii::$app->user->isGuest): ?>
                    <?php
                    $username = Yii::$app->user->identity->ssn ?? Yii::$app->user->id;
                    ?>
                    <?= Html::beginForm(['/site/logout'], 'post', ['class' => 'd-flex'])
                    . Html::submitButton(
                        Yii::t('app', 'Выйти ({username})', ['username' => $username]),
                        ['class' => 'btn btn-link logout text-decoration-none', 'style' => 'color: red;']
                    )
                    . Html::endForm();
                    ?>
                <?php endif; ?>
            </div>
        </div>
    <?php endif; ?>

    <div class="flex-grow-1 px-5 py-3 overflow-auto w-75">
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
