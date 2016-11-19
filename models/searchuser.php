<?php

namespace app\models;

use yii\base\Model;

class SearchUser extends Model
{
    public $uname;
    public $course;
    public $department;

	public function rules()
	{
	    return [
	        ['uname', 'string'],
	        ['course', 'integer'],
	        ['department', 'string'],
	        [['uname', 'course', 'department'], 'required', 'when' => function () {
                    if (!$this->uname && !$this->course && !$this->department) {
                        $this->addError('uname', 'Необходимо указать либо телефон, либо email.');
                        $this->addError('course', 'Необходимо указать либо телефон, либо email.');
                        $this->addError('department', 'Необходимо указать либо телефон, либо email.');
                    }
                }]
	    ];
	}
}