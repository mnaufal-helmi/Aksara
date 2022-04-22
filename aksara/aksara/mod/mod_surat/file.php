<?php
include"../../config/koneksi.php";
   $a=$_GET['opt1'];
  $q=mysql_query("Select * from jns_sk where id='$a'");
  $r=mysql_fetch_array($q);
 
   $y=date('Y');
  $blnz=date('n');
  if($blnz=='1'){
	  $bln='I';
  }elseif($blnz=='2'){
	  $bln='II';
  }elseif($blnz=='3'){
	  $bln='III';
  }elseif($blnz=='4'){
	  $bln='IV';
  }elseif($blnz=='5'){
	  $bln='V';
  }elseif($blnz=='6'){
	  $bln='VI';
  }elseif($blnz=='7'){
	  $bln='VII';
  }elseif($blnz=='8'){
	  $bln='VIII';
  }elseif($blnz=='9'){
	  $bln='IX';
  }elseif($blnz=='10'){
	  $bln='X';
  }elseif($blnz=='11'){
	  $bln='XI';
  }elseif($blnz=='12'){
	  $bln='XII';
  }
	    $jl=explode("*",$r['kode']);
	   $r2=mysql_num_rows($q);
	   if($r['no_srt']=='0'){
		   
	$kodesx=$jl[0]."1".$jl[2].$bln."-".$y;
	$kodes = str_replace(' ','',$kodesx);
	   }else{
		   $kd=$r['no_srt']+1;
		    $kodes=$jl[0].$kd.$jl[2].$bln."-".$y;	  
		  
	   }
	   if($r[ket]==1){
echo"<form method=POST action='mod/mod_surat/simpan.php'>
<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>
<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td colspan=2><h2>FORM INPUT DATA SURAT</h2></td></tr><input type=hidden name='id_jns' value='$r[id]'><input type=hidden name='nosrt' value='$kodes'>";
$qq=mysql_query("Select * from temp_items where id_jns='$r[id]'");
$n=mysql_num_rows($qq);
$i=1;
while($tt=mysql_fetch_array($qq)){
	if($tt['value']=='no_srt'){
		echo"<tr><td>Nomor Surat</td><td><input type=hidden name='id_temp".$i."' value='$tt[id]'><input type=text name='value".$i."' value='$kodes' readonly></td></tr>"; 
	}else{
echo"<tr><td>$tt[nama]</td><td><input type=hidden name='id_temp".$i."' value='$tt[id]'><input type=text name='value".$i."'></td></tr>"; 
	}
$i++;
}

echo"</table></td><td>";


echo"<table id='example' class='table table-striped responsive-utilities jambo_table'>
		<tr><td colspan=2><h2>FORM DATA PELAPOR</h2></td></tr>
		<tr><td>Nama</td><td><input type=text name=nama id=nama2 readonly></td></tr>
		<tr><td>Tempat,Tgl Lahir</td><td><input type=text name=tmp id=tmp readonly></td></tr>
		<tr><td>Jenis Kelamin</td><td><input type=text name=jns id=jk readonly </td></tr>
		<tr><td>Kewarganegaraan</td><td><input type=text name=wrg id=wrg_ngr readonly></td></tr>
		<tr><td>Agama</td><td><input type=text name=agama id=agama readonly></td></tr>
		<tr><td>Status</td><td><input type=text name=status id=status_kawin readonly></td></tr>
		<tr><td>Pendidikan</td><td><input type=text name=pendidikan id=pendidikan readonly></td></tr>
		<tr><td>Pekerjaan</td><td><input type=text name=pekerjaan id=pekerjaan readonly></td></tr>
		<tr><td>No.KTP/NIK</td><td><input type=text name=nik id=nik2 readonly></td></tr>
		<tr><td>Alamat</td><td><input type=text name=alamat id=alamat2 readonly></td></tr>
		
				</table></td></tr><tr><tr><td colspan=2><input type=hidden name=jm value='$n'><input type=submit value=Simpan class='btn btn-round btn-primary'></td></tr></table>";
				echo"</form>";
	   }  elseif($r[ket]==2){
echo"<form method=POST action='mod/mod_surat/simpan.php'>
<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>
<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td colspan=2><h2>FORM INPUT DATA SURAT</h2></td></tr><input type=hidden name='id_jns' value='$r[id]'><input type=hidden name='nosrt' value='$kodes'>";
$qq=mysql_query("Select * from temp_items where id_jns='$r[id]'");
$n=mysql_num_rows($qq);
$i=1;
while($tt=mysql_fetch_array($qq)){
	if($tt['value']=='no_srt'){
		echo"<tr><td>Nomor Surat</td><td><input type=hidden name='id_temp".$i."' value='$tt[id]'><input type=text name='value".$i."' value='$kodes' readonly></td></tr>"; 
	}else{
echo"<tr><td>$tt[nama]</td><td><input type=hidden name='id_temp".$i."' value='$tt[id]'><input type=text name='value".$i."'></td></tr>"; 
	}
$i++;
}

echo"</table></td><td>";


echo"</td></tr><tr><tr><td colspan=2><input type=hidden name=jm value='$n'><input type=submit value=Simpan class='btn btn-round btn-primary'></td></tr></table>";
				echo"</form>";
	   }
	   
?>
