<!DOCTYPE html>
<html lang="en">
<head>
     <meta name="layout" content="dashboard.gsp"/>
    <title>Title</title>
</head>

<body>

<content tag="titulo"><a class="navbar-brand" href="#pablo">Registros</a></content>

<content tag="cont">
    <div class="content">
        <div class="container-fluid">
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header-danger card-header-primary">
                                    <h4 class="card-title ">Entradas de Registros</h4>

                                    <p class="card-category">Cantidad de Participantes Registrados</p>
                                </div>

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class=" text-primary">
                                            <th>Cédula</th>
                                            <th>Nombre</th>
                                            <th>Correo</th>
                                            <th>Size</th>
                                            <th>Estado</th>
                                            <th>Charlas Seleccionadas</th>
                                            </thead>
                                            <tbody>
                                            <g:each in="${registros}" var="r">
                                                <tr>
                                                    <td>${r.cedula}</td>
                                                    <td>${r.nombre}</td>
                                                    <td>${r.correo}</td>
                                                    <td>${r.sizeCamiseta}</td>
                                                    <td>${r.estado.texto}</td>
                                                    <td><button type="button" class="btn btn-twitter"
                                                                data-toggle="modal"
                                                                data-target="#modal${r.id}">Ver Charlas
                                                    </button>

                                                        <div class="modal fade bd-example-modal-lg" id="modal${r.id}" tabindex="-1"
                                                             role="dialog" aria-labelledby="exampleModalLabel"
                                                             aria-hidden="true">
                                                            <div class="modal-dialog modal-lg" role="document">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title"
                                                                            id="exampleModalLabel">Charlas Seleccionadas</h5>
                                                                        <button type="button" class="close"
                                                                                data-dismiss="modal" aria-label="Close">
                                                                            <span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                    </div>

                                                                    <div class="modal-body">
                                                                        <div class="card-body">
                                                                            <div class="table-responsive">
                                                                                <table class="table">
                                                                                    <thead class="text-warning">
                                                                                    <th>ID</th>
                                                                                    <th>Tema</th>
                                                                                    <th>Horario</th>
                                                                                    <th>Aula</th>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                    <g:each in="${r.listaCharlas}" var="charla">
                                                                                        <tr>
                                                                                            <td>${charla.id}</td>
                                                                                            <td>${charla.tema}</td>
                                                                                            <td>${charla.horario.value}</td>
                                                                                            <td>${charla.aula.numero}</td>
                                                                                        </tr>
                                                                                    </g:each>
                                                                                    </tbody>
                                                                                </table>
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
        <!-- Button trigger modal -->


        <!-- Modal -->
    </div>
</content>
<content tag="js">
    <script>
        $(".nav-item").removeClass('active');
        $("#li_registros").addClass('active');
    </script>
</content>

</body>
</html>