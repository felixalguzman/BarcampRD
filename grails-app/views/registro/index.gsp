<!doctype html>
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
    <asset:stylesheet src="custom.css"/>
    <asset:stylesheet src="material-bootstrap-wizard.css"/>
    <style>
    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        /* display: none; <- Crashes Chrome on hover */
        -webkit-appearance: none;
        margin: 0; /* <-- Apparently some margin are still there even though it's hidden */
    }
    </style>
</head>

<body>
<div class="image-container set-full-height"
     style="background-image: url('${resource(dir: "images/", file: "jconf fondo.png")}');">
    <!--   Creative Tim Branding   -->
    <a href="http://creative-tim.com">
        <div class="logo-container">
            %{--<div class="logo">
                <img src="assets/img/new_logo.png">
            </div>
            <div class="brand">
                Creative Tim
            </div>--}%
        </div>
    </a>

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
                    <div class="card wizard-card" data-color="navy" id="wizard">
                        <g:form action="registrar" method="get">
                            <!--        You can switch " data-color="blue" "  with one of the next bright colors: "green", "orange", "red", "purple"             -->

                            <div class="wizard-header">
                                <h3 class="wizard-title">
                                    Registro al Barcamp RD
                                </h3>
                                <h5>¡¿A cuáles conferencias quieres asistir?!</h5>
                            </div>

                            <g:if test="${ok}">
                                <div class="wizard-navigation">
                                    <ul>
                                        <li><a href="#datos-personales" data-toggle="tab">Datos Personales</a></li>
                                        <li><a href="#charlas" data-toggle="tab">Conferencias</a></li>
                                        <li><a href="#charlas2" data-toggle="tab">Conferencias</a></li>
                                        <li><a href="#fin" data-toggle="tab">Fin</a></li>
                                    </ul>
                                </div>

                                <div class="tab-content">
                                    <div class="tab-pane" id="datos-personales">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <h4 class="info-text">Información Básica</h4>
                                            </div>

                                            <div class="col-sm-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="material-icons">fingerprint</i>
                                                    </span>

                                                    <div class="form-group label-floating">
                                                        <label id="cedula-label"
                                                               class="control-label">No. de registro asignado</label>
                                                        <input id="cedula" name="cedula" class="form-control" required>
                                                    </div>
                                                </div>

                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="material-icons">person</i>
                                                    </span>

                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Nombre</label>
                                                        <input name="nombre" type="text" class="form-control" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-12">

                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="material-icons">email</i>
                                                    </span>

                                                    <div class="form-group label-floating">
                                                        <label id="correo-label"
                                                               class="control-label">Correo Electrónico</label>
                                                        <input id="email" name="email" type="text" class="form-control"
                                                               required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-12">

                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="material-icons">person</i>
                                                    </span>

                                                    <div class="form-group label-floating">
                                                        <label class="control-label">Size de Camiseta</label>
                                                        <fieldset>
                                                            <input type="radio" name="size" value="S" required> S
                                                            <input type="radio" name="size" style="margin-left: 20px;"
                                                                   value="M"> M
                                                            <input type="radio" name="size" style="margin-left: 20px;"
                                                                   value="L"> L
                                                            <input type="radio" name="size" style="margin-left: 20px;"
                                                                   value="XL"> XL
                                                            <input type="radio" name="size" style="margin-left: 20px;"
                                                                   value="XXL"> XXL
                                                        </fieldset>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane" id="charlas">
                                        <h4 class="info-text">Selecciona una charla por franja de horas</h4>

                                        <div class="row">
                                            <div class="col-sm-12 col-sm-offset-1">
                                                <h4 style="color: red;">* Debe seleccionar una opción en cada grupo!</h4>
                                                <g:each in="${charlas}" var="c">
                                                    <h3>${c.key}</h3>
                                                    <g:each in="${c.value}" var="s">
                                                        <fieldset name="charlas">
                                                            <input type="radio" name="h_${s.horario.id}"
                                                                   style="color: red;"
                                                                   value="${s.id}" <g:if
                                                                           test="${s.llena}">style="color: red;" disabled</g:if>
                                                                   required> <g:if
                                                                test="${s.llena}"><strike>${s.tema}</strike></g:if>
                                                            <g:else>${s.tema}</g:else><br>
                                                        </fieldset>
                                                    </g:each>
                                                </g:each>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane" id="charlas2">
                                        <h4 class="info-text">Selecciona una charla por franja de horas</h4>

                                        <div class="row">
                                            <div class="col-sm-12 col-sm-offset-1">
                                                <h4 style="color: red;">* Debe seleccionar una opción en cada grupo!</h4>
                                                <g:each in="${charlas2}" var="c">
                                                    <h3>${c.key}</h3>
                                                    <g:each in="${c.value}" var="s">
                                                        <fieldset name="charlas2">
                                                            <input type="radio" name="h_${s.horario.id}"
                                                                   value="${s.id}"
                                                                   <g:if test="${s.llena}">disabled</g:if>
                                                                   required> <g:if
                                                                test="${s.llena}"><strike>${s.tema}</strike></g:if>
                                                            <g:else>${s.tema}</g:else><br>
                                                        </fieldset>
                                                    </g:each>
                                                </g:each>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane" id="fin">
                                        <div class="row">
                                            <h2 class="info-text">Gracias por su información!</h2>

                                            <h3 class="info-text">Antes de enviar el formulario, por favor revisar de nuevo la información ingresada!</h3>

                                            <p class="info-text"><input id='btn-submit' type='submit'
                                                                        class='btn btn-finish btn-fill btn-danger btn-wd'
                                                                        name='finish'
                                                                        value='Enviar Formulario'/></p>

                                        </div>
                                    </div>
                                </div>

                                <div class="wizard-footer">
                                    <div class="pull-right">
                                        <input type='button' class='btn btn-next btn-fill btn-navy btn-wd' name='next'
                                               value='Siguiente'/>
                                        %{--<input id='btn-submit' type='submit'
                                               class='btn btn-finish btn-fill btn-danger btn-wd' name='finish'
                                               value='Listo'/>--}%
                                    </div>

                                    <div class="pull-left">
                                        <input type='button' class='btn btn-previous btn-fill btn-default btn-wd'
                                               name='previous' value='Anterior'/>

                                        %{--<div class="footer-checkbox">
                                            <div class="col-sm-12">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" name="optionsCheckboxes">
                                                    </label>
                                                    Subscribe to our newsletter
                                                </div>
                                            </div>
                                        </div>--}%
                                    </div>

                                    <div class="clearfix"></div>
                                </div>
                            </g:if>
                            <g:else>
                                <div class="wizard-header">
                                    <h3 class="wizard-title">
                                        TODAS LAS BOLETAS ESTAN VENDIDAS.
                                    </h3>
                                </div>

                                <p class="info-text"><a href="https://jconfdominicana.org"
                                                        class="btn btn-success">PÁGINA OFICIAL</a></p>
                            </g:else>
                        </g:form>
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
<!--   Core JS Files   -->
<asset:javascript src="jquery-2.2.4.min.js"/>
<asset:javascript src="bootstrap.js"/>
<asset:javascript src="jquery.bootstrap.js"/>
<asset:javascript src="material-bootstrap-wizard.js"/>
<asset:javascript src="jquery.validate.min.js"/>

