<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="dashboard"/>
    <title>Charlas</title>
</head>

<body>
<content tag="titulo"><a class="navbar-brand" href="#pablo">Charlas</a></content>

<content tag="cont">
    <div class="content">
        <div class="container-fluid">
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header-danger card-header-primary">
                                    <h4 class="card-title ">Charlas</h4>

                                    <p class="card-category">Charlas Disponibles</p>
                                </div>

                                <div class="card-body">


                                    <div class="table-responsive">
                                        <table class="table" id="table">
                                            <thead class=" text-primary">
                                            <th>ID</th>
                                            <th>Charlista</th>
                                            <th>Tema</th>
                                            <th>Cantidad Asistentes</th>
                                            <th>Llena</th>
                                            <th>Asistentes</th>
                                            </thead>
                                            <tbody>
                                            <g:each in="${charlas}" var="a">
                                                <tr>
                                                    <td>${a.id}</td>
                                                    <td>${a.charlista}</td>
                                                    <td>${a.tema}</td>
                                                    <td>${a.cantidadAsistentes}/${a.aula.cantidadPersonas}</td>
                                                    <td>${a.llena}</td>
                                                    <td>

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
        $("#li_charlas").addClass('active');
        $("#table").DataTable();
    </script>

    <script>
        /*$("#submit").on('click', function (e) {
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
        })*/
    </script>
</content>
</body>
</html>