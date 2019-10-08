<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="dashboard"/>
    <title>Aulas</title>

    <!-- add to document <head> -->
    <asset:link rel="stylesheet" href="filepond-plugin-image-preview.css"/>
    <link href="https://unpkg.com/filepond/dist/filepond.css" rel="stylesheet">

</head>

<body>
<content tag="titulo"><a class="navbar-brand" href="#pablo">Charlistas</a></content>

<content tag="cont">
    <div class="content">
        <div class="container-fluid">
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header-danger card-header-primary">
                                    <h4 class="card-title ">Charlistas</h4>

                                    <p class="card-category"></p>
                                </div>

                                <div class="card-body">
                                    <button type="button" class="btn btn-twitter"
                                            data-toggle="modal"
                                            data-target="#crearAula">Crear Charlista
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
                                                                                    <h4 class="card-title">Crear Charlista</h4>

                                                                                    <p class="card-category">Llene las informaciones del charlista.</p>
                                                                                </div>

                                                                                <div class="card-body">
                                                                                    <g:form controller="charlista"
                                                                                            action="guardarCharlista">
                                                                                        <div class="row">
                                                                                            <div class="col-md-6">
                                                                                                <div class="form-group">
                                                                                                    <label id="numero-label"
                                                                                                           for="nombre"
                                                                                                           class="bmd-label-floating">Nombre</label>
                                                                                                    <input type="text"
                                                                                                           id="nombre"
                                                                                                           name="nombre"
                                                                                                           class="form-control"
                                                                                                           required>
                                                                                                </div>
                                                                                            </div>

                                                                                            <div class="col-md-6">
                                                                                                <div class="form-group">
                                                                                                    <label for="pais"
                                                                                                           class="bmd-label-floating">Pa&iacute;s</label>
                                                                                                    <input type="text"
                                                                                                           id="pais"
                                                                                                           name="pais"
                                                                                                           class="form-control"
                                                                                                           required>
                                                                                                </div>
                                                                                            </div>

                                                                                            <div class="col-md-12">
                                                                                                <div class="form-group">
                                                                                                    <label for="telefono"
                                                                                                           class="bmd-label-floating">Tel&eacute;lefono</label>
                                                                                                    <input type="tel"
                                                                                                           id="telefono"
                                                                                                           name="telefono"
                                                                                                           class="form-control">
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>

                                                                                        <div class="row">
                                                                                            <div class="col-md-12">

                                                                                                <label for="images">Foto</label>
                                                                                                <input type="file"
                                                                                                       class="my-pond"
                                                                                                       name="filepond"/>

                                                                                                <input id="images"
                                                                                                       hidden
                                                                                                       name="imagenCharlista">

                                                                                            </div>
                                                                                        </div>

                                                                                        <div class="card-avatar"
                                                                                             id="fotos">

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
                                            <th>ID</th>
                                            <th>Nombre</th>
                                            <th>Tel&eacute;lefono</th>
                                            <th>Charlas</th>
                                            %{--                                            <th>Cantidad De Personas Soportadas</th>--}%
                                            </thead>
                                            <tbody>
                                            <g:each in="${charlistas}" var="c">
                                                <tr>
                                                    <td>${c.id}</td>
                                                    <td>${c.nombre}</td>
                                                    <td>${c.telefono}</td>
                                                    <td><button class="btn btn-navy" id="${c.id}"
                                                                onclick="buscarCharlasPorCharlista(this.id)">Charlas</button>
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


<!-- include jQuery library -->
%{--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>--}%

<!-- include FilePond library -->
<script src="https://unpkg.com/filepond/dist/filepond.min.js"></script>

<!-- include FilePond plugins -->
<script src="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.js"></script>

<!-- include FilePond jQuery adapter -->
<script src="https://unpkg.com/jquery-filepond/filepond.jquery.js"></script>


<script>


    // Shorthand for $( document ).ready()
    $(document).ready(function () {
        console.log("ready!");
        $(".nav-item").removeClass('active');
        $("#li_charlistas").addClass('active');
        $("#table").DataTable();


        // First register any plugins
        $.fn.filepond.registerPlugin(FilePondPluginImagePreview, FilePondPluginFileEncode);

        // Turn input element into a pond
        $('.my-pond').filepond();

        // Listen for addfile event
        $('.my-pond').on('FilePond:addfile', function (e) {
            // console.log('file added event', e);

            // $('#images').val(base64);

        });


    });


    %{--$("#submit").on('click', function (e) {--}%
    %{--    e.preventDefault();--}%
    %{--    $.ajax({--}%
    %{--        url: "${createLink(controller: "charlista", action: "guardarCharlista")}",--}%
    %{--        data: $("form").serialize(),--}%
    %{--        success: function (data) {--}%

    %{--            --}%%{--window.location.href = "${createLink(controller: "admin", action: "charlistas")}";--}%


    %{--            //         var numeroOK = false;--}%
    %{--            //         if (data === 'true') {--}%
    %{--            //             $("#numero-label").text('* Ya existe un aula con este numero!');--}%
    %{--            //             $("#numero-label").css('color', 'red');--}%
    %{--            //             numeroOK = false;--}%
    %{--            //         } else {--}%
    %{--            //             $("#numero-label").text('Correo Electrónico');--}%
    %{--            //             $("#numero-label").css('color', '');--}%
    %{--            //             numeroOK = true;--}%
    %{--            //         }--}%
    %{--            //         if (!numeroOK) {--}%
    %{--            //             e.preventDefault();--}%
    %{--            //         } else {--}%
    %{--            //             $(this).submit();--}%
    %{--            //         }--}%
    %{--        }--}%
    %{--    });--}%

    %{--    //e.preventDefault();--}%
    %{--    console.log('click')--}%
    %{--});--}%

    function buscarCharlasPorCharlista(idCharlista) {


    }

    function preview_images() {
        const total_file = document.getElementById("seleccionarFoto").files.length;

        for (let i = 0; i < total_file; i++) {
            $('#fotos').children().remove();
            $('#fotos').append("<img class='img' height='300' src='" + URL.createObjectURL(event.target.files[i]) + "'>");
            toDataURL(URL.createObjectURL(event.target.files[i]), function (base64) {
                $('#images').val(base64);
            });
        }

    }

    function toDataURL(url, callback) {
        var xhr = new XMLHttpRequest();
        xhr.onload = function () {
            var reader = new FileReader();
            reader.onloadend = function () {
                callback(reader.result);
            };
            reader.readAsDataURL(xhr.response);
        };
        xhr.open('GET', url);
        xhr.responseType = 'blob';
        xhr.send();
    }
</script>
</body>
</html>