<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdeverintaController;

Route::get('/', function () {
    return view('welcome');
});

// Aceasta este ruta corectă, în afara callback-ului rutei '/'
Route::get('/adeverinta/{cnp}/pdf', [AdeverintaController::class, 'genereazaAdeverinta'])
    ->name('adeverinta.pdf');
