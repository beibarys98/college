<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%place}}".
 *
 * @property int $id
 * @property string $title
 * @property int $score
 */
class Place extends \yii\db\ActiveRecord
{


    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%place}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'score'], 'required'],
            [['score'], 'integer'],
            [['title'], 'string', 'max' => 255],
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
            'score' => Yii::t('app', 'Score'),
        ];
    }

    /**
     * {@inheritdoc}
     * @return \common\models\query\PlaceQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\query\PlaceQuery(get_called_class());
    }

}
