<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%participant}}".
 *
 * @property int $id
 * @property string $name
 * @property string $telephone
 * @property string $organisation
 */
class Participant extends \yii\db\ActiveRecord
{
    public $file;

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%participant}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['file'], 'file', 'extensions' => 'xls, xlsx', 'skipOnEmpty' => true],

            [['name'], 'required'],
            [['name', 'organisation'], 'string', 'max' => 255],
            [['telephone'], 'string', 'max' => 20],

            [['course_id'], 'integer'],
            [['course_id'], 'exist', 'skipOnError' => true, 'targetClass' => Course::class, 'targetAttribute' => ['course_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'name' => Yii::t('app', 'Name'),
            'telephone' => Yii::t('app', 'Telephone'),
            'organisation' => Yii::t('app', 'Organisation'),
        ];
    }

    public function getCourse()
    {
        return $this->hasOne(Course::class, ['id' => 'course_id']);
    }

    /**
     * {@inheritdoc}
     * @return \common\models\query\ParticipantQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\query\ParticipantQuery(get_called_class());
    }

}
