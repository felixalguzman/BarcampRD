<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <asset:link rel="icon" href="LogoRojo.png" type="image/x-ico"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Admin BarcampRD</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">

    <!-- CSS Files -->
    <asset:stylesheet src="material-dashboard.css"/>
    <g:pageProperty name="page.css"/>
</head>

<body class="">
<div class="wrapper ">
    <div class="sidebar" data-color="danger" data-background-color="white">
        <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
        <div class="logo">
            <a href="https://barcamp.org.do/" class="simple-text logo-normal">
                Barcamp RD
            </a>
        </div>
        <div class="sidebar-wrapper">
            <ul class="nav">
                <li id="li_registros" class="nav-item">
                    <a id="a_registro" class="nav-link" href="/admin/">
                        <i class="material-icons">content_paste</i>
                        <p>Registros</p>
                    </a>
                </li>
                <li id="li_charlas" class="nav-item">
                    <a class="nav-link" href="/admin/charlas">
                        <i class="material-icons">mic</i>
                        <p>Charlas</p>
                    </a>
                </li>
                <li id="li_aulas" class="nav-item">
                    <a class="nav-link" href="/admin/aulas">
                        <i class="material-icons">room</i>
                        <p>Aulas</p>
                    </a>
                </li>
                <li id="li_horarios" class="nav-item">
                    <a class="nav-link" href="/admin/horarios">
                        <i class="material-icons">calendar_today</i>
                        <p>Horarios</p>
                    </a>
                </li>
                <!-- your sidebar here -->
            </ul>
        </div>
    </div>
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
            <div class="container-fluid">
                <div class="navbar-wrapper">
                    <g:pageProperty name="page.titulo"/>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="/logout">
                                <i class="material-icons">power_settings_new</i> Logout
                            </a>
                        </li>
                        <!-- your navbar here -->
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->

        <g:pageProperty name="page.cont"/>


        <footer class="footer">
            <div class="container-fluid">
                <nav class="float-left">
                    <ul>
                        <li>
                            <!--Contenido-->
                        </li>
                    </ul>
                </nav>
                <div class="copyright float-right">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>, made with <i class="material-icons">favorite</i> by CISC, PUCMM, Santiago.
                </div>
                <!-- your footer here -->
            </div>
        </footer>
    </div>
</div>
<!--   Core JS Files   -->
<asset:javascript src="core/jquery.min.js"/>
<asset:javascript src="core/popper.min.js"/>
<asset:javascript src="core/bootstrap-material-design.min.js"/>
<asset:javascript src="plugins/perfect-scrollbar.jquery.min.js"/>
<script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
<!--  Google Maps Plugin    -->
%{--
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
--}%
<!--  Notifications Plugin    -->
<asset:javascript src="plugins/bootstrap-notify.js"/>
<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
<asset:javascript src="material-dashboard.min.js?v=2.1.0"/>
<g:pageProperty name="page.js"/>

</body>

</html>