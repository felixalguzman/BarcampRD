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
                                            </thead>
                                            <tbody>
                                            <g:each in="${registros}" var="r">
                                                <tr>
                                                    <td>${r.cedula}</td>
                                                    <td>${r.nombre}</td>
                                                    <td>${r.correo}</td>
                                                    <td>${r.sizeCamiseta}</td>
                                                    <td>${r.estado.texto}</td>
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
            </div></div>
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