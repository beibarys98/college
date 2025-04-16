<?php

namespace frontend\models;

use common\models\Participant;
use Yii;
use yii\base\Model;
use common\models\User;

class SignupForm extends Model
{
    public $username;
    public $name;
    public $telephone;
    public $organisation;

    public function rules()
    {
        return [
            ['username', 'trim'],
            ['username', 'required', 'message' => 'Толтырыңыз! / Заполните!'],
            ['username', 'unique', 'targetClass' => '\common\models\User', 'message' => 'Этот ИИН уже используется.'],
            ['username', 'match', 'pattern' => '/^\d{12}$/', 'message' => 'ИИН должен содержать ровно 12 цифр.'],

            ['name', 'trim'],
            ['name', 'required', 'message' => 'Толтырыңыз!'],
            ['name', 'match', 'pattern' => '/^[А-Яа-яЁё]+(?:\s+[А-Яа-яЁё]+)+$/u', 'message' => 'Введите имя и фамилию на кириллице.'],

            // Telephone rules
            ['telephone', 'trim'],
            ['telephone', 'required', 'message' => 'Толтырыңыз!'],
            ['telephone', 'match', 'pattern' => '/^\+?[0-9\-()\s]+$/', 'message' => 'Enter a valid telephone number.'],
            ['telephone', 'string', 'min' => 7, 'max' => 20],

            // Organisation rules
            ['organisation', 'trim'],
            ['organisation', 'required', 'message' => 'Толтырыңыз!'],
            ['organisation', 'string', 'max' => 255],
        ];
    }

    public function signup()
    {
        $participant = new Participant();
        $participant->course_id = null;
        $participant->name = $this->name;
        $participant->telephone = $this->telephone;
        $participant->organisation = $this->organisation;
        $participant->save(false);

        $user = new User();
        $user->participant_id = $participant->id;
        $user->ssn = $this->username;
        $user->setPassword('password');
        $user->generateAuthKey();

        return $user->save(false);
    }
}
