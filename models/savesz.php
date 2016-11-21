<?php

namespace app\models;

use yii\base\Model;

class SaveSZ extends Model
{
	public $id;
    public $header;
    public $title;
    public $content;
    public $date;
    public $paraph;
    	public function rules()
	{
	    return [
	        ['id', 'default'],
	        ['header', 'string'],
	        ['title', 'string'],
	        ['content', 'string'],
	        ['date', 'default'],
	        ['paraph', 'string']
	        [['uname', 'level', 'coordinator', 'startdate', 'finishdate', 'id_activity0','id_activity1','id_activity2','id_activity3','id_eventtype0','id_eventtype1','id_eventtype2','id_eventtype3','id_eventtype4','id_eventtype5','id_eventtype6','id_eventtype7','id_eventtype8', 'id'], 'required', 'when' => function () {
                    if (!$this->uname && !$this->level && !$this->coordinator && !$this->startdate && !$this->finishdate && !$this->id_activity0 && !$this->id_activity1 && !$this->id_activity2 && !$this->id_activity3 && !$this->id_eventtype0 && !$this->id_eventtype1 && !$this->id_eventtype2 && !$this->id_eventtype3 && !$this->id_eventtype4 && !$this->id_eventtype5 && !$this->id_eventtype6 && !$this->id_eventtype7 && !$this->id_eventtype8) {
                        $this->addError('uname', 'Необходимо указать либо телефон, либо email.');
                        $this->addError('level', 'Необходимо указать либо телефон, либо email.');
                        $this->addError('coordinator', 'Необходимо указать либо телефон, либо email.');
                    }
                }]
	    ];
	}
}