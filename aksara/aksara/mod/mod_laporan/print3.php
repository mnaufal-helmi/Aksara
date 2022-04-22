<?
include"../../config/koneksi.php";
include"../../config/fungsi.php";
session_start();
$g=$_GET['g'];
	header("Content-type: application/vnd.ms-excell");
	header("Expires: 0");
	header("Cache-Control:  must-revalidate, post-check=0, pre-check=0");
	header("Content-Disposition: attachment;Filename=rekap.xls");
if($g=="ependuduk"){
			       echo "<h3>Rekap  Penduduk </h3>";
			       echo "<h3>$_GET[rw]</h3>";
			
		echo"<table border=1>
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
		if($_GET['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw like'%$_GET[rw]%' and id_desa='$_SESSION[iddesa]'");
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
	<td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td>
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
    }
	else if($g == "sd"){
            echo "<h3>Rekap  Penduduk Usia SD </h3>";
			
		echo"<table border=1><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl2=$tt[0]-7;
		$tgl3=$tt[0]-12;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");
		if($_GET['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_GET[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where tgl_lhr<='$hsl3' and tgl_lhr >='$hsl4' and keberadaan='1' and id_kk='$r9[id]'")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
	}
	else if($g == "sltp"){
       echo "<h3>Rekap  Penduduk Usia SLTP </h3>";
				echo"<table border=1><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl2=$tt[0]-15;
		$tgl3=$tt[0]-12;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");
	if($_GET['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_GET[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and tgl_lhr <='$hsl4' AND tgl_lhr >='$hsl3' and keberadaan='1'")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
    }
	else if($g == "slta"){
        echo "<h3>Rekap  Penduduk Usia SLTA </h3>";
				echo"<table border=1><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl2=$tt[0]-15;
		$tgl3=$tt[0]-18;
		$hsl1=$tgl2."-".$tt[1]."-".$tt[2];
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl3=date("$hsl1");
		$hsl4=date("$hsl2");
	if($_GET['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_GET[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and tgl_lhr <='$hsl3' AND tgl_lhr >='$hsl4' and keberadaan='1'")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
    }
	
	else if($g == "hak"){
         echo "<h3>Rekap  Penduduk Berdasarkan Hak Pilih </h3>";
		echo"<table border=1><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
		$no=1;
		$tgl1=date("Y-m-d");
		$tt=explode("-",$tgl1);
		$tgl3=$tt[0]-17;
		
		$hsl2=$tgl3."-".$tt[1]."-".$tt[2];
		$hsl5=date("$hsl2");
		if($_GET['rw']=='all'){
		$q9=mysql_query("select * from kk where id_desa='$_SESSION[iddesa]'");
		}else{
		$q9=mysql_query("select * from kk where rw='$_GET[rw]' and id_desa='$_SESSION[iddesa]'");
		}
		while($r9=mysql_fetch_array($q9)){
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and tgl_lhr <= '$hsl5' and keberadaan='1'")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
    }
	else if($g == "balita"){
		echo "<h3>Rekap  Penduduk BALITA </h3>";
	
		
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		
		echo"<table border=1><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
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
     $q=mysql_query("Select * from penduduk where id_kk='$r9[id]' and tgl_lhr >= '$hsl5' and keberadaan='1'")or die(mysql_error());
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr><td>$no</td><td>$r[nik]</td><td>$r[nama]</td><td>$r[tmp_lhr]</td><td>$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$r9[alamat] RW.$r9[rw]/RT.$r9[rt]</td></tr>";
	 
	$no++;
		}}
	echo"</table>";
	}
	else if($g == "miskin"){
		echo "<h3>Rekap  Penduduk Miskin </h3>";
	
		
		$ll=mysql_query("select distinct(rw) as erwe from kk where id_desa='$_SESSION[iddesa]'");
		
		
		echo"<table border=1><tr><td>No</td><td>NIK</td><td>Nama</td><td>Tmp Lahir</td><td>Tgl Lahir</td><td>Ayah</td><td>Ibu</td><td>Alamat</td></tr>";
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
	}
	else if($g == "srt"){
		echo "<h3>Rekap  Surat Keluar </h3>";
				
		echo"<table border=1>
		<tr align=center><td>No</td><td>Jenis Surat</td><td>Nomor Surat</td><td>Nama</td>
		<td>alamat</td><td>Tanggal Surat</td>
				</tr>
		";
		$no=1;
		$tgl1=$_GET['tgl1'];
		$tgl2=$_GET['tgl2'];
		if($tgl1=='' and $tgl2=''){
     $q=mysql_query("Select DISTINCT(nosrt) as nomor, id_jns ,tglsrt,nik from temp_srt")or die(mysql_error());
		}else{
      $q=mysql_query("Select DISTINCT(nosrt) as nomor, id_jns ,tglsrt,nik from temp_srt where tglsrt >= '$tgl1' and tglsrt <= '$tgl2' ")or die(mysql_error());
		}
	while($r=mysql_fetch_array($q)){
	 	
	echo"<tr>
	<td>$no</td><td>";
	$qq=mysql_query("Select * from jns_sk where id='$r[id_jns]'");
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
	echo"</td><td>$hr[alamat] RW.$hr[rw]/RT.$hr[rt]</td>
	<td>$r[tglsrt]</td>
	
	
	
	</tr>";
	 
	$no++;
	}
	echo"</table>";
	}
	else if($g == "srtmsk"){
		echo "<h3>Rekap  Surat Masuk </h3>";
				
		echo"<table border=1>
<thead><tr><td class='center'>No</td>
<td class='center'>Tanggal</td><td class='center'>Nomor surat</td><td class='center'>Tanggal surat</td><td class='center'>Pengirim</td><td class='center'>Isi singkat</td><td class='center'>Keterangan</td></tr></thead></tbody>";
	
		
		$tgl1=$_GET['tgl1'];
		$tgl2=$_GET['tgl2'];
		if($tgl1=='' and $tgl2=''){
     $q=mysql_query("SELECT * FROM surtamasuk");
		}else{
      $q=mysql_query("SELECT * FROM surtamasuk where tgl >= '$tgl1' and tgl <= '$tgl2'");
		}
	$no=1;
while ($r=mysql_fetch_array($q)){
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
	}
	else if($g == "umur"){
		echo "<h3>Rekap  Penduduk Per Range Umur </h3>";
		
		
		
		echo"<table border=1 id='example' class='table table-striped responsive-utilities jambo_table'>
		<tr><td align=center><b>No</td><td align=center><b>NIK</td><td align=center><b>Nama</td><td align=center><b>Jenis Kelamin</td><td align=center><b>Tmp Lahir</td><td align=center><b>Tgl Lahir</td><td align=center><b>Ayah</td><td align=center><b>Ibu</td><td align=center><b>Alamat</td></tr>";
		if($_GET[range]==1){
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
	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
		}elseif($_GET[range]==2){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_GET[range]==3){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_GET[range]==4){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_GET[range]==5){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_GET[range]==6){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_GET[range]==7){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_GET[range]==8){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_GET[range]==9){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_GET[range]==10){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_GET[range]==11){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_GET[range]==12){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_GET[range]==13){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_GET[range]==14){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_GET[range]==15){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}elseif($_GET[range]==16){
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
	 	 	$kk=mysql_fetch_array(mysql_query("Select * from kk where id='$r[id_kk]'"));
	echo"<tr><td>$no</td><td>'$r[nik]</td><td>$r[nama]</td><td>".cek('jk',$r[jk])."</td><td>$r[tmp_lhr]</td><td>'$r[tgl_lhr]</td><td>$r[ayah]</td><td>$r[ibu]</td><td>$kk[alamat] RT.$kk[rt]/ RW. $kk[rw]</td></tr>";
	 
	$no++;
		}
			
		}
	echo"</table>";
	}

?>