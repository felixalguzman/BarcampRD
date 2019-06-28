<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" content="image/png">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Title</title>
    <style>
    .responsive {
        width: 100%;
        max-width: 400px;
        height: auto;
    }
    </style>
</head>

<body>
<div class="responsive" style="width: 100%;height: 100%">

    <qrcode:image class="responsive" height="600" width="600"
                  text="${participante.id};${participante.nombre};${participante.cedula};${participante.sizeCamiseta}"/>
</div>
</body>
</html>