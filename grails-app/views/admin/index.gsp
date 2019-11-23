<%@ page import="barcamprd.Confirmar; barcamprd.EstadoRegistro; barcamprd.Participante; barcamprd.Charla" %>
<!DOCTYPE html>
<html lang="en">
<head>
     <meta name="layout" content="dashboard.gsp"/>
    <title>Title</title>
    <content tag="css">
        <asset:stylesheet src="material-charts.css"/>
        <asset:stylesheet src="chartist-plugin-tooltip.css"/>
    </content>
</head>

<body>

<content tag="titulo"><a class="navbar-brand">Registros</a></content>

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

                            <p class="card-category">Total de Participantes</p>

                            <h3 class="card-title">${participantes}</h3>
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

                            <p class="card-category">Participantes Aprobados</p>

                            <h3 class="card-title">${registrosAprobados}</h3>
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

                            <h3 class="card-title">${Charla.count()}</h3>
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

                            <h3 class="card-title">${Charla.findAllByLlena(true).size()}</h3>
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
                                    <tr>

                                        <th>No. Id</th>
                                        <th>Nombre</th>
                                        <th>Correo</th>
                                        <th>Size</th>
                                        <th>Fecha de Registro</th>
                                        <th>Estado</th>
                                        <th>Charlas</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <g:each in="${registros}" var="r">
                                        <tr>
                                            <td>${r.cedula}</td>
                                            <td>${r.nombre}</td>
                                            <td>${r.correo}</td>
                                            <td>${r.sizeCamiseta}</td>
                                            <td><g:formatDate format="yyyy-MM-dd" date="${r.dateCreated}"/>
                                            </td>
                                            <g:if test="${r.estado.numero == EstadoRegistro.ESTADO_PENDIENTE}">
                                                <td><button id="aprobarbtn"
                                                            class="btn btn-facebook"
                                                            onclick="aprobar(${r.id})">APROBAR</button>
                                                </td>
                                            </g:if>
                                            <g:else>
                                                <g:if test="${r.estado.numero == EstadoRegistro.ESTADO_APROBADO}">
                                                    <td>

                                                        <button id="pendienteBtn"
                                                                class="btn btn-warning"
                                                                onclick="pendiente(${r.id})">PENDIENTE</button>

                                                        <button id="confbtn"
                                                                class="btn btn-success"
                                                                onclick="confirmar(${r.id})">CONFIRMAR</button>

                                                    </td>
                                                </g:if>

                                                <g:if test="${r.estado.numero == EstadoRegistro.ESTADO_CONFIRMADO}">
                                                    <td>
                                                        <button type="button" class="btn btn-primary">
                                                            CONFIRMADO
                                                        </button>


                                                    </td>
                                                </g:if>
                                            </g:else>
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
                                                                            <tr>

                                                                                <th>ID</th>
                                                                                <th>Tema</th>
                                                                                <th>Charlista</th>
                                                                                <th>Horario</th>
                                                                                <th>Aula</th>
                                                                            </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                            <g:each in="${r.charlas}"
                                                                                    var="charla">
                                                                                <tr>
                                                                                    <td>${charla.id}</td>
                                                                                    <td>${charla.tema}</td>
                                                                                    <td>${charla.charlista.nombre}</td>
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

                                                                <a class="button btn btn-warning btn--pill"
                                                                   href="${createLink(controller: "admin", action: "editarRegistro", params: [idRegistro: r.id])}">Editar</a>

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
                            <h4 class="card-title">Personas por Charla</h4>

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
    </div>
