<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="dashboard"/>
    <title>Aulas</title>
</head>

<body>
<content tag="titulo"><a class="navbar-brand" href="#pablo">Editar registro</a></content>

<content tag="cont">
    <div class="content">
        <div class="container-fluid">
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header-danger card-header-primary">
                                    <h4 class="card-title ">Participante: ${registro.nombre}</h4>
                                </div>

                                <div class="card-body">
                                    <button type="button" class="btn btn-twitter"
                                            data-toggle="modal"
                                            data-target="#agregarCharla">Agregar charla
                                    </button>

                                    <div class="modal fade bd-example-modal-lg" id="agregarCharla"
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
                                                                                    <h4 class="card-title">Agregar charla</h4>

                                                                                    <p class="card-category">Seleccione una charla.</p>
                                                                                </div>

                                                                                <div class="card-body">
                                                                                    <g:form method="post"
                                                                                            controller="admin"
                                                                                            action="agregarCharla">
                                                                                        <div class="row">
                                                                                        <input type="text" name="idRegistro" value="${registro.id}" hidden>
                                                                                        <div class="col-sm-12">
                                                                                            <div class="form-group label-floating">
                                                                                                <label for="idCharla"
                                                                                                       class="control-label">Charla</label>

                                                                                                <g:select
                                                                                                        id="idCharla"
                                                                                                        name='idCharla'
                                                                                                        class="form-control valid"
                                                                                                        aria-invalid="false"
                                                                                                        noSelection="${['null': 'Seleccione...']}"
                                                                                                        from='${charlas}'
                                                                                                        optionKey="id"
                                                                                                        optionValue="tema">

                                                                                                    <span class="material-input"></span>
                                                                                                </g:select>

                                                                                            </div>

                                                                                        </div>
                                                                                        <button type="submit"
                                                                                                id="submit"
                                                                                                class="btn btn-danger pull-right">Agregar</button>

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
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table" id="table">
                                            <thead class=" text-primary">
                                            <tr>

                                                <th>ID</th>
                                                <th>Nombre</th>
                                                <th>Horario</th>
                                                <th>Cantidad Personas</th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <g:each in="${registro.getCharlas()}" var="c">
                                                <tr>
                                                    <td>${c.id}</td>
                                                    <td>${c.tema}</td>
                                                    <td>${c.horario.value}</td>
                                                    <td>${c.cantidadParticipantes()}</td>

                                                    <td>
                                                        <button class="btn btn-warning">Modificar</button>
                                                        <a class="button btn btn-danger btn--pill"
                                                           href="${createLink(controller: "admin", action: "quitarCharla", params: [idRegistro: registro.id, idCharla: c.id])}">Quitar</a>
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
        // $(".nav-item").removeClass('active');
        // $("#li_aulas").addClass('active');
        $("#table").DataTable();
    </script>

    <script>
    </script>
</content>
</body>
</html>