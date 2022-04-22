
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
		break;
		case "agama":
		include"mod/mod_grafik/agama.php";
		break;
		case "goldarah":
		include"mod/mod_grafik/goldarah.php";
		break;
		case "hubkel":
		include"mod/mod_grafik/hubkel.php";
		break;
		case "jenis":
		include"mod/mod_grafik/jenis.php";
		break;
		case "pekerjaan":
		include"mod/mod_grafik/pekerjaan.php";
		break;
		case "pendidikan":
		include"mod/mod_grafik/pendidikan.php";
		break;
		case "statuskawin":
		include"mod/mod_grafik/statuskawin.php";
		break;
		case "sd":
		echo "<h3>Rekap  Penduduk Usia SD </h3>";
		
		
		
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		echo"<form action='?module=grafik&act=carisd' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Pilih RW</td><td>
		<select name=rw><option value=all>-semua-</option>";
		while($lr=mysql_fetch_array($ll)){
			echo"<option value=$lr[erwe]>$lr[erwe]</option>";
		}
		echo"</select>
		</td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl2=$tt[0]-7;
		$tgl3=$tt[0]-12;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");
		if($_POST['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_POST[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where tgl_lhr<='$hsl3' and tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4') and id_kk='$r9[id]'")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
		break;
		case"carisd":
		echo"<a href='mod/mod_laporan/print3.php?g=sd&rw=$_POST[rw]'><img src='img/excel.png'></a>";
		
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		echo"<form action='?module=grafik&act=carisd' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Pilih RW</td><td>
		<select name=rw><option value=all>-semua-</option>";
		while($lr=mysql_fetch_array($ll)){
			echo"<option value=$lr[erwe]>$lr[erwe]</option>";
		}
		echo"</select>
		</td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl2=$tt[0]-7;
		$tgl3=$tt[0]-12;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");
		if($_POST['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_POST[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where tgl_lhr<='$hsl3' and tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4') and id_kk='$r9[id]'")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
		break;
		case "sltp":
		echo "<h3>Rekap  Penduduk Usia SLTP </h3>";
		
		
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		echo"<form action='?module=grafik&act=carisltp' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Pilih RW</td><td>
		<select name=rw><option value=all>-semua-</option>";
		while($lr=mysql_fetch_array($ll)){
			echo"<option value=$lr[erwe]>$lr[erwe]</option>";
		}
		echo"</select>
		</td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl2=$tt[0]-15;
		$tgl3=$tt[0]-12;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");
	if($_POST['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_POST[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and tgl_lhr <='$hsl4' AND tgl_lhr >='$hsl3' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
		
		break;
		case"carisltp":
		echo "<h3>Rekap  Penduduk Usia SLTP </h3>";
		
		echo"<a href='mod/mod_laporan/print3.php?g=sltp&rw=$_POST[rw]'><img src='img/excel.png'></a>";
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		echo"<form action='?module=grafik&act=carisltp' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Pilih RW</td><td>
		<select name=rw><option value=all>-semua-</option>";
		while($lr=mysql_fetch_array($ll)){
			echo"<option value=$lr[erwe]>$lr[erwe]</option>";
		}
		echo"</select>
		</td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl2=$tt[0]-15;
		$tgl3=$tt[0]-12;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");
	if($_POST['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_POST[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and tgl_lhr <='$hsl4' AND tgl_lhr >='$hsl3' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
		break;
		case "slta":
		echo "<h3>Rekap  Penduduk Usia SLTA </h3>";
		
		
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		echo"<form action='?module=grafik&act=carislta' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Pilih RW</td><td>
		<select name=rw><option value=all>-semua-</option>";
		while($lr=mysql_fetch_array($ll)){
			echo"<option value=$lr[erwe]>$lr[erwe]</option>";
		}
		echo"</select>
		</td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl2=$tt[0]-15;
		$tgl3=$tt[0]-18;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");
	if($_POST['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_POST[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
		break;
		case"carislta";
		echo "<h3>Rekap  Penduduk Usia SLTA </h3>";
		
		echo"<a href='mod/mod_laporan/print3.php?g=slta&rw=$_POST[rw]'><img src='img/excel.png'></a>";
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		echo"<form action='?module=grafik&act=carislta' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Pilih RW</td><td>
		<select name=rw><option value=all>-semua-</option>";
		while($lr=mysql_fetch_array($ll)){
			echo"<option value=$lr[erwe]>$lr[erwe]</option>";
		}
		echo"</select>
		</td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl2=$tt[0]-15;
		$tgl3=$tt[0]-18;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");
	if($_POST['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_POST[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
		break;
		case "hak":
		echo "<h3>Rekap  Penduduk Berdasarkan Hak Pilih </h3>";
	
		
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		echo"<form action='?module=grafik&act=carihak' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Pilih RW</td><td>
		<select name=rw><option value=all>-semua-</option>";
		while($lr=mysql_fetch_array($ll)){
			echo"<option value=$lr[erwe]>$lr[erwe]</option>";
		}
		echo"</select>
		</td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl3=$tt[0]-17;
		
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl5=date("$hsl2");
		if($_POST['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_POST[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and tgl_lhr <= '$hsl5' and (keberadaan='1' or keberadaan='4' or status_kawin='2')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
		break;
		case"carihak":
		echo "<h3>Rekap  Penduduk Berdasarkan Hak Pilih </h3>";
	
		echo"<a href='mod/mod_laporan/print3.php?g=hak&rw=$_POST[rw]'><img src='img/excel.png'></a>";
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		echo"<form action='?module=grafik&act=carihak' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Pilih RW</td><td>
		<select name=rw><option value=all>-semua-</option>";
		while($lr=mysql_fetch_array($ll)){
			echo"<option value=$lr[erwe]>$lr[erwe]</option>";
		}
		echo"</select>
		</td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl3=$tt[0]-17;
		
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl5=date("$hsl2");
		
		if($_POST['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_POST[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and tgl_lhr <= '$hsl5' and (keberadaan='1' or keberadaan='4' or status_kawin='2')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
		break;
		case "balita":
		echo "<h3>Rekap  Penduduk BALITA </h3>";
	
		
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		echo"<form action='?module=grafik&act=caribalita' method=POST><table id='example'><tr><td>Pilih RW</td><td>
		<select name=rw><option value=all>-semua-</option>";
		while($lr=mysql_fetch_array($ll)){
			echo"<option value=$lr[erwe]>$lr[erwe]</option>";
		}
		echo"</select>
		</td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl3=$tt[0]-5;
		
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		 $hsl5=date("$hsl2");
		
		if($_POST['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_POST[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and tgl_lhr <= '$hsl5' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
		break;
		case"caribalita":
		echo "<h3>Rekap  Penduduk BALITA </h3>";
	
		echo"<a href='mod/mod_laporan/print3.php?g=balita&rw=$_POST[rw]'><img src='img/excel.png'></a>";
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		echo"<form action='?module=grafik&act=caribalita' method=POST><table id='example' ><tr><td>Pilih RW</td><td>
		<select name=rw><option value=all>-semua-</option>";
		while($lr=mysql_fetch_array($ll)){
			echo"<option value=$lr[erwe]>$lr[erwe]</option>";
		}
		echo"</select>
		</td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl3=$tt[0]-5;
		
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl5=date("$hsl2");
		
		if($_POST['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_POST[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and tgl_lhr >= '$hsl5' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
		break;
		case"miskin":
		echo "<h3>Rekap  Penduduk Miskin </h3>";
	
		
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		echo"<form action='?module=grafik&act=carimiskin' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Pilih RW</td><td>
		<select name=rw><option value=all>-semua-</option>";
		while($lr=mysql_fetch_array($ll)){
			echo"<option value=$lr[erwe]>$lr[erwe]</option>";
		}
		echo"</select>
		</td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl3=$tt[0]-5;
		
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl5=date("$hsl2");
		
		if($_POST['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_POST[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and keberadaan='4'")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
		break;
		case"carimiskin":
		echo "<h3>Rekap  Penduduk Miskin </h3>";
	
		echo"<a href='mod/mod_laporan/print3.php?g=miskin&rw=$_POST[rw]'><img src='img/excel.png'></a>";
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		echo"<form action='?module=grafik&act=carimiskin' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Pilih RW</td><td>
		<select name=rw><option value=all>-semua-</option>";
		while($lr=mysql_fetch_array($ll)){
			echo"<option value=$lr[erwe]>$lr[erwe]</option>";
		}
		echo"</select>
		</td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl3=$tt[0]-5;
		
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl5=date("$hsl2");
		
		if($_POST['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_POST[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and keberadaan='4'")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
		break;
			case "umur":
		echo "<h3>Rekap  Penduduk Per Range Umur</h3>";
		
		
	
		
		echo"<form action='?module=grafik&act=cariumur' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Pilih Range Umur</td><td>
		<select name=range>
		<option value=1>0-4</option>
		<option value=2>5-9</option>
		<option value=3>10-14</option>
		<option value=4>15-19</option>
		<option value=5>20-24</option>
		<option value=6>25-29</option>
		<option value=7>30-34</option>
		<option value=8>35-39</option>
		<option value=9>40-44</option>
		<option value=10>45-49</option>
		<option value=11>50-54</option>
		<option value=12>55-59</option>
		<option value=13>60-64</option>
		<option value=14>65-69</option>
		<option value=15>70-74</option>
		<option value=16>75+</option>
				";
		
		echo"</select>
		</td><td><input type=submit value=cari></td></tr></table></form>";
	
		break;
		case"cariumur";
		echo "<h3>Rekap  Penduduk Per Range Umur </h3>";
		
		echo"<a href='mod/mod_laporan/print3.php?g=umur&range=$_POST[range]'><img src='img/excel.png'></a>";
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		echo"<form action='?module=grafik&act=cariumur' method=POST><table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>Pilih Range Umur</td><td>
		<select name=range>
		<option value=1>0-4</option>
		<option value=2>5-9</option>
		<option value=3>10-14</option>
		<option value=4>15-19</option>
		<option value=5>20-24</option>
		<option value=6>25-29</option>
		<option value=7>30-34</option>
		<option value=8>35-39</option>
		<option value=9>40-44</option>
		<option value=10>45-49</option>
		<option value=11>50-54</option>
		<option value=12>55-59</option>
		<option value=13>60-64</option>
		<option value=14>65-69</option>
		<option value=15>70-74</option>
		<option value=16>75+</option>
				";
		
		echo"</select>
		</td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td></tr>";
		if($_POST[range]==1){
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-15;
		$tgl3=$tt[0]-4;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$tgl1' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
		}elseif($_POST[range]==2){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-5;
		$tgl3=$tt[0]-9;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_POST[range]==3){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-10;
		$tgl3=$tt[0]-14;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_POST[range]==4){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-15;
		$tgl3=$tt[0]-19;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_POST[range]==5){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-20;
		$tgl3=$tt[0]-24;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_POST[range]==6){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-25;
		$tgl3=$tt[0]-29;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_POST[range]==7){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-30;
		$tgl3=$tt[0]-34;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_POST[range]==8){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-35;
		$tgl3=$tt[0]-39;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_POST[range]==9){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-40;
		$tgl3=$tt[0]-44;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_POST[range]==10){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-45;
		$tgl3=$tt[0]-49;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_POST[range]==11){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-50;
		$tgl3=$tt[0]-54;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_POST[range]==12){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-55;
		$tgl3=$tt[0]-59;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_POST[range]==13){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-60;
		$tgl3=$tt[0]-64;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_POST[range]==14){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-65;
		$tgl3=$tt[0]-69;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_POST[range]==15){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-70;
		$tgl3=$tt[0]-74;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_POST[range]==16){
				$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		//$tgl2=$tt[0]-15;
		$tgl2=$tt[0]-75;
		$tgl3=$tt[0]-75;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");

     $q=mysql_query("Select * from penduduk where  tgl_lhr <='$hsl3'  and (keberadaan='1' or keberadaan='4')")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}
			
		}
	echo"</table>";
		break;
		
		
		
		
	}
	
	
	
}
?>