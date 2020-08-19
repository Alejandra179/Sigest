<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>SIGEST</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">

    <style>
        #myVideo{
            position: fixed;
            right: 0;
            bottom: 0;
            min-width: 100%;
            min-height: 100%;
        }
        
        .card {
            background-color: rgba(229, 228, 255, 0.2);
        }
        .md-form label {
            color: #474B4E;
        }
        h6 {
            line-height: 1.7;
        }
        
        html,
        body,
        header,
        .view {
          height: 100%;
        }

        @media (min-width: 560px) and (max-width: 740px) {
          html,
          body,
          header,
          .view {
            height: 650px;
          }
        }

        @media (min-width: 800px) and (max-width: 850px) {
          html,
          body,
          header,
          .view  {
            height: 650px;
          }
        }

        .card {
            margin-top: 30px;
            /*margin-bottom: -45px;*/

        }

        .md-form input[type=text]:focus:not([readonly]),
        .md-form input[type=password]:focus:not([readonly]) {
            border-bottom: 1px solid #8EDEF8;
            box-shadow: 0 1px 0 0 #8EDEF8;
        }
        .md-form input[type=text]:focus:not([readonly])+label,
        .md-form input[type=password]:focus:not([readonly])+label {
            color: #8EDEF8;
        }  

    </style>

</head>

<body>
<video autoplay muted loop id="myVideo">
  <source src="video/Black - 13495.mp4" type="video/mp4">
</video>
   
    <header>

        <!--Intro Section-->
        <section class="view intro-2">
          <div class="d-flex justify-content-center align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-6 col-md-10 col-sm-12 mx-auto mt-5">

                        <!--Form with header-->
                        <form action="login/login.php" method="POST" class="card wow fadeIn" data-wow-delay="0.3s">
                            <div class="card-body">

                                <!--Header-->
                                <div class="form-header" style="background-color: #0cbaba;background-image: linear-gradient(315deg, #0cbaba 0%, #380036 74%);">
                                    <h3>Sigest</h3>
                                </div>

                                <!--Body-->
                                <div class="md-form">
                                    <i class="fa fa-user prefix  #8EDEF8-text"></i>
                                    <input type="text" id="orangeForm-name" type="color:black" class="form-control" name="usuario">
                                    <label for="orangeForm-name">Usuario</label>
                                </div>
                                

                                <div class="md-form">
                                    <i class="fa fa-lock prefix  #8EDEF8-text"></i>
                                    <input type="password" id="orangeForm-pass" class="form-control" name="password">
                                    <label for="orangeForm-pass">Contraseña</label>
                                </div>

                                <div class="text-center">
                                    <button class="btn btn-lg" style="background-color: #0cbaba;background-image: linear-gradient(315deg, #0cbaba 0%, #380036 74%)" type="submit">Ingresar</button>
                                </div>

                            </div>
                        </form>
                        <!--/Form with header-->

                    </div>
                </div>
            </div>
          </div>
        </section>

    </header>
    <!--Main Navigation-->


    <!--  SCRIPTS  -->
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <script>
        new WOW().init();
    </script>
</body>
</html>
