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
                                                                                                    <label for="numero"
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
                                                                                                    <label for="cantidadPersonas"
                                                                                                           class="bmd-label-floating">Cantidad de Personas</label>
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

                                    <div class="table-responsive">
                                        <table class="table" id="table">
                                            <thead class=" text-primary">
                                            <tr>

                                                <th>ID</th>
                                                <th>Numero</th>
                                                <th>Cantidad De Personas Soportadas</th>
                                                <th>Lugar</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <g:each in="${aulas}" var="a">
                                                <tr>
                                                    <td>${a.id}</td>
                                                    <td>${a.numero}</td>
                                                    <td>${a.cantidadPersonas}</td>
                                                    <td>${a.lugar}</td>
                                                    <td>
                                                        <div>
                                                            <button type="button" class="btn btn-warning"
                                                                    data-toggle="modal"
                                                                    data-target="#editarAula${a.numero}">Editar
                                                            </button>

                                                            <div class="modal fade bd-example-modal-lg"
                                                                 id="editarAula${a.numero}"
                                                                 tabindex="-1"
                                                                 role="dialog" aria-labelledby="exampleModalLabel"
                                                                 aria-hidden="true">
                                                                <div class="modal-dialog modal-lg" role="document">
                                                                    <div class="modal-content">
                                                                        <div class="modal-header">
                                                                            <button type="button" class="close"
                                                                                    data-dismiss="modal"
                                                                                    aria-label="Close">
                                                                                <span aria-hidden="true">&times;</span>
                                                                            </button>
                                                                        </div>

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
                                                                                                                    action="actualizarAula">
                                                                                                                <div class="row">
                                                                                                                    <div class="col-md-6">
                                                                                                                        <div class="form-group">
                                                                                                                            <label for="numero-label2"
                                                                                                                                   class="bmd-label-floating">Numero</label>
                                                                                                                            <input id="numero-label2"
                                                                                                                                   type="text"
                                                                                                                                   name="numero"
                                                                                                                                   class="form-control"
                                                                                                                                   value="${a.numero}"
                                                                                                                                   disabled>

                                                                                                                            <input type="number"
                                                                                                                                   hidden
                                                                                                                                   name="id"
                                                                                                                                   value="${a.id}">
                                                                                                                        </div>
                                                                                                                    </div>

                                                                                                                    <div class="col-md-6">
                                                                                                                        <div class="form-group">
                                                                                                                            <label for="cantidad"
                                                                                                                                   class="bmd-label-floating">Cantidad de Personas</label>
                                                                                                                            <input id="cantidad"
                                                                                                                                   type="text"
                                                                                                                                   name="cantidadPersonas"
                                                                                                                                   class="form-control"
                                                                                                                                   value="${a.cantidadPersonas}"
                                                                                                                                   required>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <button type="submit"
                                                                                                                        id="submit"
                                                                                                                        class="btn btn-danger pull-right">Actualizar</button>

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
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </td>
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
        $("#li_aulas").addClass('active');
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