%{--<script>
    var inputQuantity = [];
    $(function () {
        $(".quantity").each(function (i) {
            inputQuantity[i] = this.defaultValue;
            $(this).data("idx", i); // save this field's index to access later
        });
        $(".quantity").on("keyup", function (e) {
            var $field = $(this),
                val = this.value,
                $thisIndex = parseInt($field.data("idx"), 10); // retrieve the index
//        window.console && console.log($field.is(":invalid"));
            //  $field.is(":invalid") is for Safari, it must be the last to not error in IE8
            if (this.validity && this.validity.badInput || isNaN(val) || $field.is(":invalid")) {
                this.value = inputQuantity[$thisIndex];
                return;
            }
            if (val.length > Number($field.attr("maxlength"))) {
                val = val.slice(0, 11);
                $field.val(val);
            }
            inputQuantity[$thisIndex] = val;
        });
    });
</script>--}%

<script type="text/javascript">

    var okCedula = false;
    var okCorreo = false;

    $("#cedula").on('change', function (e) {
        var cedula = $("#cedula").val();
        $.ajax({
            url: "registro/verificarCedula/",
            data: {data: cedula},
            success: function (data) {
                if (data === 'true') {
                    $("#cedula-label").text('* Ya existe un registro con esta cédula!');
                    $("#cedula-label").css('color', 'red');
                    okCedula = false;
                } else {
                    $("#cedula-label").text('No. de registro asignado');
                    $("#cedula-label").css('color', '');
                    okCedula = true;
                }
            }
        });
    });

    $("#email").on('change', function (e) {
        var correo = $("#email").val();
        $.ajax({
            url: "registro/verificarCorreo/",
            data: {data: correo},
            success: function (data) {
                if (data === 'true') {
                    $("#correo-label").text('* Ya existe un registro con este correo!');
                    $("#correo-label").css('color', 'red');
                    okCorreo = false;
                } else {
                    $("#correo-label").text('Correo Electrónico');
                    $("#correo-label").css('color', '');
                    okCorreo = true;
                }
            }
        });
    });

    $("#btn-submit").on('click', function (e) {
        if (okCedula && okCorreo) {
            $(this).submit();
        } else {
            alert('No se ha podido registrar su entrada, revise los datos ingresados.');
            e.preventDefault();
        }
    })
</script>
</html>
