<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <asset:link rel="icon" href="LogoRojo.png" type="image/x-ico"/>
    <title>Admin Login - Barcamp RD</title>

    <asset:stylesheet src="login.css"/>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>

<body>

<div class="container">
    <div class="row">

        <!-- Mixins-->
        <!-- Pen Title-->
        <div class="pen-title">
            <h1>Admin Login</h1>
        </div>

        <div class="container">
            <div class="card"></div>

            <div class="card">
                <h1 class="title"   >Login</h1>

                <form action="/login/authenticate" method="POST" id="loginForm" autocomplete="off">
                    <div class="input-container">
                        <input type="text" id="username" name="username" required="required"/>
                        <label for="Username">Username</label>

                        <div class="bar"></div>
                    </div>

                    <div class="input-container">
                        <input type="password" id="password" name="password" required="required"/>
                        <label for="Password">Password</label>

                        <div class="bar"></div>
                    </div>

                    <div class="button-container">
                        <button><span>Login</span></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $('.toggle').on('click', function () {
            $('.container').stop().addClass('active');
        });

        $('.close').on('click', function () {
            $('.container').stop().removeClass('active');
        });

    });
</script>
</body>
</html>