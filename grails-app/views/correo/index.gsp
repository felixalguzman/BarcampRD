<html>
<head>
%{--    <meta name="layout" content="main">--}%
    <title>Correo</title>
</head>

<body>
<div id="content" role="main">

    <h5>Buenas tardes, ${participante.nombre}</h5>

    <p>Este Sábado 29 de junio a las 8:00 AM empezará el recibimiento a los participantes del evento</p>

    <p>Será en el teatro universitario.</p>

    <p>Adjunto a este correo encontrará el código de conducta del evento. Esperamos lo lea y acepte todas las condiciones indicadas en el mismo.</p>
    <br>
    <h4>Las charlas en las que se ha reservado un asiento para usted son las siguientes:</h4>

    <g:each in="${participante.listaCharlas}" var="charlas">
        <h5>${charlas.tema} - ${charlas.horario.value}</h5>
    </g:each>
    <a href="https://form.jconfdominicana.org/correo/qr/?id=${participante.id}">Ver QR</a>



    %{--<div class="row">

    </div>--}%
</div>
</body>
</html>