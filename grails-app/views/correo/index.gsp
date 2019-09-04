<html>
<head>
    %{--    <meta name="layout" content="main">--}%
    <title>Correo</title>
</head>

<body>
<div id="content" role="main">

    <h5>Buenas, ${participante.nombre}</h5>

    <p>¡Se acerca el gran día! En nombre del equipo de JConf Dominicana, le recordamos que este sábado 29 de junio a las 8:00 A.M. el evento tendrá inicio formalmente. Agradeceríamos que llegara lo más temprano posible para poder proceder con el registro. El registro será en el teatro universitario entrando por la puerta trasera de este edificio, la cual está ubicada cerca de los edificios de Padre Arroyo y el Kiosko.</p>

    <p>La logística del evento es en la mañana estaremos en el <a
            href="https://goo.gl/maps/WkeP3Fh4bbhbyDfM6">teatro</a> (Ubicado al frente de la puerta 2) y
    luego en la tarde pasaremos a los salones octogonales del edificio Padre Arroyo (Segunda planta del edificio,
    cerca del teatro universitario).

    </p>


    <p>Adjunto a este correo encontrará el código de conducta del evento.
    Esperamos lo lea y acepte todas las condiciones indicadas en el mismo.</p>

    <br>
    <h4>Las charlas en las que se ha reservado un asiento para usted son las siguientes:</h4>

    <g:each in="${participante.charlas}" var="charlas">
        <h5>${charlas.tema} - ${charlas.horario.value}</h5>
    </g:each>
    <br>
    <a href="https://form.jconfdominicana.org/correo/qr/?id=${participante.id}">Ver QR</a>

    <br>
    <a href="https://jconfdominicana.org/code-of-conduct.html">Código de conducta</a>


    <p>Favor de traer el código QR descargado el cual está adjunto a este email para facilitar a la hora del registro.</p>

    <p>
        FACEBOOK: <a href="https://www.facebook.com/JConf-Dominicana-602164203595878/">
        <img style="vertical-align:middle" border="0"
             src="http://sundevilgymnastics.com/wp-content/uploads/2016/11/FB-Icon.png" width="30" height="30">
    </a>

        INSTAGRAM: <a href="https://www.instagram.com/jconfdominicana/">
        <img style="vertical-align:middle" border="0"
             src="https://cdn4.iconfinder.com/data/icons/social-media-flat-7/64/Social-media_Instagram-512.png"
             width="30" height="30">
    </a>
    </p>

    %{--<div class="row">

    </div>--}%
</div>
</body>
</html>