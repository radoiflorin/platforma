<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Adeverință elev</title>
    <style>
        body { font-family: DejaVu Sans, sans-serif; margin: 40px; }
    </style>
</head>
<body>
    <h2 style="text-align:center;">Adeverință</h2>
    <p>Se adeverește prin prezenta că elevul(a): <b>{{ $student->NUME }} {{ $student->PRENUME1 }}</b>, având CNP: <b>{{ $student->CNP }}</b>,
    este înscris(ă) în {{ $student->TIP_FORMATIUNE }}, Clasa <strong>{{ $student->NUME_CLASA }}</strong>, în unitatea noastră.</p>

    <p>Această adeverință s-a eliberat pentru: <b>{{ $adeverinta->scop }}</b></p>

    <p>Data emiterii: <b>{{ $adeverinta->data_emitere->format('d-m-Y') }}</b></p>

    <br><br>
    <p>Conducerea unității,</p>
    <p>(semnătura și ștampila)</p>
</body>
</html>
