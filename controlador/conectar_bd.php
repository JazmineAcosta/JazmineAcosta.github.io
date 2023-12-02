<!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />

  <title>Facturador Virtual</title>
  <meta content="" name="description" />
  <meta content="" name="keywords" />

  <!-- Favicons -->
  <link href="librerias/assets/img/E-Billing.png" rel="icon" />
  <link href="librerias/assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect" />
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet" />

  <!-- Vendor CSS Files -->
  <link href="librerias/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <link href="librerias/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
  <link href="librerias/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
  <link href="librerias/assets/vendor/quill/quill.snow.css" rel="stylesheet" />
  <link href="librerias/assets/vendor/quill/quill.bubble.css" rel="stylesheet" />
  <link href="librerias/assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
  <link href="librerias/assets/vendor/simple-datatables/style.css" rel="stylesheet" />

  <!-- Template Main CSS File -->
  <link href="librerias/assets/css/style.css" rel="stylesheet" />

  <!--Importar scripts de javascript conectar base de datos-->
  <script src="librerias/assets/pryn2auth/js/jquery171.js" type="text/javascript"></script>
  <script src="librerias/assets/pryn2auth/js/jquery.validate.js" type="text/javascript"></script>
  <script src="librerias/assets/pryn2auth/js/jquery.alerts.js" type="text/javascript"></script>
</head>

<body>
  <?php
  $conexio;
  function conectar_bd()
  {
    global $conexion;
    //Definir datos de conexion con el servidor MySQL
    $elServer = 'localhost: 3307';
    $elUsr = 'root';
    $elPw = '';
    $laBd = 'prueba';

    //Conectar
    $conexion = mysqli_connect(
      $elServer,
      $elUsr,
      $elPw,
      $laBd
    ) /* or die (mysqli_error())*/;
    $conexion->set_charset('utf8');

    //Seleccionar la BD a utilizar
    mysqli_select_db($conexion, $laBd /*or die (mysqli_error())*/);

    if (mysqli_connect_errno()) {
      echo 'No se pudo conectar a la base de datos : ' .
        mysqli_connect_error();
    }
  }
  ?>

  <!-- Vendor JS Files -->
  <script src="librerias/assets/vendor/apexcharts/apexcharts.min.js" type="text/javascript"></script>
  <script src="librerias/assets/vendor/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
  <script src="librerias/assets/vendor/chart.js/chart.umd.js" type="text/javascript"></script>
  <script src="librerias/assets/vendor/echarts/echarts.min.js" type="text/javascript"></script>
  <script src="librerias/assets/vendor/quill/quill.min.js" type="text/javascript"></script>
  <script src="librerias/assets/vendor/simple-datatables/simple-datatables.js" type="text/javascript"></script>
  <script src="librerias/assets/vendor/tinymce/tinymce.min.js" type="text/javascript"></script>
  <script src="librerias/assets/vendor/php-email-form/validate.js" type="text/javascript"></script>

  <!-- Template Main JS File -->
  <script src="librerias/assets/js/main.js" type="text/javascript"></script>
</body>

</html>