<?php
session_start();
if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
 include "../../config/koneksi.php";
  $tgl=date("Y-m-d");
$id_jns=$_POST['id_jns'];
  $jm=$_POST['jm'];
  $nik=$_POST['nik'];
$nosrt=$_POST['nosrt'];
for ($i=1; $i<=$jm; $i++)
{
	 $id_temp=$_POST['id_temp'.$i];
$value=$_POST['value'.$i];
$q=mysql_query("insert into temp_srt(id_jns,nik,nosrt,id_temp,value,tglsrt) values('$id_jns','$nik','$nosrt','$id_temp','$value','$tgl')")or die(mysql_error());
}
if($id_jns=='3'){
	$q1=mysql_query("update penduduk set keberadaan='2' where nik='$nik'");
}elseif($id_jns=='2'){
	$q3=mysql_query("update penduduk set keberadaan='3' where nik='$nik'");
}
$qq=mysql_query("Select * from jns_sk where id='$id_jns'");
$rr=mysql_fetch_array($qq);
$jumlah=$rr['no_srt']+1;
$qa=mysql_query("update jns_sk set no_srt='$jumlah' where id='$id_jns'");
 header('location:../../media.php?module=surat&act=preview&no='.$nosrt.'&jns='.$id_jns);
}
?>