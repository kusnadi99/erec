<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
    protected $table = 'types';

    protected $fillable = ['namastruktur'];

    public function sto()
    {
    	return $this->belongsTo(Struktur_Organisasi::class);
    }

}
