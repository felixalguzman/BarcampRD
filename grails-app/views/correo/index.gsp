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


    <p>Adjunto a este correo encontrará el código de conducta del evento.
    Esperamos lo lea y acepte todas las condiciones indicadas en el mismo, le recordamos que de no seguir el reglamento será escoltado fuera del evento.</p>

    <br>
    <h4>Las desconferencias en las que se ha reservado un asiento para usted son las siguientes:</h4>

    <g:each in="${participante.charlas}" var="charlas">
        <div class="container" style="display: flex;justify-content: flex-start;align-items: center">
            <p>${charlas.tema}</p>

            <p>${charlas.horario.value}</p>

            <p>Aula: ${charlas.aula.lugar} - ${charlas.aula.numero}</p>

        </div>

    </g:each>
    <br>
    <a href="https://form.barcamp.org/correo/qr?id=${participante.id}">Ver QR</a>

    <p>Adjunto a este correo encontrará el código de conducta del evento.     Esperamos lo lea y acepte todas las condiciones indicadas en el mismo, le recordamos que de no seguir el reglamento será escoltado fuera del evento.</p>


    <p>Favor de traer el código QR descargado el cual está adjunto a este email para facilitar a la hora del registro.</p>

    <a href="https://drive.google.com/open?id=1VjhqWPVgej4dHtGATJZpeDbjpHAe6GIx">Código de conducta</a>



</div>
</body>
</html>