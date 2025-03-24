<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Adeverinta extends Model
{
    protected $table = 'adeverintas';

    protected $fillable = [
        'student_cnp',
        'data_emitere',
        'scop',
    ];

    protected $dates = [
        'data_emitere',
    ];
    public function student()
{
    return $this->belongsTo(Student::class, 'student_cnp', 'CNP');
}

public function adeverinte()
{
    return $this->hasMany(Adeverinta::class, 'student_cnp', 'CNP');
}

}

