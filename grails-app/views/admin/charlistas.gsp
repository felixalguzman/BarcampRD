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
                                            <th>Foto</th>
                                            %{--                                            <th>Cantidad De Personas Soportadas</th>--}%
                                            </thead>
                                            <tbody>
                                            <g:each in="${charlistas}" var="c">
                                                <tr>
                                                    <td>${c.id}</td>
                                                    <td>${c.nombre}</td>
                                                    <td>${c.telefono}</td>
                                                    <td>

                                                        <button class="btn btn-navy" id="${c.id}"
                                                                onclick="buscarCharlasPorCharlista(this.id)">Charlas</button>

                                                        <button class="btn btn-navy" id="${c.id}"

                                                                data-toggle="modal"
                                                                data-target="#modificarCharlista_${c.id}"
                                                                onclick="cargarFoto('${c.imagenCharlista}', ${c.id})">Editar</button>

                                                        <div class="modal fade bd-example-modal-lg"
                                                             id="modificarCharlista_${c.id}"
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
                                                                                                        <h4 class="card-title">Editar Charlista</h4>

                                                                                                        <p class="card-category">Llene las informaciones del charlista.</p>
                                                                                                    </div>

                                                                                                    <div class="card-body">
                                                                                                        <g:form controller="charlista"
                                                                                                                action="guardarCharlista">
                                                                                                            <div class="row">
                                                                                                                <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                        <label id="numero-label-m"
                                                                                                                               for="nombre-m"
                                                                                                                               class="bmd-label-floating">Nombre</label>
                                                                                                                        <input type="text"
                                                                                                                               id="nombre-m"
                                                                                                                               name="nombre"
                                                                                                                               value="${c.nombre}"
                                                                                                                               class="form-control"
                                                                                                                               required>
                                                                                                                    </div>
                                                                                                                </div>

                                                                                                                <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                        <label for="pais-m"
                                                                                                                               class="bmd-label-floating">Pa&iacute;s</label>
                                                                                                                        <input type="text"
                                                                                                                               id="pais-m"
                                                                                                                               name="pais"
                                                                                                                               value="${c.pais}"
                                                                                                                               class="form-control"
                                                                                                                               required>
                                                                                                                    </div>
                                                                                                                </div>

                                                                                                                <div class="col-md-12">
                                                                                                                    <div class="form-group">
                                                                                                                        <label for="telefono-m"
                                                                                                                               class="bmd-label-floating">Tel&eacute;lefono</label>
                                                                                                                        <input type="tel"
                                                                                                                               id="telefono-m"
                                                                                                                               value="${c.telefono}"
                                                                                                                               name="telefono"
                                                                                                                               class="form-control">
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>

                                                                                                            <div class="row">
                                                                                                                <div class="col-md-12">

                                                                                                                    <label for="images-m">Foto</label>
                                                                                                                    <input type="file"
                                                                                                                           class="my-${c.id}"
                                                                                                                           name="f"/>

                                                                                                                    <input id="images-m"
                                                                                                                           hidden
                                                                                                                           name="imagenCharlista">

                                                                                                                </div>
                                                                                                            </div>

                                                                                                            <div class="card-avatar"
                                                                                                                 id="fotos-m">

                                                                                                            </div>

                                                                                                            <button type="submit"
                                                                                                                    id="submit"
                                                                                                                    class="btn btn-danger pull-right">Editar</button>

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
                                                    </td>
                                                    <td><img src="${c?.imagenCharlista}" alt="foto" height="120"
                                                             width="120"></td>
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
        $('.my').filepond();


        // Listen for addfile event
        $('.my-pond').on('FilePond:addfile', function (e) {
            console.log('file added event', e);
            // $('#images').val(base64);
            console.log('file', $('.my-pond').getFile());

        });



    });


    function cargarFoto(foto, id) {
        $('#fotos-m').append("<img class='img' height='300' alt='foto' src='" + foto + "'>");


        // Manually add a file using the addfile method
        $('.my-' + id).filepond('addFile', foto);

    }

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