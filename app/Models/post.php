<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;

class post extends Model
{
    use HasFactory;

    protected $fillable = [
        'titulo',
        'contenido'
    ];


    public function user()
    {
        return $this->belongsTo(User::class,'id','user_id');
    }

}
