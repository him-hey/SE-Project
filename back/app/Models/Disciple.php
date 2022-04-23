<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Disciple extends Model
{
    use HasFactory;

    protected $fillable = [
        'dateWn', 
        'type', 
        'description'
    ];

    public function Student(){
        return $this->belongsTo(Student::class);
    }
}