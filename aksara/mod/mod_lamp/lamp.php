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
		echo "<h3>Laporan Data Lahir Mati Pindah</h3>";
		
		
		echo"<form method=post action='?module=lapkeluar&act=carikeluar'>
		";
		echo"<table><tr><td>";
		
		echo"</td>";
		echo"<td>Periode</td><td><input type=txt id='single_cal4' name=tgl1 placeholder='bln/tgl/thn'></td><td>sd</td><td><input type=txt id='single_cal3' name=tgl2 placeholder='bln/tgl/thn'></td><td><input type=submit value=cari></td></tr></table></form>";
		echo"<table id='example' class='table table-striped responsive-utilities jambo_table'>
		<tr align=center><td>No</td><td>Jenis Surat</td><td>Nomor Surat</td><td>Nama</td>
		<td>Alamat</td><td>Tanggal Surat</td>
				</tr>
		";
		$no=1;
		
		
     $q=mysql_query("Select DISTINCT(nosrt) as nomor, id_jns ,tglsrt,nik from temp_srt")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr>
	<td>$no</td><td>";
	$qq=mysql_query("Select * from jns_sk where (id='56' or id='57') and aktif='1'");
	$rr=mysql_fetch_array($qq);
	
	echo"$rr[nama]</td><td>$r[nomor]</td><td>";
	if($r[id_jns]==1){
	echo"$r[nik]";
	}else{
		$qt=mysql_query("Select * from penduduk where nik='$r[nik]'");
		$rq=mysql_fetch_array($qt);
		$hk=mysql_query("Select * from kk where id='$rq[id_kk]'");
		$hr=mysql_fetch_array($hk);
		echo"$rq[nama]";
	}
	echo"</td><td>$hr[alamat] </td>
	<td>$r[tglsrt]</td>
	
	</tr>";
	 
	$no++;
	}
	echo"</table>";
		break;
		case"carikeluar":
		echo "<h3>Rekap  Surat Keluar </h3>";
		$jenis=$_POST['jenis'];
		$tgl11=explode("/",$_POST['tgl1']);
		 $tgl1=$tgl11[2]."-".$tgl11[0]."-".$tgl11[1];
		$tgl21=explode("/",$_POST['tgl2']);
		$tgl2=$tgl21[2]."-".$tgl21[0]."-".$tgl21[1];
		echo"<a href='mod/mod_laporan/print3.php?g=srt&tgl1=$tgl1&tgl2=$tgl2'><img src='img/excel.png'></a>";
		echo"<form method=post action='?module=lapkeluar&act=carikeluar'>
		";
		echo"<table><tr><td><select name=jenis><option value='all'>Semua Surat</option>";
		$t=mysql_query("select * from jns_sk");
		while($ty=mysql_fetch_array($t)){
			
			echo"<option value='$ty[id]'>$ty[nama]</option>";
		}
		echo"</select></td>";
		echo"<td>Periode</td><td><input type=txt id='single_cal4' name=tgl1 placeholder='bln/tgl/thn'></td><td>sd</td><td><input type=txt id='single_cal3' name=tgl2 placeholder='bln/tgl/thn'></td><td><input type=submit value=cari></td></tr></table></form>";
	echo"<table id='example' class='table table-striped responsive-utilities jambo_table'>
		<tr align=center><td>No</td><td>Jenis Surat</td><td>Nomor Surat</td><td>Nama</td>
		<td>Alamat</td><td>Tanggal Surat</td>
				</tr>
		";
		$no=1;
		
		if($jenis=='all'){
			 $q=mysql_query("Select DISTINCT(nosrt) as nomor, id_jns ,tglsrt,nik from temp_srt where tglsrt >= '$tgl1' and tglsrt <= '$tgl2' ")or die(mysql_error());
		}else{
			 $q=mysql_query("Select DISTINCT(nosrt) as nomor, id_jns ,tglsrt,nik from temp_srt where tglsrt >= '$tgl1' and tglsrt <= '$tgl2' and (id_jns='56' or id_jns='57')")or die(mysql_error());
		}
    
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr>
	<td>$no</td><td>";
	$qq=mysql_query("Select * from jns_sk where (id='56' or id='57') ");
	$rr=mysql_fetch_array($qq);
	
	echo"$rr[nama]</td><td>$r[nomor]</td><td>";
	if($r[id_jns]==1){
	echo"$r[nik]";
	}else{
		$qt=mysql_query("Select * from penduduk where nik='$r[nik]'");
		$rq=mysql_fetch_array($qt);
		$hk=mysql_query("Select * from kk where id='$rq[id_kk]'");
		$hr=mysql_fetch_array($hk);
		echo"$rq[nama]";
	}
	echo"</td><td>$hr[alamat] </td>
	<td>$r[tglsrt]</td>
	
	</tr>";
	 
	$no++;
	}
	echo"</table>";
		break;
		case"delete":
		$q=mysql_query("delete from temp_srt where nosrt='$_GET[srt]'");
		echo"<script>alert('Data Telah dihapus');window.location.href='?module=lapkeluar';</script>";			
		break;
		
		
		}
		}
		?>