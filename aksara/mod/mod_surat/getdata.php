<?php
include"../../config/koneksi.php";
include"../../config/fungsi.php";
if($_GET[mod]=='isi'){
$dataid = json_decode($_GET['id']);
    $query2="SELECT * FROM penduduk WHERE id = '$dataid'";
    $results2 = mysql_query($query2) or die(mysql_error());
    while($row = mysql_fetch_array($results2)) 
    {   
$q=mysql_query("Select * from kk where id='$row[id_kk]'");
$r=mysql_fetch_array($q);
$qq=mysql_query("select * from penduduk where id_kk='$r[id]' and hub_klg='2'");
$rq=mysql_fetch_array($qq);
	$nik = $row[nik];
    $nama = $row[nama]; 
      $tmp_lhr = $row[tmp_lhr].' ,'.indotgl($row[tgl_lhr]);
    $jk = cek('jk',$row[jk]);
	$wrg_ngr = cek('wrg_ngr',$row[wrg_ngr]);
	  $agama = cek('agama',$row[agama]);
    $status_kawin = cek('status_kawin',$row[status_kawin]);
    $pendidikan = cek('pendidikan',$row[pendidikan]);
    $pekerjaan = cek('pekerjaan',$row[pekerjaan]);
    $alamat= $r[alamat];
    $istri= $rq[nama];
      }
$rows = array('nama' => $nama, 'nik' => $nik,'tmp_lhr' => $tmp_lhr,
'jk' =>$jk,'wrg_ngr' =>$wrg_ngr,'agama' =>$agama,'status_kawin' =>$status_kawin,'pendidikan' => $pendidikan,
'pekerjaan' =>$pekerjaan,'alamat' =>$alamat,'istri' =>$istri); 

echo json_encode($rows);
}
?>