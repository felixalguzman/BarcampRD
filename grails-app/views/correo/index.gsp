<html>
<head>
    %{--    <meta name="layout" content="main">--}%
    <title>Correo</title>
</head>

<body>
<div id="content" role="main">

    <h5>Buenas tardes, ${participante.nombre}</h5>

    <p>Este Sábado 29 de junio a las 8:00 A.M. empezará el evento; por favor de llegar más temprano para el registro. El registro sera en el teatro universitario entrando por la puerta trasera de este edificio, la cual esta ubicada cerca de los edificios de Padre Arroyo y el Kiosko.</p>

    <p>La logistica del evento es en la mañana estaremos en el teatro(Ubicado al frente de la puerta 2) y luego en la tarde pasaremos a los salones octogonales del edificio Padre Arroyo (Segunda planta del edificio, cerca del teatro universitario).

    <p>


    <p>Adjunto a este correo encontrará el código de conducta del evento. Esperamos lo lea y acepte todas las condiciones indicadas en el mismo.</p>


    <br>
    <h4>Las charlas en las que se ha reservado un asiento para usted son las siguientes:</h4>

    <g:each in="${participante.listaCharlas}" var="charlas">
        <h5>${charlas.tema} - ${charlas.horario.value}</h5>
    </g:each>
    <a href="https://form.jconfdominicana.org/correo/qr/?id=${participante.id}">Ver QR</a>
    <a href="https://jconfdominicana.org/code-of-conduct.html">Codigo de conducta</a>


    <p>Favor de traer el codigo QR descargado el cual esta adjunto a este email para facilitar a la hora del registro.</p>


    %{--<div class="row">

    </div>--}%
</div>
</body>
</html>