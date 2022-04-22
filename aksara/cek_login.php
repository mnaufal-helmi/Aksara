<?php
include "config/koneksi.php";
function anti_injection($data){
  $filter = mysql_real_escape_string(stripslashes(strip_tags(htmlspecialchars($data,ENT_QUOTES))));
  return $filter;
}

$username = anti_injection($_POST['username']);
$pass     = anti_injection($_POST['password']);

// pastikan username dan password adalah berupa huruf atau angka.
if (!ctype_alnum($username) OR !ctype_alnum($pass)){
  echo "Sekarang loginnya tidak bisa di injeksi lho.";
}
else{
$login=mysql_query("SELECT * FROM users WHERE username='$username' AND password='$pass'");
$ketemu=mysql_num_rows($login);
$r=mysql_fetch_array($login);

// Apabila username dan password ditemukan
if ($ketemu > 0){
  session_start();
  include "timeout.php";
$_SESSION['KCFINDER']=array();
$_SESSION['KCFINDER']['disabled'] = false;
$_SESSION['KCFINDER']['uploadURL'] = "/aksara/logo/";
$_SESSION['KCFINDER']['uploadDir'] = "";
  $_SESSION['namauser']     = $r['username'];
  $_SESSION['namalengkap']  = $r['nama_lengkap'];
  $_SESSION['passuser']     = $r['password'];
  $_SESSION['leveluser']    = $r['level'];
  $_SESSION['iddesa']    = $r['id_desa'];
  $_SESSION['kop']    = $r['banner'];
  $u=mysql_fetch_array(mysql_query("SELECT * FROM kabupaten WHERE id='$r[id_kab]'"));
		$v=mysql_fetch_array(mysql_query("SELECT * FROM kecamatan WHERE id='$r[id_kec]'"));
		$w=mysql_fetch_array(mysql_query("SELECT * FROM desa WHERE id='$r[id_desa]'"));
		$_SESSION['logged']='Y';
		$_SESSION['nmdesa']=$w['nmdesa'];
		$_SESSION['alamatdesa']=$w['alamat'];
		$_SESSION['kpldesa']=$w['kpldesa'];
		$_SESSION['nipkpldesa']=$w['nipkpldesa'];
		$_SESSION['notelp']=$w['no_telp'];
		$_SESSION['email']=$w['email'];
		$_SESSION['website']=$w['website'];
		$_SESSION['idkec']=$t['id_kec'];
		$_SESSION['nmkec']=$v['nama'];
		$_SESSION['idkab']=$t['id_kab'];
		$_SESSION['nmkab']=$u['nama'];
		$_SESSION['logo']=$u['logo'];
		$_SESSION['iduser']=$t['id'];
  
  // session timeout
  $_SESSION[login] = 1;
  timer();

	$sid_lama = session_id();
	
	session_regenerate_id();

	$sid_baru = session_id();


  header('location:media.php?module=home');
}
else{
	?>
  <!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title></title>

    <!-- Bootstrap core CSS -->

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="css/custom.css" rel="stylesheet">
    <link href="css/icheck/flat/green.css" rel="stylesheet">


    <script src="js/jquery.min.js"></script>

    <!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>


<body class="nav-md">

    <div class="container body">

        <div class="main_container">

            <!-- page content -->
            <div class="col-md-12">
                <div class="col-middle">
                    <div class="text-center text-center">
                        <h3 >LOGIN GAGAL</h3>
                      
                        <p>Silahkan cek username dan password anda. Klik <a href="index.php"><input type=button value='disini' class='btn btn-round btn-warning'></a> untuk login</a>
                        </p>
                        <div class="mid_center">
                          
                           
                        </div>
                    </div>
                </div>
            </div>
            <!-- /page content -->

        </div>
        <!-- footer content -->
    </div>

    <div id="custom_notifications" class="custom-notifications dsp_none">
        <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
        </ul>
        <div class="clearfix"></div>
        <div id="notif-group" class="tabbed_notifications"></div>
    </div>

    <script src="js/bootstrap.min.js"></script>

    <!-- chart js -->
    <script src="js/chartjs/chart.min.js"></script>
    <!-- bootstrap progress js -->
    <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
    <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
    <!-- icheck -->
    <script src="js/icheck/icheck.min.js"></script>

    <script src="js/custom.js"></script>

    <!-- /footer content -->
</body>

</html>
  
  
  <?php
}
}
?>
