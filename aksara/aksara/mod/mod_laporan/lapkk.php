<?php
session_start();
if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
    echo "<center>Untuk mengakses modul, Anda harus login <br>";
    echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
	include"../../config/koneksi.php";
	include"../../config/fungsi.php";
	switch($_GET[act]){
		default:
		echo "<h3>Laporan Biodata Keluarga</h3>";
		
		
		
		echo"<form action='?module=lapkk&act=caripenduduk' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Masukan No KK</td><td>
		<input type=text name=kk placeholder='masukan no kartu keluarga'>";
		
		
		echo"
		</td><td><input type=submit value=cari></td></tr></table></form>";
		
	break;
	case"caripenduduk":
	
	$q=mysql_query("Select * from kk where no_kk='$_POST[kk]'");
	$r=mysql_fetch_array($q);
	$q2=mysql_query("select * from penduduk where id_kk='$r[id]'");
	$q6=mysql_query("select * from penduduk where id_kk='$r[id]' and hub_klg='1'");
	$r6=mysql_fetch_array($q6);
	echo"
<div align=center><h3>BIODATA KELUARGA</h3></div>
<table >
<tr><td>Nomor Kartu Keluarga</td><td>: $r[no_kk]</td></tr>
<tr><td>Kepala Keluarga</td><td>: $r6[nama]</td></tr>
<tr><td>Alamat</td><td>: $r[alamat]</td></tr>
<tr><td>RT/RW</td><td>: $r[rt]/$r[rw]</td></tr>
</table>
<table  border=1 class='table '>
<tr><td >NO</td><td>NIK</td><td>NAMA LENGKAP</td><td>JNS KELAMIN</td><td>TEMPAT & TGL LAHIR</td><td>DRH</td><td>AGAMA</td><td>STATKAWIN</td><td>HUBKELUARGA</td><td>PENDIDIKAN TERAKHIR</td></tr>
";
$no=1;
WHILE($r2=mysql_fetch_array($q2)){
echo"
<tr><td>$no</td>
<td>$r2[nik]</td>
<td>$r2[nama]</td>
<td>".cek('jk',$r2[jk])."</td>
<td>$r2[tmp_lhr], ".indotgl($r2[tgl_lhr])."</td>
<td>".cek('gol_drh',$r2[gol_drh])."</td>
<td>".cek('agama',$r2[agama])."</td>
<td>".cek('status_kawin',$r2[status_kawin])."</td>
<td>".cek('hub_klg',$r2[hub_klg])."</td>
<td>".cek('pendidikan',$r2[pendidikan])."</td>
</tr>";
$no++;
}
echo"
</table>
<br>
<table border=1 cellpadding='12' >
<tr><td>NO</td><td>PEKERJAAN</td><td>NAMA IBU</td><td>NAMA AYAH</td></tr>";
$q3=mysql_query("select * from penduduk where id_kk='$r[id]'");
$noz=1;
WHILE($r3=mysql_fetch_array($q3)){
echo"
<tr><td>$noz</td>
<td>".cek('pekerjaan',$r3[pekerjaan])."</td>
<td>$r3[ibu]</td>
<td>$r3[ayah]</td>

</tr>";
$noz++;
}
echo"
</table>
";
$dg=date("Y-m-d");
$tanggal=sundatgl($dg);
echo"
<table align=right>
<tr><td>$_SESSION[nmdesa],$tanggal</td></tr>
<tr><td>".kpdes()." $_SESSION[nmdesa]</td></tr>
<tr><td><br><br><br><br></td></tr>

<tr><td>$_SESSION[kpldesa]</td></tr>
<tr><td>$_SESSION[nipkpldesa]</td></tr>
</table><br><br><br><br><br><br><br><br>
";
	break;
	}
}
?>