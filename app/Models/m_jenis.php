<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;

class m_jenis extends Model
{
    //
	 use Notifiable;
	 
	 
	//m_jenis
	 protected $fillable = [
        'name', 'notes', 'flag_active',
    ];
}