</content>
<content tag="js">
    <asset:javascript src="material-charts.js"/>
    <asset:javascript src="plugins/chartist.min.js"/>
    <asset:javascript src="plugins/chartist-plugin-tooltip.js"/>
    <asset:javascript src="plugins/chartist-plugin-pointlabels.js"/>

    <script type="text/javascript">
        $(document).ready(function () {
            $(".nav-item").removeClass('active');
            $("#li_registros").addClass('active');
            $("#table").DataTable();

            $.ajax({
                url: "/admin/sizesCamisetas",
                success: function (data) {
                    var labels = [];
                    var series = [];

                    for (var key in data) {
                        if (data.hasOwnProperty(key)) {
                            labels.push(key);
                            series.push({meta: key, value: data[key]});
                        }
                    }

                    if ($('#sizeChart').length !== 0) {
                        var dataWebsiteViewsChart = {
                            labels: labels,
                            series: [series]
                        };
                        var optionsWebsiteViewsChart = {
                            axisX: {
                                showGrid: true
                            },
                            low: 0,
                            high: labels.length + 1,
                            fullWidth: true,
                            plugins: [
                                Chartist.plugins.tooltip({
                                    textAnchor: 'middle'
                                }),
                                Chartist.plugins.ctPointLabels({
                                    textAnchor: 'middle',
                                    labelInterpolationFnc: function (value) {
                                        return '' + value
                                    }
                                })
                            ],
                            chartPadding: {
                                top: 0,
                                right: 0,
                                bottom: 0,
                                left: 0
                            },
                        };
                        var responsiveOptions = [
                            ['screen and (max-width: 640px)', {
                                seriesBarDistance: 5,
                                axisX: {
                                    labelInterpolationFnc: function (value) {
                                        return value[0];
                                    }
                                }
                            }]
                        ];
                        var websiteViewsChart = Chartist.Bar('#sizeChart', dataWebsiteViewsChart, optionsWebsiteViewsChart, responsiveOptions);
                        //start animation for the Emails Subscription Chart
                        //md.startAnimationForBarChart(websiteViewsChart);
                    }
                }
            });

            $.ajax({
                url: "/admin/asistentesPorCharla",
                success: function (data) {
                    var labels = [];
                    var series = [];

                    for (var key in data) {
                        if (data.hasOwnProperty(key)) {
                            labels.push(key);
                            for (var k2 in data[key]) {
                                if (data[key].hasOwnProperty(k2)) {
                                    series.push({meta: k2, value: data[key][k2]});
                                }
                            }
                        }
                    }

                    if ($('#charlasChart').length !== 0) {
                        var dataWebsiteViewsChart = {
                            labels: labels,
                            series: [series]
                        };
                        var optionsWebsiteViewsChart = {
                            axisX: {
                                showGrid: true
                            },
                            low: 0,
                            high: labels.length + 1,
                            fullWidth: true,
                            plugins: [
                                Chartist.plugins.tooltip({
                                    textAnchor: 'middle'
                                }),
                            ],
                            chartPadding: {
                                top: 0,
                                right: 0,
                                bottom: 0,
                                left: 0
                            },
                        };
                        var responsiveOptions = [
                            ['screen and (max-width: 640px)', {
                                seriesBarDistance: 5,
                                axisX: {
                                    labelInterpolationFnc: function (value) {
                                        return value[0];
                                    }
                                }
                            }]
                        ];
                        var websiteViewsChart = Chartist.Bar('#charlasChart', dataWebsiteViewsChart, optionsWebsiteViewsChart, responsiveOptions);
                        //start animation for the Emails Subscription Chart
                        //md.startAnimationForBarChart(websiteViewsChart);
                    }
                }
            });

        });
    </script>
    <script type="text/javascript">
        function aprobar(id) {
            if (confirm('Seguro que quiere aprobar?')) {
                $.ajax({
                    url: "/admin/aprobarRegistro",
                    data: {data: id},
                    success: function (data) {
                        if (data === 'true') {
                            window.location = "/admin/"
                        } else {
                            alert('Error al aprobar el registro.')
                        }
                    }
                });
            }
        }

        function confirmar(id) {
            if (confirm('Seguro que quiere confirmar?')) {
                $.ajax({
                    url: "/admin/confirmarRegistro",
                    data: {data: id},
                    success: function (data) {
                        if (data === 'true') {
                            window.location = "/admin/"
                        } else {
                            alert('Error al confirmar el registro.')
                        }
                    }
                });
            }
        }

        function pendiente(id) {

            $.ajax({
                url: "${createLink(controller: "admin", action: "cambiarEstadoPendiente")}",
                data: {data: id},
                success: function (data) {
                    if (data === 'true') {
                        window.location = "/admin/"
                    } else {
                        alert('Error al cambiar el registro.')
                    }
                }
            });

        }

    </script>
</content>

</body>
</html>