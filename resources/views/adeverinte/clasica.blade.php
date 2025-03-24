<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Adeverință Elev</title>
    <style>
        body { font-family: DejaVu Sans, sans-serif; line-height: 1.5; }
        .center { text-align: center; }
        .right { text-align: right; }
        .justify { text-align: justify; }
        .header { margin-bottom: 40px; }
        .signature { margin-top: 60px; display:flex; justify-content:space-between; }
    </style>
</head>
<body>
    <div style="text-align: center; margin-bottom: 20px;">
        <img src="{{ public_path('img/antet.png') }}" style="width: 100%; height: auto;">
    </div>

    <div class="right">
        Nr. {{ $numar_inregistrare }} din {{ $data_emitere }}
    </div>

    <h2 class="center">ADEVERINȚĂ</h2>

    <p class="justify">
        Prin prezenta se adevereşte că elevul(a) <strong>{{ $student->NUME }} {{ $student->PRENUME1 }} {{ $student->PRENUME2 }} {{ $student->PRENUME3 }}</strong>,
        cu CNP <strong>{{ $student->CNP }}</strong> şi numărul matricol <strong>{{ $student->NR ?? '-' }}</strong>,
        este înscris(ă) în <strong>{{ $student->DENUMIRE_UNITATE_FORMATIUNE }}</strong>,
        nivelul de învăţământ <strong>{{ $student->NIVEL_INVATAMANT }}</strong>, <strong>{{ $student->TIP_FORMATIUNE }} {{ $student->NUME_CLASA }}</strong>, Limba de predare Limba română, forma de învăţământ Zi, anul școlar {{ date('Y') }}-{{ date('Y') + 1 }}.
    </p>

    <p class="justify">
        S-a eliberat prezenta adeverinţă spre a-i servi susnumitului(tei) la dosar personal.
    </p>

    <div class="signature">
        <div>
            Secretar,<br>
            RĂDOI Laurențiu-Florin
        </div>
        <div>
            Director,<br>
            MARIN Mihaela
        </div>
    </div>
</body>
</html>
