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
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header card-header-warning card-header-icon">
                            <div class="card-icon">
                                <i class="material-icons">content_copy</i>
                            </div>

                            <p class="card-category">Total de Registros</p>

                            <h3 class="card-title">${registros.size()}</h3>
                        </div>

                        <div class="card-footer">
                            <div class="stats">
                                %{-- <i class="material-icons text-danger">warning</i>
                                 <a href="#pablo">Get More Space...</a>--}%
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header card-header-success card-header-icon">
                            <div class="card-icon">
                                <i class="material-icons">store</i>
                            </div>

                            <p class="card-category">Registros Confirmados</p>

                            <h3 class="card-title">${registrosConfirmados}</h3>
                        </div>

                        <div class="card-footer">
                            <div class="stats">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header card-header-info card-header-icon">
                            <div class="card-icon">
                                <i class="material-icons">how_to_reg</i>
                            </div>

                            <p class="card-category">Total de Charlas</p>

                            <h3 class="card-title">${totalCharlas}</h3>
                        </div>

                        <div class="card-footer">
                            <div class="stats">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header  card-header-danger card-header-icon">
                            <div class="card-icon">
                                <i class="material-icons">info_outline</i>
                            </div>

                            <p class="card-category">Charlas Llenas</p>

                            <h3 class="card-title">${charlasLlenas}</h3>
                        </div>

                        <div class="card-footer">
                            <div class="stats">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header-danger card-header-primary">
                            <h4 class="card-title ">Entradas de Registros</h4>

                            <p class="card-category">Cantidad de Participantes Registrados</p>
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover" id="table">
                                    <thead class=" text-primary">
                                    <th>No. Identificación</th>
                                    <th>Nombre</th>
                                    <th>Correo</th>
                                    <th>Size</th>
                                    <th>Fecha de Registro</th>
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
                                            <td>${r.dateCreated}</td>
                                            <td>${r.estado.texto}</td>
                                            <td>
                                                <button type="button" class="btn btn-twitter"
                                                        data-toggle="modal"
                                                        data-target="#modal${r.id}">Ver Charlas
                                                </button>

                                                <div class="modal fade bd-example-modal-lg" id="modal${r.id}"
                                                     tabindex="-1"
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
                                                                        <table class="table table-hover">
                                                                            <thead class="text-warning">
                                                                            <th>ID</th>
                                                                            <th>Tema</th>
                                                                            <th>Horario</th>
                                                                            <th>Aula</th>
                                                                            </thead>
                                                                            <tbody>
                                                                            <g:each in="${r.listaCharlas}"
                                                                                    var="charla">
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

            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="card card-chart">
                        <div class="card-header card-header-success">
                            <div class="ct-chart" id="sizeChart"></div>
                        </div>

                        <div class="card-body">
                            <h4 class="card-title">Size de Camisetas</h4>

                            <p class="card-category">Cantidad de Camisetas por Size</p>
                        </div>

                        <div class="card-footer">
                            <div class="stats">
                                %{--<i class="material-icons">access_time</i> campaign sent 2 days ago--}%
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 col-md-12">
                    <div class="card card-chart">
                        <div class="card-header card-header-warning">
                            <div class="ct-chart" id="charlasChart"></div>
                        </div>

                        <div class="card-body">
                            <h4 class="card-title">Persona por Charla</h4>

                            <p class="card-category">Cantidad de personas asisitiendo por charla.</p>
                        </div>

                        <div class="card-footer">
                            <div class="stats">
                                %{--<i class="material-icons">access_time</i> campaign sent 2 days ago--}%
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
        $("#table").DataTable();
    </script>
</content>

</body>
</html>