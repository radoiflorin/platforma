<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
use Barryvdh\DomPDF\Facade\Pdf;

class AdeverintaController extends Controller
{
    public function genereazaAdeverinta($cnp)
    {
        $student = Student::where('CNP', $cnp)->firstOrFail();

        $pdf = Pdf::loadView('adeverinte.clasica', [
            'student' => $student,
            'data_emitere' => now()->format('d/m/Y'),
            'numar_inregistrare' => rand(100, 999), // exemplu, poți ajusta după nevoi
        ]);

        return $pdf->download('adeverinta_' . $student->NUME . '.pdf');
    }
}
