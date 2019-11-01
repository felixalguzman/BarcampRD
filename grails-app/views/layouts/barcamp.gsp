<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <asset:stylesheet href="style.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
          integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <title>Barcamp 2019</title>
</head>

<body>
<header id="header">
    <div class="container-fluid">
        <nav class="main-nav">
            <ul class="main-menu">
                <li><a href="#inicio">Inicio</a></li>
                <li><a href="#aboutUs">Acerca de</a></li>
                <li><a href="#desconferencias">Desconferencias</a></li>
                <li><a href="#charlistas">Charlistas</a></li>
                <li><a href="#patrocinadores">Patrocinadores</a></li>
                <li><a href="#map">Ubicación</a></li>
            </ul>
        </nav>
        <button class="btn btn-sm btn-primary d-lg-none" onclick="$('.main-nav').toggleClass('open')"><i
                class="fas fa-bars"></i></button>
    </div>
</header>
<main id="content">
    <section id="inicio">
        <div class="row m-0 p-0 justify-content-md-center">
            <div class="col-lg-6 col-md-10 order-sm-2 order-md-2 order-lg-1 ">
                <div class="row justify-content-center">
                    <div class="col-xl-8 col-lg-12 ">
                        <div class="informationBarcamp">
                            <img src="img/logo.png">

                            <div class="informationDetails">
                                <p class="date"><span>23 de Noviembre de 2019</span></p>

                                <p>Edificio Padre Arroyo, Pontificia Universidad Católica Madre y Maestra campus
                                Santiago
                                </p>
                            </div>

                            <h3>¿Quieres ser charlista?</h3>
                            <a href="#" class="btn btn-primary">¡Envia tu propuesta!<span
                                    class="icon-arrow-right float-right"></span></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 pr-0 order-sm-1 order-md-1 order-lg-2">
                <div class="slideBarcamp">
                    <div class="socialNav">
                        <a href="#!"><span><i class="fab fa-instagram"></i></span></a>
                        <a href="#!"><span><i class="fab fa-facebook-f"></i></span></a>
                        <a href="#!"><span><i class="fab fa-twitter"></i></span></a>
                        <a href="#!"><i class="fab fa-github"></i></a>
                    </div>

                    <div class="year">
                        <p><span>2019</span></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="aboutUs">
        <div class="container ml-lg-0 pl-lg-0">
            <div class="about-container">
                <div class="container">
                    <div class="title">
                        <h2>Acerca del Barcamp</h2>
                    </div>

                    <div class="row m-0 p-0 mb-5">
                        <div class="col-lg-4 offset-lg-1 ">
                            <h3>¿Qué es barcamp?</h3>

                            <p>BarCamp es una red internacional de "desconferencias" tecnológicas, cuyo contenido es
                            auto-generado por los participantes y su orientación es hacia el desarrollo de
                            Software
                            y tecnología en general.</p>
                        </div>

                        <div class="col-lg-4 offset-lg-1">
                            <h3>¿Quién puede participar?</h3>

                            <p>Cualquier desarrollador de software, profesores y estudiantes de distintas
                            universidades
                            pueden participar, ¡el único requerimiento es tener ganas de aprender más!</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="offset-lg-1 col-lg-3 border-top ">
                            <div class="attainment">
                                <div class="img">
                                    <img src="img/people.png">
                                </div>
                                <span>200+</span>

                                <p><small>Personas por evento</small></p>
                            </div>
                        </div>

                        <div class="col-lg-3 border-top">
                            <div class="attainment">
                                <div class="img">
                                    <img src="img/conferences.png">
                                </div>
                                <span>24</span>

                                <p><small>Desconferencias Simultáneas</small></p>
                            </div>
                        </div>

                        <div class="col-lg-3 border-top">
                            <div class="attainment">
                                <div class="img">
                                    <img src="img/calendar.png">
                                </div>
                                <span>6</span>

                                <p><small>Ediciones Completadas</small></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="desconferencias">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 line">
                    <h2 class="title ml-auto">Desconferencias</h2>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="control-room-tabs">
                        <ul>
                            <li><a id="#sala1">Sala 1</a></li>
                            <li><a id="#sala2">Sala 2</a></li>
                            <li><a id="#sala3">Sala 3</a></li>
                            <li><a id="#sala4">Sala 4</a></li>
                        </ul>
                    </div>

                    <div class="tabs">
                        <div id="sala1" class="tab">
                            <ul>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div id="sala2" class="tab">
                            <ul>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div id="sala3" class="tab">
                            <ul>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div id="sala4" class="tab">
                            <ul>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row justify-content-evenly">
                                        <div class="col-lg-2">
                                            <p class="date">9:00 AM</p>
                                        </div>

                                        <div class="col-lg-9">
                                            <h5>¿Xamarin, la mejor herramienta para el desarrollo de aplicaciones
                                            moviles?</h5>

                                            <p><i>Por: Luis Contreras</i></p>

                                            <p>Charla sobre la herramienta Microsoft Power BI para los interesados
                                            en el mundo de Business Intelligence, Business Analyst.</p>
                                            <a class="bg-primary see-more">Ver más</a>

                                            <div class="body-description">
                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>

                                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
                                                Similique harum delectus voluptates sint vel, quidem voluptatem
                                                vero doloremque magnam illo cum totam laudantium, ratione
                                                quisquam asperiores explicabo voluptatum consectetur iusto.</p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="charlistas">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 line">
                    <h2 class="title">Charlistas</h2>
                </div>
            </div>

            <div class="row mt-5">
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-8">
                    <div class="charlista" style="background-image: url(img/paul.png);">
                        <div class="info">
                            <h5>Paul Jimenez</h5>

                            <p><small>Ux Designer</small></p>

                            <div class="social">
                                <a href="#!"><span><i class="fab fa-instagram"></i></span></a>
                                <a href="#!"><span><i class="fab fa-facebook-f"></i></span></a>
                                <a href="#!"><span><i class="fab fa-twitter"></i></span></a>
                                <a href="#!"><i class="fab fa-github"></i></a>
                            </div>
                            <a href="#" class="more" id="biography">Ver Biografia<span
                                    class="icon-arrow-right"></span></a>
                        </div>

                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-8">
                    <div class="charlista" style="background-image: url(img/paul.png);">
                        <div class="info">
                            <h5>Paul Jimenez</h5>

                            <p><small>Ux Designer</small></p>

                            <div class="social">
                                <a href="#!"><span><i class="fab fa-instagram"></i></span></a>
                                <a href="#!"><span><i class="fab fa-facebook-f"></i></span></a>
                                <a href="#!"><span><i class="fab fa-twitter"></i></span></a>
                                <a href="#!"><i class="fab fa-github"></i></a>
                            </div>
                            <a href="#" class="more">Ver Biografia<span class="icon-arrow-right"></span></a>
                        </div>

                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-8">
                    <div class="charlista" style="background-image: url(img/paul.png);">
                        <div class="info">
                            <h5>Paul Jimenez</h5>

                            <p><small>Ux Designer</small></p>

                            <div class="social">
                                <a href="#!"><span><i class="fab fa-instagram"></i></span></a>
                                <a href="#!"><span><i class="fab fa-facebook-f"></i></span></a>
                                <a href="#!"><span><i class="fab fa-twitter"></i></span></a>
                                <a href="#!"><i class="fab fa-github"></i></a>
                            </div>
                            <a href="#" class="more">Ver Biografia<span class="icon-arrow-right"></span></a>
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-8">
                    <div class="charlista" style="background-image: url(img/paul.png);">
                        <div class="info">
                            <h5>Paul Jimenez</h5>

                            <p><small>Ux Designer</small></p>

                            <div class="social">
                                <a href="#!"><span><i class="fab fa-instagram"></i></span></a>
                                <a href="#!"><span><i class="fab fa-facebook-f"></i></span></a>
                                <a href="#!"><span><i class="fab fa-twitter"></i></span></a>
                                <a href="#!"><i class="fab fa-github"></i></a>
                            </div>
                            <a href="#" class="more">Ver Biografia<span class="icon-arrow-right"></span></a>
                        </div>

                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-8">
                    <div class="charlista" style="background-image: url(img/paul.png);">
                        <div class="info">
                            <h5>Paul Jimenez</h5>

                            <p><small>Ux Designer</small></p>

                            <div class="social">
                                <a href="#!"><span><i class="fab fa-instagram"></i></span></a>
                                <a href="#!"><span><i class="fab fa-facebook-f"></i></span></a>
                                <a href="#!"><span><i class="fab fa-twitter"></i></span></a>
                                <a href="#!"><i class="fab fa-github"></i></a>
                            </div>
                            <a href="#" class="more">Ver Biografia<span class="icon-arrow-right"></span></a>
                        </div>

                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-8">
                    <div class="charlista" style="background-image: url(img/paul.png);">
                        <div class="info">
                            <h5>Paul Jimenez</h5>

                            <p><small>Ux Designer</small></p>

                            <div class="social">
                                <a href="#!"><span><i class="fab fa-instagram"></i></span></a>
                                <a href="#!"><span><i class="fab fa-facebook-f"></i></span></a>
                                <a href="#!"><span><i class="fab fa-twitter"></i></span></a>
                                <a href="#!"><i class="fab fa-github"></i></a>
                            </div>
                            <a href="#" class="more">Ver Biografia<span class="icon-arrow-right"></span></a>
                        </div>

                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-8">
                    <div class="charlista" style="background-image: url(img/paul.png);">
                        <div class="info">
                            <h5>Paul Jimenez</h5>

                            <p><small>Ux Designer</small></p>

                            <div class="social">
                                <a href="#!"><span><i class="fab fa-instagram"></i></span></a>
                                <a href="#!"><span><i class="fab fa-facebook-f"></i></span></a>
                                <a href="#!"><span><i class="fab fa-twitter"></i></span></a>
                                <a href="#!"><i class="fab fa-github"></i></a>
                            </div>
                            <a href="#" class="more">Ver Biografia<span class="icon-arrow-right"></span></a>
                        </div>

                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-8">
                    <div class="charlista" style="background-image: url(img/paul.png);">
                        <div class="info">
                            <h5>Paul Jimenez</h5>

                            <p><small>Ux Designer</small></p>

                            <div class="social">
                                <a href="#!"><span><i class="fab fa-instagram"></i></span></a>
                                <a href="#!"><span><i class="fab fa-facebook-f"></i></span></a>
                                <a href="#!"><span><i class="fab fa-twitter"></i></span></a>
                                <a href="#!"><i class="fab fa-github"></i></a>
                            </div>
                            <a href="#" class="more">Ver Biografia<span class="icon-arrow-right"></span></a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="panel">
        <h2 class="title">Panel</h2>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-8 col-lg-9 pl-xl-5">
                    <h6>“Punto y Coma”</h6>

                    <h3>La Casa-Oficina: Perspectiva de la Industria</h3>
                    <address>Teatro Universitario | 4:30 pm</address>

                    <p>Panel donde invitados especiales estarán discutiendo sobre sus perspectivas sobre la moda del
                    trabajo remoto en la industria del software.</p>
                </div>
            </div>
        </div>
    </section>
    <section id="panelistas">
        <div class="container">
            <h4>Panelistas</h4>

            <div class="row">
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-8">
                    <div class="charlista" style="background-image: url(img/paul.png);">
                        <div class="info">
                            <h5>Paul Jimenez</h5>

                            <p><small>Ux Designer</small></p>

                            <div class="social">
                                <a href="#!"><span><i class="fab fa-instagram"></i></span></a>
                                <a href="#!"><span><i class="fab fa-facebook-f"></i></span></a>
                                <a href="#!"><span><i class="fab fa-twitter"></i></span></a>
                                <a href="#!"><i class="fab fa-github"></i></a>
                            </div>
                            <a href="#" class="more">Ver Biografia<span class="icon-arrow-right"></span></a>
                        </div>

                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-8">
                    <div class="charlista" style="background-image: url(img/paul.png);">
                        <div class="info">
                            <h5>Paul Jimenez</h5>

                            <p><small>Ux Designer</small></p>

                            <div class="social">
                                <a href="#!"><span><i class="fab fa-instagram"></i></span></a>
                                <a href="#!"><span><i class="fab fa-facebook-f"></i></span></a>
                                <a href="#!"><span><i class="fab fa-twitter"></i></span></a>
                                <a href="#!"><i class="fab fa-github"></i></a>
                            </div>
                            <a href="#" class="more">Ver Biografia<span class="icon-arrow-right"></span></a>
                        </div>

                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-8">
                    <div class="charlista" style="background-image: url(img/paul.png);">
                        <div class="info">
                            <h5>Paul Jimenez</h5>

                            <p><small>Ux Designer</small></p>

                            <div class="social">
                                <a href="#!"><span><i class="fab fa-instagram"></i></span></a>
                                <a href="#!"><span><i class="fab fa-facebook-f"></i></span></a>
                                <a href="#!"><span><i class="fab fa-twitter"></i></span></a>
                                <a href="#!"><i class="fab fa-github"></i></a>
                            </div>
                            <a href="#" class="more">Ver Biografia<span class="icon-arrow-right"></span></a>
                        </div>

                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-8">
                    <div class="charlista" style="background-image: url(img/paul.png);">
                        <div class="info">
                            <h5>Paul Jimenez</h5>

                            <p><small>Ux Designer</small></p>

                            <div class="social">
                                <a href="#!"><span><i class="fab fa-instagram"></i></span></a>
                                <a href="#!"><span><i class="fab fa-facebook-f"></i></span></a>
                                <a href="#!"><span><i class="fab fa-twitter"></i></span></a>
                                <a href="#!"><i class="fab fa-github"></i></a>
                            </div>
                            <a href="#" class="more">Ver Biografia<span class="icon-arrow-right"></span></a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="patrocinadores">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 line">
                    <h2 class="title ml-auto">Patrocinadores</h2>
                </div>
            </div>

            <div class="row align-items-center justify-content-center">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/PUCMM.png" class="img-fluid">
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/Cisco.png" class="img-fluid">
                </div>

                <div
                        class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center d-flex align-items-center">
                    <img src="img/patrocinadores/Popular.png" class="img-fluid">
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/Bon.png" class="img-fluid">
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/Jet.png" class="img-fluid">
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/HRB.png" class="img-fluid">
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/Asociacion_cibao.png" class="img-fluid">
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/Coca.png" class="img-fluid">
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/Santo_Domingo.png" class="img-fluid">
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/Fidelium.png" class="img-fluid">
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/Fabril.png" class="img-fluid">
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/Sinergies.png" class="img-fluid">
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/avathar.png" class="img-fluid">
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/Universal.png" class="img-fluid">
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/Pagestead.png" class="img-fluid">
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 d-sm-flex justify-content-sm-center">
                    <img src="img/patrocinadores/Lalin.png" class="img-fluid">
                </div>
            </div>
        </div>
    </section>
    <section id="map">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 line">
                    <h2 class="title">Lugar</h2>
                </div>
            </div>
        </div>
        <img src="img/map.png" class="img-fluid">
    </section>
