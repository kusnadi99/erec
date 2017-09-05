<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Struktur_Organisasi extends Model
{
    //

    protected $table = 'struktur_organisasis';

    protected $fillable = ['nama', 'parent_id'];

    public function childs() {
    	return $this->hasMany('App\Struktur_Organisasi','parent_id','id');
    }
}
