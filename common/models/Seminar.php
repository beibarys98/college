<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%seminar}}".
 *
 * @property int $id
 * @property string $title
 */
class Seminar extends \yii\db\ActiveRecord
{


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%seminar}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'category'], 'required'],
            [['title'], 'string', 'max' => 255],
            [['category'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'title' => Yii::t('app', 'Title'),
        ];
    }

    /**
     * {@inheritdoc}
     * @return \common\models\query\SeminarQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\query\SeminarQuery(get_called_class());
    }

}