</main>

<div class="modal-biography">
    <div class="modal-content">
        <div class="modal-header">
            <div class="row">
                <div class="col-lg-5 col-md-6 col-sm-6">
                    <img src="img/paul.png" class="img-fluid">
                </div>

                <div class="col-lg-6 col-md-6 col-sm-6 pt-4">
                    <h5>Alicia Mcarty</h5>

                    <p>Front Developer</p>

                    <div class="social">
                        <a href="#!"><span><i class="fab fa-instagram"></i></span></a>
                        <a href="#!"><span><i class="fab fa-facebook-f"></i></span></a>
                        <a href="#!"><span><i class="fab fa-twitter"></i></span></a>
                        <a href="#!"><i class="fab fa-github"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal-body">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam odio, magnam laborum, porro eaque
            quaerat officiis repellat quae perferendis est exercitationem optio, ratione fugit architecto nam
            accusamus ex aliquam dicta? Deleniti vero quae eius, rerum accusamus odio saepe aliquam praesentium,
            error molestias porro facere, ex iure cum dignissimos! Fuga, maxime?</p>

            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam odio, magnam laborum, porro eaque
            quaerat officiis repellat quae perferendis est exercitationem optio, ratione fugit architecto nam
            accusamus ex aliquam dicta? Deleniti vero quae eius, rerum accusamus odio saepe aliquam praesentium,
            error molestias porro facere, ex iure cum dignissimos! Fuga, maxime?</p>
            <a href="#" class="hide-modal"><span class="icon-arrow-left"></span>Ocultar Biografia</a>
        </div>
    </div>
</div>
<footer id="footer">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-2 col-md-4">
                <a href="#">Ir al evento del 2018</a>
            </div>

            <div class="col-lg-8 col-md-6">
                <p class="mb-0">Copyright © 2018 CISC PUCMM. |. Website by KATIÓN INTERACTIVE</p>
            </div>
        </div>
    </div>
</footer>

<asset:javascript src="core/jquery.min.js"/>

</body>
</html>