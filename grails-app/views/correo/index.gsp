<html>
<head>
    <meta name="layout" content="main">
    <title>Correo</title>
</head>
<body>
    <div id="content" role="main">
        <section class="row colset-2-its">
            <h5>Buenas tardes, ${participantes.get(0).nombre}</h5>
            %{--<br>--}%
            <p>Este Sábado 17 de noviembre a las 8:00 AM empezará el recibimiento a los participantes del evento</p>
            %{--<br>--}%
            <p>Será en los salones octogonales del edificio Padre Arroyo(Segunda planta del edificio, cerca del teatro universitario).</p>
            %{--<br>--}%
            <p>Adjunto a este correo encontrará el código de conducta del evento. Esperamos lo lea y acepte todas las condiciones indicadas en el mismo.</p>
            <br>
            <h4>Las charlas en las que se ha reservado un asiento para usted son las siguientes:</h4>

            <g:each in="${participantes.get(0).listaCharlas}" var="charlas">
                <h5>${charlas.tema}</h5>
            </g:each>
            <qrcode:image height="150" width="150" text="${participantes.get(0).id};${participantes.get(0).nombre};${participantes.get(0).cedula};${participantes.get(0).sizeCamiseta}"/>
        </section>


        %{--<div class="row">

        </div>--}%
    </div>
</body>
</html>