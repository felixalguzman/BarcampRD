<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="dashboard"/>
    <title>Aulas</title>
</head>

<body>
<content tag="titulo"><a class="navbar-brand" href="#pablo">Aulas</a></content>

<content tag="cont">
    <div class="content">
        <div class="container-fluid">
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header-danger card-header-primary">
                                    <h4 class="card-title ">Aulas</h4>

                                    <p class="card-category">Aulas Disponibles</p>
                                </div>

                                <div class="card-body">
                                    %{--<div name="modal">
                                        <button type="button" class="btn btn-twitter"
                                                data-toggle="modal"
                                                data-target="#crearAula">Crear Aula
                                        </button>

                                        <div class="modal fade bd-example-modal-lg" id="crearAula"
                                             tabindex="-1"
                                             role="dialog" aria-labelledby="exampleModalLabel"
                                             aria-hidden="true">
                                            <div class="modal-dialog modal-lg" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <div class="card-body">
                                                            <div class="table-responsive">
                                                                <div class="content">
                                                                    <div class="container-fluid">
                                                                        <div class="row">
                                                                            <div class="col-md-12">
                                                                                <div class="card">
                                                                                    <div class="card-header card-header-danger">
                                                                                        <h4 class="card-title">Crear Aula</h4>

                                                                                        <p class="card-category">Llene las informaciones de la nueva aula.</p>
                                                                                    </div>

                                                                                    <div class="card-body">
                                                                                        <g:form method="post"
                                                                                                controller="aula"
                                                                                                action="save">
                                                                                            <div class="row">
                                                                                                <div class="col-md-6">
                                                                                                    <div class="form-group">
                                                                                                        <label id="numero-label"
                                                                                                               class="bmd-label-floating">Numero</label>
                                                                                                        <input type="text"
                                                                                                               id="numero"
                                                                                                               name="numero"
                                                                                                               class="form-control"
                                                                                                               required>
                                                                                                    </div>
                                                                                                </div>

                                                                                                <div class="col-md-6">
                                                                                                    <div class="form-group">
                                                                                                        <label class="bmd-label-floating">Cantidad de Personas</label>
                                                                                                        <input type="text"
                                                                                                               id="cantidadPersonas"
                                                                                                               name="cantidadPersonas"
                                                                                                               class="form-control"
                                                                                                               required>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <button type="submit"
                                                                                                    id="submit"
                                                                                                    class="btn btn-danger pull-right">Crear</button>

                                                                                            <div class="clearfix"></div>
                                                                                        </g:form>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary"
                                                                data-dismiss="modal">Close</button>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--}%

                                    <div class="table-responsive">
                                        <table class="table" id="table">
                                            <thead class=" text-primary">
                                            <th>ID</th>
                                            <th>Horario</th>
                                            </thead>
                                            <tbody>
                                            <g:each in="${horarios}" var="a">
                                                <tr>
                                                    <td>${a.id}</td>
                                                    <td>${a.value}</td>
                                                </tr>
                                            </g:each>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</content>


<content tag="js">
    <script>
        $(".nav-item").removeClass('active');
        $("#li_horarios").addClass('active');
        $("#table").DataTable();
    </script>

    <script>
        $("#submit").on('click', function (e) {
            $.ajax({
                url: "/aula/numeroDisponible/",
                data: {data: $("#numero").val()},
                success: function (data) {
                    var numeroOK = false;
                    if (data === 'true') {
                        $("#numero-label").text('* Ya existe un aula con este numero!');
                        $("#numero-label").css('color', 'red');
                        numeroOK = false;
                    } else {
                        $("#numero-label").text('Correo Electrónico');
                        $("#numero-label").css('color', '');
                        numeroOK = true;
                    }
                    if (!numeroOK) {
                        e.preventDefault();
                    } else {
                        $(this).submit();
                    }
                }
            });

            //e.preventDefault();
            console.log('click')
        })
    </script>
</content>
</body>
</html>