<?php
// Bagian Home
session_start();
include"config/koneksi.php";
if ($_GET['module']=='home'){
  if ($_SESSION['leveluser']=='admin'){
  echo "<div class='row tile_count'>";
  ?>
                    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Jumlah Penduduk</span>
                            <div class="count">
							<?php
							$qg=mysql_query("Select * from kk where id_desa='$_SESSION[iddesa]'");
							while($er=mysql_fetch_array($qg)){
								$q=mysql_query("select count(id) as jml from penduduk where id_kk='$er[id]'");
							$r=mysql_fetch_array($q);
							$total=$total+$r[jml];
								
							}
							if($total==0){
							echo"0";
							}else{
							echo"$total";
							}
							?></div>
                           
                        </div>
                    </div>
                    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Jumlah KK</span>
                            <div class="count red"><?php
							$qg1=mysql_query("Select count(id) as jmlkk from kk where id_desa='$_SESSION[iddesa]'");
							$er1=mysql_fetch_array($qg1);
							$total1=$er1[jmlkk];
							
							if($total1==0){
							echo"0";
							}else{
							echo"<blink>$total1";
							}
							?></div>
                           
                        </div>
                    </div>
                    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Jumlah Laki-laki</span>
                            <div class="count blue"><?php
              $qg1=mysql_query("Select * from kk where id_desa='$_SESSION[iddesa]'");
              $total1=0;
							while($er1=mysql_fetch_array($qg1)){
								$q1=mysql_query("select count(id) as jml from penduduk where id_kk='$er1[id]' and jk='1'");
							$r1=mysql_fetch_array($q1);
							$total1=$total1+$r1[jml];
								
							}
							if($total1==0){
							echo"0";
							}else{
							echo"$total1";
							}
							?></div>
                           
                        </div>
                    </div>
                    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Jumlah Perempuan</span>
                            <div class="count yellow"><?php
							$qg2=mysql_query("Select * from kk where id_desa='$_SESSION[iddesa]'");
							while($er2=mysql_fetch_array($qg2)){
								$q2=mysql_query("select count(id) as jml from penduduk where id_kk='$er2[id]' and jk='2'");
							$r2=mysql_fetch_array($q2);
							$total2=$total2+$r2[jml];
								
							}
							if($total2==0){
							echo"0";
							}else{
							echo"$total2";
							}
							?></div>
                           
                        </div>
                    </div>
                    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Jumlah Surat Keluar</span>
                            <div class="count purple"><?php
							$no=0;
							 $qy=mysql_query("Select DISTINCT(nosrt) as nomor, id_jns ,tglsrt,nik from temp_srt")or die(mysql_error());
	while($ry=mysql_fetch_array($qy)){
	 	
	
	
	 
	$no++;
	}
	$jumlahdata=$no;
							echo"$jumlahdata";?></div>
                          
                        </div>
                    </div>
                    <div class="animated flipInY col-md-2 col-sm-4 col-xs-4 tile_stats_count">
                        <div class="left"></div>
                        <div class="right">
                            <span class="count_top"><i class="fa fa-user"></i> Jumlah Surat Masuk</span>
                            <div class="count"><?php
							$q4=mysql_query("select count(id) as jml from surtamasuk ");
							$r4=mysql_fetch_array($q4);
							echo"$r4[jml]";
							?></div>
                           
                        </div>
                    </div>

                </div>
                <!-- /top tiles -->

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="dashboard_graph">

                            <div class="row x_title">
                                <div class="col-md-6">
                                    <h3></small></h3>
                                </div>
                               
                            </div>
 <div class="col-md-5 col-sm-5 col-xs-12 bg-white">
                            <div class="x_panel tile fixed_height_320 overflow_hidden">
                            <div class="x_title">
                                <h2>Profil <?php echo "".dessa()."";?></h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">

                                <table class="" style="width:100%">
                                    
                                    <tr>
                                        <td>
                                           <?php echo"<img src=img/logo/$_SESSION[logo] width='150px' height='150px' style='margin-bottom:75px;'>";?>
                                        </td>
                                        <td>
										<?php
										echo"
                                            <table  id='example' class='table table-striped responsive-utilities jambo_table'>
	<tr><td>Nama ".dessa()."</td><td>$_SESSION[nmdesa]</td></tr>
	<tr><td>Alamat</td><td>$_SESSION[alamatdesa]</td></tr>
	<tr><td>Nama ".kpdes()."</td><td>$_SESSION[kpldesa]</td></tr>
	<tr><td>NIP ".kpdes()."</td><td>$_SESSION[nipkpldesa]</td></tr>
	<tr><td>No Telepon </td><td>$_SESSION[notelp]</td></tr>
	<tr><td>Email </td><td>$_SESSION[email]</td></tr>
	<tr><td>Website </td><td>$_SESSION[website]</td></tr>
	
	
	
	</table>";?>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>

                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <?php include"mod/mod_grafik/dashboard.php";?>
                            </div>
                            

                            <div class="clearfix"></div>
                        </div>
                    </div>

                </div>
                <br />

                <div class="row">


                   

                  


                    
					<?php
echo"
                </div>";
      
}
}

// Bagian User
elseif ($_GET['module']=='penduduk'){
  if ($_SESSION['leveluser']=='admin'){
    include "mod/mod_penduduk/penduduk.php";
  }
}// Bagian User
elseif ($_GET['module']=='surat'){
  if ($_SESSION['leveluser']=='admin'){
    include "mod/mod_surat/surat.php";
  }
}
elseif ($_GET['module']=='editor'){
  if ($_SESSION['leveluser']=='admin'){
    include "mod/mod_editor/editor.php";
  }
}

elseif ($_GET['module']=='suratmasuk'){
  if ($_SESSION['leveluser']=='admin'){
    include "mod/mod_suratmasuk/suratmasuk.php";
  }
}
elseif ($_GET['module']=='info'){
  if ($_SESSION['leveluser']=='admin'){
    include "mod/mod_info/info.php";
  }
}
elseif ($_GET['module']=='grafik'){
  if ($_SESSION['leveluser']=='admin'){
    include "mod/mod_grafik/grafik.php";
  }
}
elseif ($_GET['module']=='lappenduduk'){
  if ($_SESSION['leveluser']=='admin'){
    include "mod/mod_laporan/lappenduduk.php";
  }
}elseif ($_GET['module']=='lapkk'){
  if ($_SESSION['leveluser']=='admin'){
    include "mod/mod_laporan/lapkk.php";
  }
}
elseif ($_GET['module']=='lapkeluar'){
  if ($_SESSION['leveluser']=='admin'){
    include "mod/mod_laporan/lapsuratkeluar.php";
  }
}
elseif ($_GET['module']=='lapsuratmasuk'){
  if ($_SESSION['leveluser']=='admin'){
    include "mod/mod_laporan/lapsuratmasuk.php";
  }
}
elseif ($_GET['module']=='import'){
  if ($_SESSION['leveluser']=='admin'){
    include "mod/mod_import/import.php";
  }
}elseif ($_GET['module']=='lamp'){
  if ($_SESSION['leveluser']=='admin'){
    include "mod/mod_lamp/lamp.php";
  }
}
elseif ($_GET['module']=='saveimport'){
  if ($_SESSION['leveluser']=='admin'){
    include "mod/mod_import/saveimport.php";
  }
}
elseif ($_GET['module']=='backup'){
  if ($_SESSION['leveluser']=='admin'){
    include "mod/mod_import/backup.php";
  }
}



// Apabila modul tidak ditemukan
else{
  echo "<p><b>MODUL BELUM LENGKAP</b></p>";
}
?>
