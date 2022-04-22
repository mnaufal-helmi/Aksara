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
		echo "<h3>Rekap  Penduduk </h3>";
		echo"<form action='?module=lappenduduk&act=caripenduduk' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Masukan Nama RW</td><td>
		<input type=text name=rw placeholder='masukan nama RW'>";
		
		
		echo"
		</td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'>
		<tr align=center><td>No</td><td>NIK</td><td>Nama</td>
		<td>Tmp Lahir</td><td>Tgl Lahir</td><td>No Akta</td><td>Jk</td><td>Gol Drh</td>
		<td>Agama</td><td>Status</td><td>Surat Nikah</td><td>Pendidikan</td><td>Pekerjaan</td>
		<td>SHDK</td><td>Kewarganegaraan</td><td>Ibu</td><td>Ayah</td>
		<td>Alamat</td>
		<td>Status</td>
				</tr>
		<tr align=center>
		<td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td>
		<td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td>
		<td>15</td><td>16</td><td>17</td>
		</tr>";
		$no=1;
		
		
     $q=mysql_query("SELECT p.*,p.id as ides,k.* FROM penduduk p, kk k where k.id=p.id_kk AND k.id_desa='$_SESSION[iddesa]'AND (keberadaan='1' or keberadaan='2' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr>
	<td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td>
	<td>$r[tgl_lhr]</td><td>$r[no_akta]</td><td>".cek('jk',$r[jk])."</td><td>".cek('gol_drh',$r[gol_drh])."</td>
	<td>".cek('agama',$r[agama])."</td><td>".cek('status_kawin',$r[status_kawin])."</td><td>$r[surat_nikah]</td><td>".cek('pendidikan',$r[pendidikan])."</td>
	<td>".cek('pekerjaan',$r[pekerjaan])."</td><td>".cek('hub_klg',$r[hub_klg])."</td><td>".cek('wrg_ngr',$r[wrg_ngr])."</td>
	<td>$r[ibu]</td><td>$r[ayah]</td><td>";
		$hk=mysql_query("Select * from kk where id='$r[id_kk]'");
		$hr=mysql_fetch_array($hk);

	echo"$hr[alamat] </td><td>";
	$bg=mysql_query("Select * from keberadaan where id='$r[keberadaan]'");
	$bnm=mysql_fetch_array($bg);

	echo"$bnm[nama]
	</td>
		</tr>";
	 
	$no++;
	}
	echo"</table>";
	break;
	case"caripenduduk":
	echo "<h3>Rekap  Penduduk </h3>";
		include"mod/koneksi.php";
		echo"<a href='mod/mod_laporan/print3.php?g=ependuduk&rw=$_POST[rw]'><img src='img/excel.png'></a>";
		
		
		
		echo"<form action='?module=lappenduduk&act=caripenduduk' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Pilih RW</td><td>
		<input type=text name=rw placeholder='masukan nama rw'>";
		echo"
		</td><td><input type=submit value=cari></td></tr></table></form>";
		
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'>
		<tr align=center><td>No</td><td>NIK</td><td>Nama</td>
		<td>Tmp Lahir</td><td>Tgl Lahir</td><td>No Akta</td><td>Jk</td><td>Gol Drh</td>
		<td>Agama</td><td>Status</td><td>Surat Nikah</td><td>Pendidikan</td><td>Pekerjaan</td>
		<td>Hub Klg</td><td>Kewarganegaraan</td><td>Ibu</td><td>Ayah</td>
		<td>Alamat</td>
		<td>Status</td>
				</tr>
		<tr align=center>
		<td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>6</td><td>7</td>
		<td>8</td><td>9</td><td>10</td><td>11</td><td>12</td><td>13</td><td>14</td>
		<td>15</td><td>16</td><td>17</td>
		</tr>";
		$no=1;
		if($_POST['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw like'%$_POST[rw]%' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
			$qa=mysql_query("Select * from penduduk where id_kk='$r9[id]' and jk='1' and keberadaan !='3'")or die(mysql_error());
			$ra=mysql_num_rows($qa);
			$jumlahlaki=$jumlahlaki+$ra;
			
			$qas=mysql_query("Select * from penduduk where id_kk='$r9[id]' and jk='2' and keberadaan !='3'")or die(mysql_error());
			$ras=mysql_num_rows($qas);
			$jumlahperempuan=$jumlahperempuan+$ras;
		
	
		
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and keberadaan !='3'")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	$kr=mysql_num_rows($q);
	echo"<tr>
	<td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td>
	<td>$r[tgl_lhr]</td><td>$r[no_akta]</td><td>".cek('jk',$r[jk])."</td><td>".cek('gol_drh',$r[gol_drh])."</td>
	<td>".cek('agama',$r[agama])."</td><td>".cek('status_kawin',$r[status_kawin])."</td><td>$r[surat_nikah]</td><td>".cek('pendidikan',$r[pendidikan])."</td>
	<td>".cek('pekerjaan',$r[pekerjaan])."</td><td>".cek('hub_klg',$r[hub_klg])."</td><td>".cek('wrg_ngr',$r[wrg_ngr])."</td>
	<td>$r[ibu]</td><td>$r[ayah]</td><td>";
		$hk=mysql_query("Select * from kk where id='$r[id_kk]'");
		$hr=mysql_fetch_array($hk);

	echo"$hr[alamat] </td><td>";
	$bg=mysql_query("Select * from keberadaan where id='$r[keberadaan]'");
	$bnm=mysql_fetch_array($bg);

	echo"$bnm[nama]
	</td>
		</tr>";
	 
	$no++;}
		}
	echo"</table>";
	echo"Jumlah Laki-laki $jumlahlaki orang<br>";
	echo"Jumlah Perempuan $jumlahperempuan orang";
	break;
	}
}
?>