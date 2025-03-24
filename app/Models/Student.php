<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $table = 'student';
    protected $primaryKey = 'CNP';  // <-- specifică cheia primară reală
    public $incrementing = false;   // <-- dezactivează auto-increment dacă cheia nu e numerică
    protected $keyType = 'string';  // <-- definește tipul cheii primare (string, dacă CNP e string)

    protected $fillable = [
        'CNP',
        'NUME',
        'INITIALA_TATALUI',
        'PRENUME1',
        'PRENUME2',
        'PRENUME3',
        'SEX',
        'DATA_NASTERE',
        'VARSTA',
        'LOCALITATE_NASTERE',
        'DENUMIRE_UNITATE_FORMATIUNE',
        'NIVEL_INVATAMANT',
        'TIP_FORMATIUNE',
        'NUME_CLASA',
        'STATUS_ELEV',
        'DATA_INCEPUT_ASOC_FORMATIUNE',
        'DATA_SFARSIT_ASOC_FORMATIUNE',
        'Profil',
        'Specializare_Calificare',
        'Domeniu',
        'VOL',
        'NR',
        'PAG',
        'DATA_INCEPUT_ASOC_UNITATE',  // ← Atenție la virgula asta!
    ];

    protected $dates = [
        'DATA_NASTERE',
        'DATA_INCEPUT_ASOC_FORMATIUNE',
        'DATA_SFARSIT_ASOC_FORMATIUNE',
        'DATA_INCEPUT_ASOC_UNITATE',
    ];
}
