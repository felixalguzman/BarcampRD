<html>
<head>
    %{--    <meta name="layout" content="main">--}%
    <title>Correo</title>
    <style>
    .caja {
        float: left;
        width: 20px;
        height: 20px;
        margin: 5px;
        border: 1px solid rgba(0, 0, 0, .2);
    }
    </style>
</head>

<body>
<div id="content" role="main">

    <h5>Buenas, ${participante.nombre}</h5>

    <p>¡Se acerca el gran día! En nombre del equipo de Barcamp RD 2019, le recordamos que este sábado 23 de noviembre a las 9:00 A.M. el evento tendrá inicio formalmente. Agradeceríamos que llegara lo más temprano posible para poder proceder con el registro. El registro será en la segunda planta del Edificio de Padre Arroyo de la PUCMM Santiago, cerca del teatro universitario.</p>

    <p>La logística del evento es en la mañana estaremos en el edificio Padre Arroyo  (Segunda planta del edificio,
    cerca del teatro universitario).

    </p>

    <div class="container" style="display: flex;justify-content: center">

        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d470.2888914937661!2d-70.68482749835651!3d19.442147968877695!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8eb1cf6f0a95c9f9%3A0x77ca6ffcce6b71a3!2sEdificio%20Padre%20Arroyo!5e0!3m2!1ses-419!2sdo!4v1574396440472!5m2!1ses-419!2sdo"
                width="400" height="300" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
    </div>

    <br>


    <p>Adjunto a este correo encontrará el código de conducta del evento.
    Esperamos lo lea y acepte todas las condiciones indicadas en el mismo, le recordamos que de no seguir el reglamento será escoltado fuera del evento.</p>

    <br>
    <h4>Las charlas en las que se ha reservado un asiento para usted son las siguientes:</h4>

    <g:each in="${participante.charlas}" var="charlas">
        <div class="container" style="display: flex;justify-content: flex-start;align-items: center">
            <p>${charlas.tema}</p>

            <p>${charlas.horario.value}</p>

            <p>Aula: ${charlas.aula.lugar} - ${charlas.aula.numero}</p>

            <div class="caja" style="background: ${charlas.aula?.color}"></div>

        </div>

    </g:each>
    <br>
    <a href="https://form.barcamp.org/correo/qr/?id=${participante.id}">Ver QR</a>


    <p>Favor de traer el código QR descargado el cual está adjunto a este email para facilitar a la hora del registro.</p>

    <p>
        FACEBOOK: <a href="https://www.facebook.com/JConf-Dominicana-602164203595878/">
        <img style="vertical-align:middle" border="0"
             src="http://sundevilgymnastics.com/wp-content/uploads/2016/11/FB-Icon.png" width="30" height="30">
    </a>

        INSTAGRAM: <a href="https://www.instagram.com/barcamprd/">
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