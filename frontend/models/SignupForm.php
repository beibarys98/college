<?php

namespace frontend\models;

use common\models\Participant;
use Yii;
use yii\base\Model;
use common\models\User;

class SignupForm extends Model
{
    public $ssn;
    public $name;
    public $telephone;
    public $organisation;

    public function rules()
    {
        return [
            ['ssn', 'trim'],
            ['ssn', 'required', 'message' => Yii::t('app', 'Толтырыңыз!')],
            ['ssn', 'unique', 'targetClass' => '\common\models\User', 'message' => 'Этот ИИН уже используется.'],
            ['ssn', 'match', 'pattern' => '/^\d{12}$/', 'message' => Yii::t('app', 'ЖСН 12 сан болуы тиіс!')],

            ['name', 'trim'],
            ['name', 'required', 'message' => Yii::t('app', 'Толтырыңыз!')],
            ['name', 'match', 'pattern' => '/^[А-Яа-яЁё]+(?:\s+[А-Яа-яЁё]+)+$/u', 'message' => Yii::t('app', 'Кемінде 2 сөз және кириллица болуы тиіс!')],

            // Telephone rules
            ['telephone', 'trim'],
            ['telephone', 'required', 'message' => Yii::t('app', 'Толтырыңыз!')],
            ['telephone', 'match', 'pattern' => '/^\+?[0-9\-()\s]+$/', 'message' => Yii::t('app', 'Телефон номерін енгізіңіз!')],
            ['telephone', 'string', 'min' => 7, 'max' => 20],

            // Organisation rules
            ['organisation', 'trim'],
            ['organisation', 'required', 'message' => Yii::t('app', 'Толтырыңыз!')],
            ['organisation', 'string', 'max' => 255],
        ];
    }

    public function signup()
    {
        if (!$this->validate()) {
            return null;
        }

        $participant = new Participant();
        $participant->course_id = null;
        $participant->name = $this->name;
        $participant->telephone = $this->telephone;
        $participant->organisation = $this->organisation;
        $participant->save(false);

        $user = new User();
        $user->participant_id = $participant->id;
        $user->ssn = $this->ssn;
        $user->setPassword('password');
        $user->generateAuthKey();

        return $user->save(false);
    }
}
