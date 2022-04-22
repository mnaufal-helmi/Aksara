<?php
session_start();
if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
    echo "<center>Untuk mengakses modul, Anda harus login <br>";
    echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
	include"../../config/koneksi.php";
	switch($_GET[act]){
		default:
		echo "<h3>Rekap  Surat Masuk </h3>";
		
		
		echo"<form method=post action='?module=lapsuratmasuk&act=carimasuk'><table><tr><td>Periode</td><td><input type=txt id='single_cal4' name=tgl1 placeholder='bln/tgl/thn'></td><td>sd</td><td><input type=txt id='single_cal3' name=tgl2 placeholder='bln/tgl/thn'></td><td><input type=submit value=cari></td></tr></table>";
		
		echo "<table id='example' class='table table-striped responsive-utilities jambo_table'>
<thead><tr><td class='center'>No</td>
<td class='center'>Tanggal</td><td class='center'>Nomor surat</td><td class='center'>Tanggal surat</td><td class='center'>Pengirim</td><td class='center'>Isi singkat</td><td class='center'>Keterangan</td></tr></thead></tbody>";
$tampil=mysql_query("SELECT * FROM surtamasuk");
$no=1;
while ($r=mysql_fetch_array($tampil)){
    echo "<tr><td class='center'>$no.</td>
	<td class='center'>$r[tgl]</td>
      	<td class='center'>$r[no_surat]</td>
      	<td class='center'>$r[tanggal_surat]</td>
      	<td class='center'>$r[pengirim]</td>
      	<td class='center'>$r[isi_singkat]</td>
      	<td class='center'>$r[keterangan]</td>
        </tr>";
  $no++;
}
echo "</tbody></table>";
		break;
		case"carimasuk":
		echo "<h3>Rekap  Surat Masuk </h3>";
		
		
		$tgl11=explode("/",$_POST['tgl1']);
		 $tgl1=$tgl11[2]."-".$tgl11[0]."-".$tgl11[1];
		$tgl21=explode("/",$_POST['tgl2']);
		$tgl2=$tgl21[2]."-".$tgl21[0]."-".$tgl21[1];
		echo"<a href='mod/mod_laporan/print3.php?g=srtmsk&tgl1=$tgl1&tgl2=$tgl2'><img src='img/excel.png'></a>";
				echo"<form method=post action='?module=lapsuratmasuk&act=carimasuk'><table><tr><td>Periode</td><td><input type=txt id='single_cal4' name=tgl1 placeholder='bln/tgl/thn'></td><td>sd</td><td><input type=txt id='single_cal3' name=tgl2 placeholder='bln/tgl/thn'></td><td><input type=submit value=cari></td></tr></table>";
		
		echo "<table id='example' class='table table-striped responsive-utilities jambo_table'>
<thead><tr><td class='center'>No</td>
<td class='center'>Tanggal</td><td class='center'>Nomor surat</td><td class='center'>Tanggal surat</td><td class='center'>Pengirim</td><td class='center'>Isi singkat</td><td class='center'>Keterangan</td></tr></thead></tbody>";
$tampil=mysql_query("SELECT * FROM surtamasuk where tgl >= '$tgl1' and tgl <= '$tgl2'");
$no=1;
while ($r=mysql_fetch_array($tampil)){
    echo "<tr><td class='center'>$no.</td>
	<td class='center'>$r[tgl]</td>
      	<td class='center'>$r[no_surat]</td>
      	<td class='center'>$r[tanggal_surat]</td>
      	<td class='center'>$r[pengirim]</td>
      	<td class='center'>$r[isi_singkat]</td>
      	<td class='center'>$r[keterangan]</td>
        </tr>";
  $no++;
}
echo "</tbody></table>";			
		break;
		
		
		}
		}
		?>