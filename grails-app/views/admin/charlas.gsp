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
                                    <button type="button" class="btn btn-twitter"
                                            data-toggle="modal"
                                            data-target="#crearCharla">Crear Charla
                                    </button>

                                    <div class="modal fade bd-example-modal-lg" id="crearCharla"
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
                                                                                    <h4 class="card-title">Crear Charla</h4>

                                                                                    <p class="card-category">Llene las informaciones de la charla.</p>
                                                                                </div>

                                                                                <div class="card-body">
                                                                                    <g:form controller="charla"
                                                                                            action="guardarCharla">
                                                                                        <div class="row">
                                                                                            <div class="col-sm-6">
                                                                                                <div class="form-group label-floating">
                                                                                                    <label for="charlista"
                                                                                                           class="control-label">Charlista</label>

                                                                                                    <g:select
                                                                                                            id="charlista"
                                                                                                            name='charlista'
                                                                                                            class="form-control valid"
                                                                                                            aria-invalid="false"
                                                                                                            value="${{
                                                                                                                it.nombre
                                                                                                            }}"
                                                                                                            noSelection="${['null': 'Seleccione...']}"
                                                                                                            from='${charlistas}'
                                                                                                            optionKey="id"
                                                                                                            optionValue="nombre">

                                                                                                        <span class="material-input"></span>
                                                                                                    </g:select>

                                                                                                </div>

                                                                                            </div>

                                                                                            <div class="col-md-6">
                                                                                                <div class="form-group">
                                                                                                    <label for="tema"
                                                                                                           class="bmd-label-floating">Tema</label>
                                                                                                    <input type="text"
                                                                                                           id="tema"
                                                                                                           name="tema"
                                                                                                           class="form-control"
                                                                                                           required>
                                                                                                </div>
                                                                                            </div>


                                                                                            <div class="col-sm-12">
                                                                                                <div class="form-group is-empty">
                                                                                                    <label for="descripcionCharla">Descripci&oacute;n charla</label>
                                                                                                    <textarea
                                                                                                            id="descripcionCharla"
                                                                                                            class="form-control"
                                                                                                            name="descripcionCharla"
                                                                                                            rows="3"></textarea>
                                                                                                    <span class="material-input"></span>
                                                                                                </div>
                                                                                            </div>


                                                                                            <div class="col-md-6">
                                                                                                <div class="form-group label-floating">
                                                                                                    <label for="aula"
                                                                                                           class="control-label">Aula</label>

                                                                                                    <g:select id="aula"
                                                                                                              name='aula'
                                                                                                              class="form-control valid"
                                                                                                              aria-invalid="false"
                                                                                                              noSelection="${['null': 'Seleccione...']}"
                                                                                                              from='${aulas}'
                                                                                                              optionKey="id"
                                                                                                              optionValue="${{
                                                                                                                  'Aula: ' + it.lugar + ' cantidad personas: ' + it.cantidadPersonas
                                                                                                              }}">

                                                                                                        <span class="material-input"></span>
                                                                                                    </g:select>
                                                                                                </div>
                                                                                            </div>

                                                                                            <div class="col-md-6">
                                                                                                <div class="form-group label-floating">
                                                                                                    <label for="horario"
                                                                                                           class="control-label">Horario</label>
                                                                                                    <g:select
                                                                                                            id="horario"
                                                                                                            name='horario'
                                                                                                            class="form-control valid"
                                                                                                            aria-invalid="false"
                                                                                                            value="${{
                                                                                                                it.nombre
                                                                                                            }}"
                                                                                                            noSelection="${['null': 'Seleccione...']}"
                                                                                                            from='${horarios}'
                                                                                                            optionKey="id"
                                                                                                            optionValue="value">

                                                                                                        <span class="material-input"></span>
                                                                                                    </g:select>

                                                                                                </div>

                                                                                            </div>

                                                                                            <div class="col-md-6">
                                                                                                <div class="form-group">
                                                                                                    <label for="audienceLevel"
                                                                                                           class="bmd-label-floating">Nivel audiencia</label>
                                                                                                    <input type="text"
                                                                                                           id="audienceLevel"
                                                                                                           name="audienceLevel"
                                                                                                           class="form-control"
                                                                                                           required>
                                                                                                </div>
                                                                                            </div>

                                                                                            <div class="col-md-6">
                                                                                                <div class="form-group">
                                                                                                    <label for="talkFormat"
                                                                                                           class="bmd-label-floating">Talk Format</label>
                                                                                                    <input type="text"
                                                                                                           id="talkFormat"
                                                                                                           name="talkFormat"
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
                                                <th>Charlista</th>
                                                <th>Tema</th>
                                                <th>Cantidad Asistentes</th>
                                                <th>Llena</th>
                                                <th>Horario</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <g:each in="${charlas}" var="a">
                                                <tr>
                                                    <td>${a.id}</td>
                                                    <td>${a.charlista.nombre}</td>
                                                    <td>${a.tema}</td>
                                                    <td>${a.cantidadParticipantes()}/${a.aula.cantidadPersonas}</td>
                                                    <td>

                                                        <g:if test="${a.llena}">
                                                            <div class="card-icon" style="color: red">
                                                                <i class="material-icons">check</i>
                                                            </div>
                                                        </g:if>
                                                        <g:else>
                                                            <div class="card-icon" style="color: green">
                                                                <i class="material-icons">clear</i>
                                                            </div>
                                                        </g:else>

                                                    </td>
                                                    <td>${a.horario.value}</td>
                                                    <td>
                                                        <button type="button" class="btn btn-warning"
                                                                data-toggle="modal"
                                                                data-target="#editarCharla${a.id}">Editar
                                                        </button>

                                                        <div class="modal fade bd-example-modal-lg"
                                                             id="editarCharla${a.id}"
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
                                                                                                        <h4 class="card-title">Modificar Charla</h4>

                                                                                                        <p class="card-category">Llene las informaciones de la charla.</p>
                                                                                                    </div>

                                                                                                    <div class="card-body">
                                                                                                        <g:form controller="charla"
                                                                                                                action="actualizarCharla">
                                                                                                            <div class="row">
                                                                                                                <div class="col-sm-6">
                                                                                                                    <input type="number"
                                                                                                                           hidden
                                                                                                                           name="charlaId"
                                                                                                                           value="${a.id}">

                                                                                                                    <div class="form-group label-floating">
                                                                                                                        <label for="charlista"
                                                                                                                               class="control-label">Charlista</label>

                                                                                                                        <g:select
                                                                                                                                id="charlista"
                                                                                                                                name='charlista'
                                                                                                                                class="form-control valid"
                                                                                                                                aria-invalid="false"
                                                                                                                                value="${a.charlista.id}"
                                                                                                                                noSelection="${['null': 'Seleccione...']}"
                                                                                                                                from='${charlistas}'
                                                                                                                                optionKey="id"
                                                                                                                                optionValue="nombre">

                                                                                                                            <span class="material-input"></span>
                                                                                                                        </g:select>

                                                                                                                    </div>

                                                                                                                </div>

                                                                                                                <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                        <label for="tema-m"
                                                                                                                               class="bmd-label-floating">Tema</label>
                                                                                                                        <input type="text"
                                                                                                                               id="tema-m"
                                                                                                                               name="tema"
                                                                                                                               class="form-control"
                                                                                                                               value="${a.tema}"
                                                                                                                               required>
                                                                                                                    </div>
                                                                                                                </div>


                                                                                                                <div class="col-sm-12">
                                                                                                                    <div class="form-group is-empty">
                                                                                                                        <label for="descripcionCharla-m">Descripci&oacute;n charla</label>
                                                                                                                        <textarea
                                                                                                                                id="descripcionCharla-m"
                                                                                                                                class="form-control"
                                                                                                                                name="descripcionCharla"
                                                                                                                                rows="3">${a.descripcionCharla}</textarea>
                                                                                                                        <span class="material-input"></span>
                                                                                                                    </div>
                                                                                                                </div>


                                                                                                                <div class="col-md-6">
                                                                                                                    <div class="form-group label-floating">
                                                                                                                        <label for="aula"
                                                                                                                               class="control-label">Aula</label>

                                                                                                                        <g:select
                                                                                                                                id="aula"
                                                                                                                                name='aula'
                                                                                                                                class="form-control valid"
                                                                                                                                aria-invalid="false"
                                                                                                                                value="${a.aula.id}"
                                                                                                                                noSelection="${['null': 'Seleccione...']}"
                                                                                                                                from='${aulas}'
                                                                                                                                optionKey="id"
                                                                                                                                optionValue="${{
                                                                                                                                    'Aula: ' + it.lugar + ' cantidad personas: ' + it.cantidadPersonas
                                                                                                                                }}">

                                                                                                                            <span class="material-input"></span>
                                                                                                                        </g:select>
                                                                                                                    </div>
                                                                                                                </div>

                                                                                                                <div class="col-md-6">
                                                                                                                    <div class="form-group label-floating">
                                                                                                                        <label for="horario"
                                                                                                                               class="control-label">Horario</label>
                                                                                                                        <g:select
                                                                                                                                id="horario"
                                                                                                                                name='horario'
                                                                                                                                class="form-control valid"
                                                                                                                                aria-invalid="false"
                                                                                                                                value="${a.horario.id}"
                                                                                                                                noSelection="${['null': 'Seleccione...']}"
                                                                                                                                from='${horarios}'
                                                                                                                                optionKey="id"
                                                                                                                                optionValue="value">

                                                                                                                            <span class="material-input"></span>
                                                                                                                        </g:select>

                                                                                                                    </div>

                                                                                                                </div>

                                                                                                                <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                        <label for="audienceLevel-m"
                                                                                                                               class="bmd-label-floating">Nivel audiencia</label>
                                                                                                                        <input type="text"
                                                                                                                               id="audienceLevel-m"
                                                                                                                               name="audienceLevel"
                                                                                                                               class="form-control"
                                                                                                                               value="${a.audienceLevel}"
                                                                                                                               required>
                                                                                                                    </div>
                                                                                                                </div>

                                                                                                                <div class="col-md-6">
                                                                                                                    <div class="form-group">
                                                                                                                        <label for="talkFormat-m"
                                                                                                                               class="bmd-label-floating">Talk Format</label>
                                                                                                                        <input type="text"
                                                                                                                               id="talkFormat-m"
                                                                                                                               name="talkFormat"
                                                                                                                               class="form-control"
                                                                                                                               value="${a.talkFormat}"
                                                                                                                               required>
                                                                                                                    </div>
                                                                                                                </div>
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