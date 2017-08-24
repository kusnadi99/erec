<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Personnel extends Model
{
    protected $fillable=['first_name', 'last_name', 'gender', 'email', 'no_hp', 'tgl_lahir', 'employee_id'];
    protected $primaryKey='id';
    public $timestamps=false;

    public function users()
    {
    	$this->belongsTo('App\User','personnel_id','id');
    }
}
