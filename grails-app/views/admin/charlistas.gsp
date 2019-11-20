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

                                                                                                <label for="imagen_seleccionarFoto">Foto</label>
                                                                                                <input type="file"
                                                                                                       id="seleccionarFoto"
                                                                                                       name="filepond"
                                                                                                       onchange="preview_images(this.id, null, 'fotos')"/>

                                                                                                <input id="imagen_seleccionarFoto"
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
                                            <th>Foto</th>
                                            %{--                                            <th>Cantidad De Personas Soportadas</th>--}%
                                            </thead>
                                            <tbody>
                                            <g:each in="${charlistas}" var="c">
                                                <tr>
                                                    <td>${c.id}</td>
                                                    <td>${c.nombre}</td>
                                                    <td>${c.telefono}</td>
                                                    <td><img src="${c?.imagenCharlista ?: '//:0'}" alt="foto"
                                                             height="120"
                                                             width="120"></td>
                                                    <td>

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
                                                                                                                action="actualizarCharlista">

                                                                                                            <input hidden
                                                                                                                   name="id"
                                                                                                                   value="${c.id}">

                                                                                                            <div class="row">
                                                                                                                <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                        <label id="numero-label-m"
                                                                                                                               for="nombre_m"
                                                                                                                               class="bmd-label-floating">Nombre</label>
                                                                                                                        <input type="text"
                                                                                                                               id="nombre_m"
                                                                                                                               name="nombre"
                                                                                                                               value="${c.nombre}"
                                                                                                                               class="form-control"
                                                                                                                               required>
                                                                                                                    </div>
                                                                                                                </div>

                                                                                                                <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                        <label for="pais_m"
                                                                                                                               class="bmd-label-floating">Pa&iacute;s</label>
                                                                                                                        <input type="text"
                                                                                                                               id="pais_m"
                                                                                                                               name="pais"
                                                                                                                               value="${c.pais}"
                                                                                                                               class="form-control"
                                                                                                                               required>
                                                                                                                    </div>
                                                                                                                </div>

                                                                                                                <div class="col-md-12">
                                                                                                                    <div class="form-group">
                                                                                                                        <label for="telefono_m"
                                                                                                                               class="bmd-label-floating">Tel&eacute;lefono</label>
                                                                                                                        <input type="tel"
                                                                                                                               id="telefono_m"
                                                                                                                               value="${c.telefono}"
                                                                                                                               name="telefono"
                                                                                                                               class="form-control">
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>

                                                                                                            <div class="row">
                                                                                                                <div class="col-md-12">

                                                                                                                    <label for="imagen_nuevaSeleccionFoto_${c.id}">Foto</label>
                                                                                                                    <input type="file"
                                                                                                                           id="nuevaSeleccionFoto"
                                                                                                                           name="f"
                                                                                                                           onchange="preview_images(this.id, ${c.id}, 'fotos-m')"/>

                                                                                                                    <input id="imagen_nuevaSeleccionFoto_${c.id}"
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

<script>


    // Shorthand for $( document ).ready()
    $(document).ready(function () {
        console.log("ready!");
        $(".nav-item").removeClass('active');
        $("#li_charlistas").addClass('active');
        $("#table").DataTable();


    });


    function cargarFoto(foto, id) {
        $('#fotos-m').append("<img class='img' height='300' alt='foto' src='" + foto + "'>");


        // Manually add a file using the addfile method

    }

    function buscarCharlasPorCharlista(idCharlista) {


    }

    function preview_images(id, charlista, fotoId) {
        const total_file = document.getElementById(id).files.length;

        for (let i = 0; i < total_file; i++) {
            $('#' + fotoId).children().remove();
            $('#' + fotoId).append("<img class='img' height='300' src='" + URL.createObjectURL(event.target.files[i]) + "'>");
            toDataURL(URL.createObjectURL(event.target.files[i]), function (base64) {
                if (charlista === null) {
                    $('#imagen_' + id).val(base64);

                } else {

                    $('#imagen_' + id + '_' + charlista).val(base64);
                }
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