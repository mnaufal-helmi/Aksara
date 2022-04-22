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

$aksi="mod/mod_suratmasuk/aksi_suratmasuk.php";
switch($_GET[act]){

default:
echo "<h2>Surat masuk</h2> ";
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
<form method='POST' action='?module=suratmasuk&act=cari'>
Cari Data <input type='text' name='keyword'> <input type='submit' value='Cari' class='btn btn-round btn-info'>
</form>
</div>";
echo "<input type=button value='Tambah Surat masuk' class='btn btn-round btn-primary'
onclick=\"window.location.href='?module=suratmasuk&act=tambahsuratmasuk';\"><br><br>
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<thead><tr><td class='center'>No</td>
<td class='center'>Tanggal</td><td class='center'>Nomor surat</td><td class='center'>Tanggal surat</td><td class='center'>Pengirim</td><td class='center'>Isi singkat</td><td class='center'>Keterangan</td><td class='center'>Aksi</td></tr></thead></tbody>";
//paging
$batas   = 10;
$halaman = $_GET['halaman'];
if(empty($halaman)){
    $posisi  = 0;
    $halaman = 1;
}
else{
    $posisi = ($halaman-1) * $batas;
}
$tampil=mysql_query("SELECT * FROM surtamasuk LIMIT $posisi,$batas");
$no=$posisi + 1;
while ($r=mysql_fetch_array($tampil)){
  echo "<tr><td class='center'>$no.</td>
	<td class='center'>".sanitize($r[tgl])."</td>
      	<td class='center'>".sanitize($r[no_surat])."</td>
      	<td class='center'>".sanitize($r[tanggal_surat])."</td>
      	<td class='center'>".sanitize($r[pengirim])."</td>
      	<td class='center'>".sanitize(strip_tags($r[isi_singkat]))."</td>
      	<td class='center'>".sanitize($r[keterangan])."</td>
        <td class='center'><a href='?module=suratmasuk&act=editsuratmasuk&id=$r[id]'>Edit</a> | 
        <a href='$aksi?module=suratmasuk&act=delete&id=$r[id]' onclick=\"return confirm('Anda yakin ingin menghapus?')\" >Hapus</a>
        </td></tr>";
  $no++;
}
echo "</tbody></table>";
$tampil2 = mysql_query("SELECT * FROM surtamasuk");
$jmldata = mysql_num_rows($tampil2);
$jmlhal  = ceil($jmldata/$batas);
echo "<div style='font-size:12px;'>Jumlah $jmldata data<br><br>";
if($halaman > 1){
     $prev=$halaman-1;
     echo "<span><a href=$_SERVER[PHP_SELF]?module=suratmasuk&halaman=$prev><< Prev</a></span> ";
}
else{
     echo "<span style='color:gray;'><< Prev</span> ";
}
     for($i=1;$i<=$jmlhal;$i++)
          if ($i != $halaman){
          echo " <a href=$_SERVER[PHP_SELF]?module=suratmasuk&halaman=$i>$i</a> ";
     }
else{
     echo " <span style='color:red;'>$i</span> ";
}
if($halaman < $jmlhal){
     $next=$halaman+1;
     echo "<span><a href=$_SERVER[PHP_SELF]?module=suratmasuk&halaman=$next>Next >> </a></span>";
}
else{
     echo "<span style='color:gray;'>Next >> </span>";
}
echo "</div><br>";
break;

case "cari":
echo "<h2>Cari Surat masuk</h2> ";
$keyword = trim($_POST['keyword']);
echo "<div style='float:right;font-size:12px;'>
<form method='POST' action='?module=suratmasuk&act=cari'>
Cari Data <input type='text' name='keyword' value='$keyword'> <input type='submit' value='Cari' class='btn btn-round btn-info'>
</form>
</div>";
echo "<input type=button value='Tambah Surat masuk' class='btn btn-round btn-primary' onclick=\"window.location.href='?module=suratmasuk&act=tambahsuratmasuk';\">
<input type=button value='Kembali' class='btn btn-round btn-warning' onclick=\"window.location.href='?module=suratmasuk';\">
<br><br>";
if(empty($keyword)){
$tampil=mysql_query("SELECT * FROM surtamasuk");
}
else{
$tampil=mysql_query("SELECT * FROM surtamasuk WHERE 
tgl LIKE '%$keyword%' OR no_surat LIKE '%$keyword%' OR tanggal_surat LIKE '%$keyword%' OR pengirim LIKE '%$keyword%' OR isi_singkat LIKE '%$keyword%' OR keterangan LIKE '%$keyword%'  ");
}

$jumlah_data = mysql_num_rows($tampil);
echo "<small>Ditemukan sebanyak ".$jumlah_data." data</small><br>";
echo "<table id='example' class='table table-striped responsive-utilities jambo_table'>
<thead><tr><td class='center'>No</td>
<td class='center'>Tanggal</td><td class='center'>Nomor surat</td><td class='center'>Tanggal surat</td><td class='center'>Pengirim</td><td class='center'>Isi singkat</td><td class='center'>Keterangan</td><td class='center'>Aksi</td></tr></thead></tbody>";
$no=1;
while ($r=mysql_fetch_array($tampil)){
    echo "<tr><td class='center'>$no.</td>
	<td class='center'>".sanitize($r[tgl])."</td>
      	<td class='center'>".sanitize($r[no_surat])."</td>
      	<td class='center'>".sanitize($r[tanggal_surat])."</td>
      	<td class='center'>".sanitize($r[pengirim])."</td>
      	<td class='center'>".sanitize(strip_tags($r[isi_singkat]))."</td>
      	<td class='center'>".sanitize($r[keterangan])."</td>
        <td class='center'><a href='?module=suratmasuk&act=editsuratmasuk&id=$r[id]'>Edit</a> | 
        <a href='$aksi?module=suratmasuk&act=delete&id=$r[id]' onclick=\"return confirm('Anda yakin ingin menghapus?')\" >Hapus</a>
        </td></tr>";
  $no++;
}
echo "</tbody></table>";
break;

// Form Tambah suratmasuk
case "tambahsuratmasuk":
echo "<h2>Tambah Suratmasuk</h2>
<form method=POST action='$aksi?module=suratmasuk&act=input'  >
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<tr><td>Tanggal <font color='red'>*</font></td><td>: <input type='text' name='tgl' size='20' style='' id='single_cal4' value='' ></td></tr>                
<tr><td>Nomor surat <font color='red'>*</font></td><td>: <input type='text' name='no_surat' size='20' class='' style='' value='' ></td></tr>                
<tr><td>Tanggal surat <font color='red'>*</font></td><td>: <input type='text' name='tanggal_surat' size='20' class='' id='single_cal3' style='' value='' ></td></tr>                
<tr><td>Pengirim <font color='red'>*</font></td><td>: <input type='text' name='pengirim' size='20' class='' style='' value='' ></td></tr>                
<tr><td>Isi singkat <font color='red'>*</font></td><td>: <textarea name='isi_singkat' cols='40' rows='5' id='loko' style='' ></textarea></td></tr>                
<tr><td>Keterangan <font color='red'>*</font></td><td>: <textarea name='keterangan' cols='40' rows='5' class='ckeditor' style='' ></textarea></td></tr>                
<tr><td colspan=2><input class='btn btn-primary' type=submit name=submit value=Simpan>
<a href='?module=suratmasuk' class='btn'>Kembali</a></td></tr>
</table>
</form>";
break;

// Form Edit suratmasuk 
case "editsuratmasuk":
$edit = mysql_query("SELECT * FROM surtamasuk WHERE id='$_GET[id]'");
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
echo "<h2>Edit Suratmasuk</h2> 
<form method=POST action='$aksi?module=suratmasuk&act=update'  >
<input type=hidden name=id value='$r[id]'>
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<tr><td>Tanggal <font color='red'>*</font></td><td>: <input type='text' name='tgl1' size='20' class='' style='' value='".sanitize($r[tgl])."' ></td></tr>                
<tr><td>Nomor surat <font color='red'>*</font></td><td>: <input type='text' name='no_surat' size='20' class='' style='' value='".sanitize($r[no_surat])."' ></td></tr>                
<tr><td>Tanggal surat <font color='red'>*</font></td><td>: <input type='text' name='tanggal_surat' size='20' class='' style='' value='".sanitize($r[tanggal_surat])."' ></td></tr>                
<tr><td>Pengirim <font color='red'>*</font></td><td>: <input type='text' name='pengirim' size='20' class='' style='' value='".sanitize($r[pengirim])."' ></td></tr>                
<tr><td>Isi singkat <font color='red'>*</font></td><td>: <textarea name='isi_singkat' id='loko' style='' cols='40' rows='5' >".sanitize($r[isi_singkat])."</textarea></td></tr>                
<tr><td>Keterangan <font color='red'>*</font></td><td>: <textarea name='keterangan' class='ckeditor' style='' cols='40' rows='5' >".sanitize($r[keterangan])."</textarea></td></tr>                
<tr><td colspan=2><input class='btn btn-primary' type=submit value=Update>
<a href='?module=suratmasuk' class='btn'>Kembali</a></td></tr>
</table>
</form>";
}
break;

}
}
?>
