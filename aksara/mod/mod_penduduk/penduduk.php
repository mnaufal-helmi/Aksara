<?php
session_start();
if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
    echo "<center>Untuk mengakses modul, Anda harus login <br>";
    echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{

function tampil_error($pesan_error=""){
    echo <<<EOF
    <script type="text/javascript" charset="utf-8">    
    alert('$pesan_error');
    history.go(-1); 
    </script>
    <noscript>Javascript is disabled</noscript>
EOF;
}

function sanitize($text){
    return htmlentities(stripslashes($text));
}

$aksi="mod/mod_penduduk/aksi_penduduk.php";
switch($_GET[act]){

default:
echo "<h2>Penduduk</h2> ";
if($_GET['pesan']=='1'){
echo "<div style='padding:5px;color:green;border:1px solid green;font-size:12px;margin-bottom:5px;background-color:#fbfbfb;'>Data telah berhasil ditambah!</div>";
}
elseif($_GET['pesan']==2){
echo "<div style='padding:5px;color:green;border:1px solid green;font-size:12px;margin-bottom:5px;background-color:#fbfbfb;'>Data telah berhasil diperbaharui!</div>";
}
elseif($_GET['pesan']==3){
echo "<div style='padding:5px;color:red;border:1px solid red;font-size:12px;margin-bottom:5px;background-color:#fbfbfb;'>Data telah berhasil dihapus!</div>";
}
echo "<div style='float:right;font-size:12px;'>
<form method='POST' action='?module=penduduk&act=cari'>
Cari Data <input type='text' name='keyword'> <input type='submit' value='Cari' class='btn btn-round btn-info'>
</form>
</div>";
echo "<input type=button value='Tambah KK' class='btn btn-round btn-warning'
onclick=\"window.location.href='?module=penduduk&act=tambahkk';\"><br><br>
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<thead><tr><th>No</th><th>NOKK</th><th>NIK</th><th>NAMA</th><th>TMPT<br>LHR</th><th>TGL<br>LHR</th><th>JK</th><th>STATUS</th><th>SHDK</th><th class='center'>Aksi</th></tr></thead></tbody>";
//paging
$batas   = 10;
$halaman = $_GET['halaman'];
if(empty($halaman)){
    $posisi  = 0;
    $halaman = 1;
}
// Codingan hapus biasa
else{
    $posisi = ($halaman-1) * $batas;
}
$tampil=mysql_query("SELECT p.*, p.id as ides, k.*, k.id as ikk FROM penduduk p, kk k where k.id=p.id_kk AND k.id_desa='$_SESSION[iddesa]' LIMIT $posisi,$batas");
$no=$posisi + 1;
while ($r=mysql_fetch_array($tampil)){
	$idpen=$r['ides'];
	$idkk=$r['ikk'];
  echo "<tr><td class='center'>$no.</td>
	<td class='center'>".sanitize($r[no_kk])."</td>
	<td class='center'>".sanitize($r[nik])."</td>
      	<td class='center'>".sanitize($r[nama])."</td>
      	<td class='center'>".sanitize($r[tmp_lhr])."</td>
      	<td class='center'>".sanitize($r[tgl_lhr])."</td>
      	<td class='center'>".sanitize(cek('jk',$r[jk]))."</td>
      	<td class='center'>".sanitize(cek('status_kawin',$r[status_kawin]))."</td>
      	<td class='center'>".sanitize(cek('hub_klg',$r[hub_klg]))."</td>

        <td class='center'><a href='?module=penduduk&act=detail&id=$idpen'>Detail</a> |<a href='?module=penduduk&act=editpenduduk&id=$idpen'>Edit</a> | 
        <a href='$aksi?module=penduduk&act=delete&id=$idpen&idkk=$idkk' onclick=\"return confirm('Anda yakin ingin menghapus?')\" >Hapus</a>
        </td></tr>";
  $no++;
}
echo "</tbody></table>";
$tampil2 = mysql_query("SELECT p.*,k.* FROM penduduk p, kk k where k.id=p.id_kk AND k.id_desa='$_SESSION[iddesa]'");
$jmldata = mysql_num_rows($tampil2);
$jmlhal  = ceil($jmldata/$batas);
echo "<div style='font-size:12px;'>Jumlah $jmldata data<br><br>";
if($halaman > 1){
     $prev=$halaman-1;
     echo "<span><a href=$_SERVER[PHP_SELF]?module=penduduk&halaman=$prev><< Prev</a></span> ";
}
else{
     echo "<span style='color:gray;'><< Prev</span> ";
}
     for($i=1;$i<=$jmlhal;$i++)
          if ($i != $halaman){
          echo " <a href=$_SERVER[PHP_SELF]?module=penduduk&halaman=$i>$i</a> ";
     }
else{
     echo " <span style='color:red;'>$i</span> ";
}
if($halaman < $jmlhal){
     $next=$halaman+1;
     echo "<span><a href=$_SERVER[PHP_SELF]?module=penduduk&halaman=$next>Next >> </a></span>";
}
else{
     echo "<span style='color:gray;'>Next >> </span>";
}
echo "</div><br>";
break;

case "cari":
echo "<h2>Cari Penduduk</h2> ";
$keyword = trim($_POST['keyword']);
echo "<div style='float:right;font-size:12px;'>
<form method='POST' action='?module=penduduk&act=cari'>
Cari Data <input type='text' name='keyword' value='$keyword'> <input type='submit' value='Cari' class='btn btn-round btn-info'>
</form>
</div>";
echo "<input type=button value='Tambah Penduduk' class='btn btn-round btn-warning'
onclick=\"window.location.href='?module=penduduk&act=tambahkk';\">
<input type=button value='Kembali' class='btn btn-round btn-info' onclick=\"window.location.href='?module=penduduk';\">
<br><br>";
if(empty($keyword)){
$tampil=mysql_query("SELECT p.*,p.id as ides,k.* FROM penduduk p, kk k where k.id=p.id_kk AND k.id_desa='$_SESSION[iddesa]'");
}
else{
// codingan hapus saat cari
$tampil=mysql_query("SELECT p.*,p.id as ides, k.*, k.id as idkk FROM penduduk p, kk k where k.id=p.id_kk AND k.id_desa='$_SESSION[iddesa]' and (k.no_kk LIKE '%$keyword%' OR p.nik LIKE '%$keyword%' OR p.nama LIKE '%$keyword%' OR p.tmp_lhr LIKE '%$keyword%' OR p.tgl_lhr LIKE '%$keyword%' OR p.jk LIKE '%$keyword%' OR p.gol_drh LIKE '%$keyword%' OR p.agama LIKE '%$keyword%' OR p.status_kawin LIKE '%$keyword%' OR p.pendidikan LIKE '%$keyword%' OR p.pekerjaan LIKE '%$keyword%' OR p.hub_klg LIKE '%$keyword%' OR p.wrg_ngr LIKE '%$keyword%' OR p.ayah LIKE '%$keyword%' OR p.ibu LIKE '%$keyword%' OR p.keberadaan LIKE '%$keyword%' ) ");
}

$jumlah_data = mysql_num_rows($tampil);
echo "<small>Ditemukan sebanyak ".$jumlah_data." data</small><br>";
echo "<table id='example' class='table table-striped responsive-utilities jambo_table'>

<thead><tr><th>No</th><th>NOKK</th><th>NIK</th><th>NAMA</th><th>TEMPAT<br>LAHIR</th><th>TANGGAL<br>LAHIR</th><th>JENIS<br>KELAMIN</th><th>STATUS<br>PERKAWINAN</th><th>HUBUNGAN<br>KELUARGA</th><th class='center'>Aksi</th></tr></thead></tbody>";
$no=1;
while ($r=mysql_fetch_array($tampil)){
	$idpen=$r['ides'];
      $idkk=$r['idkk'];
    echo "<tr><td class='center'>$no.</td>
	<td class='center'>".sanitize($r[no_kk])."</td>
	<td class='center'>".sanitize($r[nik])."</td>
      	<td class='center'>".sanitize($r[nama])."</td>
      	<td class='center'>".sanitize($r[tmp_lhr])."</td>
      	<td class='center'>".sanitize($r[tgl_lhr])."</td>
      	<<td class='center'>".sanitize(cek('jk',$r[jk]))."</td>
      	<td class='center'>".sanitize(cek('status_kawin',$r[status_kawin]))."</td>
      	<td class='center'>".sanitize(cek('hub_klg',$r[hub_klg]))."</td>

    
        <td class='center'><a href='?module=penduduk&act=detail&id=$idpen'>Detail</a>  | <a href='?module=penduduk&act=editpenduduk&id=$idpen'>Edit</a> | 
        <a href='$aksi?module=penduduk&act=delete&id=$idpen&idkk=$idkk' onclick=\"return confirm('Anda yakin ingin menghapus?')\" >Hapus</a>
        </td></tr>";
  $no++;
}
echo "</tbody></table>";
break;
case "detail":
$q = mysql_query("SELECT * FROM penduduk WHERE id='$_GET[id]'");
$r    = mysql_fetch_array($q);
$qq=mysql_query("Select * from kk where id='$r[id_kk]'");
$rr=mysql_fetch_array($qq);
$id=$rr[id];
echo"<input type=button value='Kembali' onclick=\"window.location.href='?module=penduduk';\">

<table id='example' class='table table-striped responsive-utilities jambo_table'>
<tr><td ><h2>DATA KARTU KELUARGA</h2></td><td><div align=right><a href='?module=penduduk&act=editkk&id=$rr[id]'><img src='img/edit.png' title='edit data kk'></a>||<a href='$aksi?module=penduduk&act=deletekk&id=$rr[id]' onclick=\"return confirm('Anda yakin ingin menghapus?')\" ><img src='img/delete.png' title='hapus data kk'></a></td></tr>
<tr><td>NO KK</td><td>:$rr[no_kk]</td></tr>
<tr><td>Alamat</td><td>:$rr[alamat]</td></tr>
<tr><td>RT/RW</td><td>:$rr[rt] / $rr[rw]</td></tr>

</table>
";
$no=1;
echo"<div style='overflow-y:hidden; overflow-x: scroll;'>
<input type=button value='Tambah Penduduk' class='btn btn-round btn-primary' onclick=\"window.location.href='?module=penduduk&act=tambahpenduduk&id=$id';\">
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<thead><tr><th>No</th><th>NIK</th><th>NAMA</th><th>TMPT<br>LHR</th><th>TGL LHR</th><th>NO AKTA</th><th>JK</th><th>GDR</th><th>AGAMA</th><th>STATUS</th><th>SURAT NIKAH<th>PENDIDIKAN</th><th>PEKERJAAN</th><th>SHDK</th><th>KEWARGA<br>NEGARAAN</th><th>NAMA AYAH</th><th>NAMA IBU</th></tr></thead>";
$t=mysql_query("Select * from penduduk where id_kk='$r[id_kk]'");
while($s=mysql_fetch_array($t)){
	echo"<tr><td>$no</td><td>$s[nik]</td><td>$s[nama]</td><td>$s[tmp_lhr]</td><td>$s[tgl_lhr]</td><td>$s[no_akta]</td><td>".cek('jk',$s[jk])."</td><td>".cek('gol_drh',$s[gol_drh])."</td><td>".cek('agama',$s[agama])."</td><td>".cek('status_kawin',$s[status_kawin])."</td><td>$s[surat_nikah]</td><td>".cek('pendidikan',$s[pendidikan])."</td><td>".cek('pekerjaan',$s[pekerjaan])."</td><td>".cek('hub_klg',$s[hub_klg])."</td><td>".cek('wrg_ngr',$s[wrg_ngr])."</td><td>$s[ayah]</td><td>$s[ibu]</td><td>$s[rt]</td><td>$s[rw]</td></tr>";
	$no++;
}
echo"</table></div>";
break;
// Form Tambah penduduk
case "tambahpenduduk":
$id=$_GET[id];
$q=mysql_query("Select * from kk where id='$id'");
$r=mysql_fetch_array($q);
echo "<h2>Tambah Penduduk</h2>
<form method=POST action='$aksi?module=penduduk&act=input' enctype='multipart/form-data' >
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<tr><td>Nomor KK <font color='red'>*</font></td><td>: <input type='text' name='nokk' class='' style='' value='$r[no_kk]' readonly></td></tr>                
<tr><td>NIK <font color='red'>*</font></td><td>: <input type='text' name='nik'  class='' style='' value='' ></td></tr>                
<tr><td>Nama <font color='red'>*</font></td><td>: <input type='text' name='nama' size='20' class='' style='' value='' ></td></tr>                
<tr><td>Tempat Lahir <font color='red'>*</font></td><td>: <input type='text' name='tmp_lhr'  class='' style='' value='' ></td></tr>                
<tr><td>Tanggal Lahir <font color='red'>*</font></td><td>: <input type='text' name='tgl_lhr'   style='' value='' > (Format tahun-bulan-tanggal) Contoh:2015-03-16</td></tr>                
<tr><td>No Akta <font color='red'>*</font></td><td>: <input type='text' name='no_akta'   style='' value='' ></td></tr>                
<tr><td>Jenis Kelamin<font color='red'>*</font></td><td>: ";
$sql_combobox7 = mysql_query("SELECT * FROM jk");
echo "<select name='jk' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox7=mysql_fetch_array($sql_combobox7)){
 echo "<option value='$r_combobox7[id]'>$r_combobox7[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Golongan Darah </td><td>: ";
$sql_combobox8 = mysql_query("SELECT * FROM gol_drh");
echo "<select name='gol_drh' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox8=mysql_fetch_array($sql_combobox8)){
 echo "<option value='$r_combobox8[id]'>$r_combobox8[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Agama </td><td>: ";
$sql_combobox9 = mysql_query("SELECT * FROM agama");
echo "<select name='agama' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox9=mysql_fetch_array($sql_combobox9)){
 echo "<option value='$r_combobox9[id]'>$r_combobox9[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Status kawin <font color='red'>*</font></td><td>: ";
$sql_combobox10 = mysql_query("SELECT * FROM status_kawin");
echo "<select name='status_kawin' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox10=mysql_fetch_array($sql_combobox10)){
 echo "<option value='$r_combobox10[id]'>$r_combobox10[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Surat Nikah <font color='red'>*</font></td><td>: <input type='text' name='surat_nikah'   style='' value='' ></td></tr>   
<tr><td>Pendidikan </td><td>: ";
$sql_combobox11 = mysql_query("SELECT * FROM pendidikan");
echo "<select name='pendidikan' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox11=mysql_fetch_array($sql_combobox11)){
 echo "<option value='$r_combobox11[id]'>$r_combobox11[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Pekerjaan </td><td>: ";
$sql_combobox12 = mysql_query("SELECT * FROM pekerjaan");
echo "<select name='pekerjaan' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox12=mysql_fetch_array($sql_combobox12)){
 echo "<option value='$r_combobox12[id]'>$r_combobox12[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Hubungan Keluarga </td><td>: ";
$sql_combobox13 = mysql_query("SELECT * FROM hub_klg");
echo "<select name='hub_klg' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox13=mysql_fetch_array($sql_combobox13)){
 echo "<option value='$r_combobox13[id]'>$r_combobox13[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Warga Negara </td><td>: ";
$sql_combobox14 = mysql_query("SELECT * FROM wrg_ngr");
echo "<select name='wrg_ngr' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox14=mysql_fetch_array($sql_combobox14)){
 echo "<option value='$r_combobox14[id]'>$r_combobox14[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Ayah </td><td>: <input type='text' name='ayah' size='20' class='' style='' value='' ></td></tr>                
<tr><td>Ibu </td><td>: <input type='text' name='ibu' size='20' class='' style='' value='' ></td></tr>                
<tr><td>Keberadaan </td><td>: ";
$sql_combobox17 = mysql_query("SELECT * FROM keberadaan");
echo "<select name='keberadaan' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox17=mysql_fetch_array($sql_combobox17)){
 echo "<option value='$r_combobox17[id]'>$r_combobox17[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Foto</td><td><input type=file name=fupload4></td></tr>
<tr><td colspan=2><input class='btn btn-primary' type=submit name=submit value=Simpan>
<a href='?module=penduduk' class='btn'>Kembali</a></td></tr>
</table>
</form>";
break;

// Form Edit penduduk 
case "editpenduduk":
$edit = mysql_query("SELECT * FROM penduduk WHERE id='$_GET[id]'");
$r    = mysql_fetch_array($edit);
$num_rows_r = mysql_num_rows($edit);
if(empty($_GET[id])){
    tampil_error('ID tidak ditemukan!');
}
elseif(!is_numeric($_GET[id])){
    tampil_error('ID tidak ditemukan!');
}
elseif($num_rows_r == 0){
    tampil_error('Data tidak ditemukan!');
}
else {
echo "<h2>Edit Penduduk</h2> 
<form method=POST action='$aksi?module=penduduk&act=update' enctype='multipart/form-data' >
<input type=hidden name=id value='$r[id]'>
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<tr><td>NIK <font color='red'>*</font></td><td>: <input type='text' name='nik' size='20' class='' style='' value='".sanitize($r[nik])."' ></td></tr> <tr><td>nama <font color='red'>*</font></td><td>: <input type='text' name='nama' size='20' class='' style='' value='".sanitize($r[nama])."' ></td></tr>                
                
<tr><td>Tempat Lahir <font color='red'>*</font></td><td>: <input type='text' name='tmp_lhr' size='20' class='' style='' value='".sanitize($r[tmp_lhr])."' ></td></tr>                
<tr><td>Tanggal Lahir <font color='red'>*</font></td><td>: <input type='text' name='tgl_lhr' size='20'   style='' value='".sanitize($r[tgl_lhr])."' > (Format tahun-bulan-tanggal)</td></tr>                
<tr><td>No Akta<font color='red'>*</font></td><td>: <input type='text' name='no_akta' size='20'   style='' value='".sanitize($r[no_akta])."' > </td></tr>                
<tr><td>Jenis Kelamin<font color='red'>*</font></td><td>:";
$sql_combobox7 = mysql_query("SELECT * FROM jk");
echo "<select name='jk' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox7=mysql_fetch_array($sql_combobox7)){
 if ($r['jk'] == $r_combobox7['id']){
     echo "<option value='".sanitize($r_combobox7[id])."' selected>".sanitize($r_combobox7[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox7[id])."'>".sanitize($r_combobox7[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>Golongan Darah</td><td>:";
$sql_combobox8 = mysql_query("SELECT * FROM gol_drh");
echo "<select name='gol_drh' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox8=mysql_fetch_array($sql_combobox8)){
 if ($r['gol_drh'] == $r_combobox8['id']){
     echo "<option value='".sanitize($r_combobox8[id])."' selected>".sanitize($r_combobox8[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox8[id])."'>".sanitize($r_combobox8[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>Agama </td><td>:";
$sql_combobox9 = mysql_query("SELECT * FROM agama");
echo "<select name='agama' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox9=mysql_fetch_array($sql_combobox9)){
 if ($r['agama'] == $r_combobox9['id']){
     echo "<option value='".sanitize($r_combobox9[id])."' selected>".sanitize($r_combobox9[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox9[id])."'>".sanitize($r_combobox9[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>Status kawin <font color='red'>*</font></td><td>:";
$sql_combobox10 = mysql_query("SELECT * FROM status_kawin");
echo "<select name='status_kawin' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox10=mysql_fetch_array($sql_combobox10)){
 if ($r['status_kawin'] == $r_combobox10['id']){
     echo "<option value='".sanitize($r_combobox10[id])."' selected>".sanitize($r_combobox10[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox10[id])."'>".sanitize($r_combobox10[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>Surat Nikah <font color='red'>*</font></td><td>: <input type='text' name='surat_nikah'   style='' value='".sanitize($r[surat_nikah])."' ></td></tr>   
<tr><td>Pendidikan </td><td>:";
$sql_combobox11 = mysql_query("SELECT * FROM pendidikan");
echo "<select name='pendidikan' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox11=mysql_fetch_array($sql_combobox11)){
 if ($r['pendidikan'] == $r_combobox11['id']){
     echo "<option value='".sanitize($r_combobox11[id])."' selected>".sanitize($r_combobox11[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox11[id])."'>".sanitize($r_combobox11[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>Pekerjaan </td><td>:";
$sql_combobox12 = mysql_query("SELECT * FROM pekerjaan");
echo "<select name='pekerjaan' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox12=mysql_fetch_array($sql_combobox12)){
 if ($r['pekerjaan'] == $r_combobox12['id']){
     echo "<option value='".sanitize($r_combobox12[id])."' selected>".sanitize($r_combobox12[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox12[id])."'>".sanitize($r_combobox12[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>Hubungan Keluarga</td><td>:";
$sql_combobox13 = mysql_query("SELECT * FROM hub_klg");
echo "<select name='hub_klg' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox13=mysql_fetch_array($sql_combobox13)){
 if ($r['hub_klg'] == $r_combobox13['id']){
     echo "<option value='".sanitize($r_combobox13[id])."' selected>".sanitize($r_combobox13[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox13[id])."'>".sanitize($r_combobox13[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>Warga Negara </td><td>:";
$sql_combobox14 = mysql_query("SELECT * FROM wrg_ngr");
echo "<select name='wrg_ngr' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox14=mysql_fetch_array($sql_combobox14)){
 if ($r['wrg_ngr'] == $r_combobox14['id']){
     echo "<option value='".sanitize($r_combobox14[id])."' selected>".sanitize($r_combobox14[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox14[id])."'>".sanitize($r_combobox14[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>Ayah </td><td>: <input type='text' name='ayah' size='20' class='' style='' value='".sanitize($r[ayah])."' ></td></tr>                
<tr><td>Ibu </td><td>: <input type='text' name='ibu' size='20' class='' style='' value='".sanitize($r[ibu])."' ></td></tr>                
<tr><td>Keberadaan </td><td>:";
$sql_combobox17 = mysql_query("SELECT * FROM keberadaan");
echo "<select name='keberadaan' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox17=mysql_fetch_array($sql_combobox17)){
 if ($r['keberadaan'] == $r_combobox17['id']){
     echo "<option value='".sanitize($r_combobox17[id])."' selected>".sanitize($r_combobox17[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox17[id])."'>".sanitize($r_combobox17[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>Foto</td><td>";
if($r[foto]==''){
	if($r['jk']=='1'){
	echo"
<img src='img/cwo.png' height=350px width=300px>
";	
	}elseif($r['jk']=='2'){
		echo"
<img src='img/cwe.png'  height=350px width=300px>
";
	}
}else{

echo"
<img src='fotopenduduk/medium_$r[foto]' height=350px width=300px>
";
}

echo"
</td></tr>
<tr><td> Ganti Foto</td><td><input type=file name=fupload4></td></tr>
<tr><td colspan=2><input class='btn btn-primary' type=submit value=Update>
<a href='?module=penduduk' class='btn'>Kembali</a></td></tr>
</table>
</form>";
}
break;
case"tambahkk":
echo "<h2>Tambah Kk</h2>
<form method=POST action='$aksi?module=penduduk&act=inputkk'>
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<tr><td>Nomor KK <font color='red'>*</font></td><td>: <input type='text' name='no_kk' size='20' class='' style='' value='' ></td></tr>                
<tr><td>Alamat <font color='red'>*</font></td><td>: <textarea name='alamat' cols='40' rows='5' class='' style='' ></textarea></td></tr>                
              <tr><td>NIK <font color='red'>*</font></td><td>: <input type='text' name='nik'  class='' style='' value='' ></td></tr>
              <tr><td>RT <font color='red'>*</font></td><td>: <input type='text' name='rt' size='20' class='' style='' value='' ></td></tr>
              <tr><td>RW <font color='red'>*</font></td><td>: <input type='text' name='rw' size='20' class='' style='' value='' ></td></tr>                  
<tr><td>Nama <font color='red'>*</font></td><td>: <input type='text' name='nama' size='20' class='' style='' value='' ></td></tr>                
<tr><td>Tempat Lahir <font color='red'>*</font></td><td>: <input type='text' name='tmp_lhr'  class='' style='' value='' ></td></tr>                
<tr><td>Tanggal Lahir <font color='red'>*</font></td><td>: <input type='text' name='tgl_lhr'   style='' value='' > (Format tahun-bulan-tanggal) Contoh:2015-03-16</td></tr>                
<tr><td>No Akta <font color='red'>*</font></td><td>: <input type='text' name='no_akta'   style='' value='' ></td></tr>                
<tr><td>Jenis Kelamin<font color='red'>*</font></td><td>: ";
$sql_combobox7 = mysql_query("SELECT * FROM jk");
echo "<select name='jk' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox7=mysql_fetch_array($sql_combobox7)){
 echo "<option value='$r_combobox7[id]'>$r_combobox7[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Golongan Darah </td><td>: ";
$sql_combobox8 = mysql_query("SELECT * FROM gol_drh");
echo "<select name='gol_drh' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox8=mysql_fetch_array($sql_combobox8)){
 echo "<option value='$r_combobox8[id]'>$r_combobox8[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Agama </td><td>: ";
$sql_combobox9 = mysql_query("SELECT * FROM agama");
echo "<select name='agama' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox9=mysql_fetch_array($sql_combobox9)){
 echo "<option value='$r_combobox9[id]'>$r_combobox9[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Status kawin <font color='red'>*</font></td><td>: ";
$sql_combobox10 = mysql_query("SELECT * FROM status_kawin");
echo "<select name='status_kawin' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox10=mysql_fetch_array($sql_combobox10)){
 echo "<option value='$r_combobox10[id]'>$r_combobox10[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Surat Nikah <font color='red'>*</font></td><td>: <input type='text' name='surat_nikah'   style='' value='' ></td></tr>   
<tr><td>Pendidikan </td><td>: ";
$sql_combobox11 = mysql_query("SELECT * FROM pendidikan");
echo "<select name='pendidikan' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox11=mysql_fetch_array($sql_combobox11)){
 echo "<option value='$r_combobox11[id]'>$r_combobox11[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Pekerjaan </td><td>: ";
$sql_combobox12 = mysql_query("SELECT * FROM pekerjaan");
echo "<select name='pekerjaan' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox12=mysql_fetch_array($sql_combobox12)){
 echo "<option value='$r_combobox12[id]'>$r_combobox12[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Hubungan Keluarga </td><td>: ";
$sql_combobox13 = mysql_query("SELECT * FROM hub_klg");
echo "<select name='hub_klg' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox13=mysql_fetch_array($sql_combobox13)){
 echo "<option value='$r_combobox13[id]'>$r_combobox13[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Warga Negara </td><td>: ";
$sql_combobox14 = mysql_query("SELECT * FROM wrg_ngr");
echo "<select name='wrg_ngr' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox14=mysql_fetch_array($sql_combobox14)){
 echo "<option value='$r_combobox14[id]'>$r_combobox14[nama]</option>";
}
echo "</select></td></tr>
<tr><td>Ayah </td><td>: <input type='text' name='ayah' size='20' class='' style='' value='' ></td></tr>                
<tr><td>Ibu </td><td>: <input type='text' name='ibu' size='20' class='' style='' value='' ></td></tr>                                
<tr><td>Keberadaan </td><td>: ";
$sql_combobox17 = mysql_query("SELECT * FROM keberadaan");
echo "<select name='keberadaan' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox17=mysql_fetch_array($sql_combobox17)){
 echo "<option value='$r_combobox17[id]'>$r_combobox17[nama]</option>";
}
echo "</select></td></tr>
<tr><td colspan=2><input class='btn btn-primary' type=submit name=submit value=Simpan>
<a href='?module=penduduk' class='btn'>Kembali</a></td></tr>
</table>
</form>";
break;
case"editkk":
$edit = mysql_query("SELECT * FROM kk WHERE id='$_GET[id]'");
$r    = mysql_fetch_array($edit);
$num_rows_r = mysql_num_rows($edit);
echo "<h2>Edit Kk</h2> 
<form method=POST action='$aksi?module=penduduk&act=updatekk'  >
<input type=hidden name=id value='$r[id]'>
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<tr><td>Nomor KK <font color='red'>*</font></td><td>: <input type='text' name='no_kk' size='20' class='' style='' value='".sanitize($r[no_kk])."' ></td></tr>                
<tr><td>Alamat <font color='red'>*</font></td><td>: <textarea name='alamat' class='' style='' cols='40' rows='5' >".sanitize($r[alamat])."</textarea></td></tr>                
             
<tr><td colspan=2><input class='btn btn-primary' type=submit value=Update>
<a href='?module=penduduk' class='btn'>Kembali</a></td></tr>
</table>
</form>";
break;
}
}
?>
