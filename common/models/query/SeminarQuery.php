<?php

namespace common\models\query;

/**
 * This is the ActiveQuery class for [[\common\models\Seminar]].
 *
 * @see \common\models\Seminar
 */
class SeminarQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return \common\models\Seminar[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return \common\models\Seminar|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
