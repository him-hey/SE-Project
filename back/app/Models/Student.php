<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    protected $fillable = [
        'first_name',
        'last_name',
        'class',
        'phone',
        'gender',
        'image'
    ];

    public function permission(){
        return $this->hasMany(Permission::class);
    }
    
    public function disciple(){
        return $this->hasMany(Disciple::class);
    }

    public function user(){
        return $this->belongsTo(User::class);
    }
}