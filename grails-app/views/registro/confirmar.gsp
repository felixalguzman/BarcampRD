<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Registro Barcamp RD 2018</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>

    <asset:link rel="icon" href="LogoRojo.png" type="image/x-ico"/>

    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"/>

    <!-- CSS Files -->
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="material-bootstrap-wizard.css"/>
</head>
<body>
<div class="image-container set-full-height"
     style="background-image: url('${resource(dir: "images/", file: "jconf fondo.png")}');">

    <!--  Made With Material Kit  -->
%{--    <a href="https://barcamp.org.do" class="made-with-mk">--}%
%{--        <div class="brand">BC</div>--}%

%{--        <div class="made-with">Barcamp <strong>RD</strong></div>--}%
%{--    </a>--}%

    <!--   Big container   -->
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <!--      Wizard container        -->
                <div class="wizard-container">
                    <div class="card wizard-card" data-color="red" id="wizard">
                        <g:if test="${ok}">
                            <div class="wizard-header">
                                <h3 class="wizard-title">
                                    REGISTRO COMPLETADO!
                                </h3>
                            </div>
                            <h5 class="info-text">Nos vemos este próximo 29 de Junio!</h5>
                            <p class="info-text"><a href="https://jconfdominicana.org" class="btn btn-success">PÁGINA OFICIAL DE JCONF DOMINICANA</a></p>
                        </g:if>
                        <g:else>
                            <div class="wizard-header">
                                <h3 class="wizard-title">
                                    Ha habido un problema con su registro, intente de nuevo.
                                </h3>
                            </div>
                            <p class="info-text"><a href="/" class="btn btn-success">VOLVER</a></p>
                        </g:else>
                    </div>
                </div> <!-- wizard container -->
            </div>
        </div> <!-- row -->
    </div> <!--  big container -->

    <div class="footer">
        <div style="color: black" class="container text-center">
            Evento organizado con <i class="fa fa-heart heart"></i>
            por el Comité de Estudiantes de Ingeniería de Sistemas y el equipo de Java Dominicano.
        </div>
    </div>
</div>

</body>
</html>