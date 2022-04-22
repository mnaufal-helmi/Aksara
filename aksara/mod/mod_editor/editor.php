
<?php
session_start();
require_once "richtexteditor/include_rte.php";
if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
    echo "<center>Untuk mengakses modul, Anda harus login <br>";
    echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{


function sanitize($text){
    return htmlentities(stripslashes($text));
}

$aksi="mod/mod_editor/aksi_editor.php";
switch($_GET[act]){

default:
echo "<h2>Editor Surat Keluar</h2> ";
if($_GET['pesan']=='1'){
echo "<div style='padding:5px;color:green;border:1px solid green;font-size:12px;margin-bottom:5px;background-color:#fbfbfb;'>Data telah berhasil ditambah!</div>";
}
elseif($_GET['pesan']==2){
echo "<div style='padding:5px;color:green;border:1px solid green;font-size:12px;margin-bottom:5px;background-color:#fbfbfb;'>Data telah berhasil diperbaharui!</div>";
}
elseif($_GET['pesan']==3){
echo "<div style='padding:5px;color:red;border:1px solid red;font-size:12px;margin-bottom:5px;background-color:#fbfbfb;'>Data telah berhasil dihapus!</div>";
}

echo"<h3>Setting KOP Surat</h3>
<form method=POST action='mod/mod_editor/aksi_editor2.php' enctype='multipart/form-data' >
<table><tr><td>File KOP surat </td><td> <img src='kop/$_SESSION[kop]' height=80px><input type=file name='fupload4' ></td>
	
	<td colspan=2 align=center><br><input type=submit value='Simpan' class='btn btn-round btn-primary'></tr></table>
</form><br><br>
";




echo "<div style='float:right;font-size:12px;'>
<form method='POST' action='?module=editor&act=cari'>
Cari Data <input type='text' name='keyword'> <input type='submit' value='Cari' class='btn btn-round btn-info'>
</form>
</div>";
echo "<input type=button value='Tambah Surat' class='btn btn-round btn-primary'
onclick=\"window.location.href='tambah_surat.php';\"><br><br>
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<thead><tr><td class='center'>No</td>
<td class='center'>kode</td><td class='center'>nama</td><td class='center'>Aksi</td></tr></thead></tbody>";
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
$tampil=mysql_query("SELECT * FROM jns_sk LIMIT $posisi,$batas");
$no=$posisi + 1;
while ($r=mysql_fetch_array($tampil)){
  echo "<tr><td class='center'>$no.</td>
	<td class='center'>".sanitize($r[kode])."</td>
      	<td class='center'>".sanitize($r[nama])."</td>
    
        <td class='center'><a href='edit_surat.php?id=$r[id]'>Edit</a> | <a href='?module=editor&act=detail&id=$r[id]'>Detail Surat </a>|
        <a href='$aksi?module=editor&act=delete&id=$r[id]' onclick=\"return confirm('Anda yakin ingin menghapus?')\" >Hapus</a>
        </td></tr>";
  $no++;
}
echo "</tbody></table>";
$tampil2 = mysql_query("SELECT * FROM jns_sk");
$jmldata = mysql_num_rows($tampil2);
$jmlhal  = ceil($jmldata/$batas);
echo "<div style='font-size:12px;'>Jumlah $jmldata data<br><br>";
if($halaman > 1){
     $prev=$halaman-1;
     echo "<span><a href=$_SERVER[PHP_SELF]?module=editor&halaman=$prev><< Prev</a></span> ";
}
else{
     echo "<span style='color:gray;'><< Prev</span> ";
}
     for($i=1;$i<=$jmlhal;$i++)
          if ($i != $halaman){
          echo " <a href=$_SERVER[PHP_SELF]?module=editor&halaman=$i>$i</a> ";
     }
else{
     echo " <span style='color:red;'>$i</span> ";
}
if($halaman < $jmlhal){
     $next=$halaman+1;
     echo "<span><a href=$_SERVER[PHP_SELF]?module=editor&halaman=$next>Next >> </a></span>";
}
else{
     echo "<span style='color:gray;'>Next >> </span>";
}
echo "</div><br>";
break;

case "cari":
echo "<h2>Cari Editor</h2> ";
$keyword = trim($_POST['keyword']);
echo "<div style='float:right;font-size:12px;'>
<form method='POST' action='?module=editor&act=cari'>
Cari Data <input type='text' name='keyword' value='$keyword'> <input type='submit' value='Cari' class='btn btn-round btn-danger'>
</form>
</div>";
echo "<input type=button value='Tambah Editor' class='btn btn-round btn-primary' onclick=\"window.location.href='?module=editor&act=tambaheditor';\">
<input type=button value='Kembali' class='btn btn-round btn-warning' onclick=\"window.location.href='?module=editor';\">
<br><br>";
if(empty($keyword)){
$tampil=mysql_query("SELECT * FROM jns_sk");
}
else{
$tampil=mysql_query("SELECT * FROM jns_sk WHERE 
kode LIKE '%$keyword%' OR nama LIKE '%$keyword%' OR template LIKE '%$keyword%'  ");
}

$jumlah_data = mysql_num_rows($tampil);
echo "<small>Ditemukan sebanyak ".$jumlah_data." data</small><br>";
echo "<table id='example' class='table table-striped responsive-utilities jambo_table'>
<thead><tr><td class='center'>No</td>
<td class='center'>kode</td><td class='center'>nama</td><td class='center'>Aksi</td></tr></thead></tbody>";
$no=1;
while ($r=mysql_fetch_array($tampil)){
    echo "<tr><td class='center'>$no.</td>
	<td class='center'>".sanitize($r[kode])."</td>
      	<td class='center'>".sanitize($r[nama])."</td>
     
        <td class='center'><a href='edit_surat.php?id=$r[id]'>Edit</a> | <a href='?module=editor&act=detail&id=$r[id]'>Detail Surat </a>|
        <a href='$aksi?module=editor&act=delete&id=$r[id]' onclick=\"return confirm('Anda yakin ingin menghapus?')\" >Hapus</a>
        </td></tr>";
  $no++;
}
echo "</tbody></table>";
break;

// Form Tambah editor
case "tambaheditor":
echo "<h2>Tambah Editor</h2>
<form method=POST action='mod/mod_editor/save_editor.php'>
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<tr><td>kode <font color='red'>*</font></td><td>: <input type='text' name='kode' size='20' class='' style='' value='' ></td></tr>                
<tr><td>nama <font color='red'>*</font></td><td>: <input type='text' name='nama' size='20' class='' style='' value='' ></td></tr>                
<tr><td>template <font color='red'>*</font></td><td>:";
				// Create Editor instance and use Text property to load content into the RTE.  
                $rte=new RichTextEditor();   
                $rte->Text="Type here"; 
                // Set a unique ID to Editor   
                $rte->ID="template";
				$rte->TempDirectory="rtetemp";
                $rte->MvcInit();   
                // Render Editor 
                echo $rte->GetString(); 
echo "</td></tr>                
<tr><td colspan=2><input class='btn btn-primary' type=submit name=submit value=Simpan>
<a href='?module=editor' class='btn'>Kembali</a></td></tr>
</table>
</form>";
break;

// Form Edit editor 
case "editeditor":
$edit = mysql_query("SELECT * FROM jns_sk WHERE id='$_GET[id]'");
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
echo "<h2>Edit Editor</h2> 
<form method=POST action='$aksi?module=editor&act=update'  >
<input type=hidden name=id value='$r[id]'>
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<tr><td>Kode Surat<font color='red'>*</font></td><td>: <input type='text' name='kode' size='20' class='' style='' value='".sanitize($r[kode])."' ></td></tr>                
<tr><td>Nama Surat<font color='red'>*</font></td><td>: <input type='text' name='nama' size='20' class='' style='' value='".sanitize($r[nama])."' ></td></tr>                
<tr><td>Template <font color='red'>*</font></td><td>: ";
// Create Editor instance and use Text property to load content into the RTE.  
                $rte=new RichTextEditor();   
                $rte->Text="$r[template]"; 
                // Set a unique ID to Editor   
                $rte->ID="template";
				// Set a temporary file location   
                $rte->TempDirectory="rtetemp"; 
                $rte->MvcInit();   
                // Render Editor 
                echo $rte->GetString(); 
echo "</td></tr>      
<tr><td>No Urut Surat <font color='red'>*</font></td><td>: <input type='text' name='no_srt' size='20' class='' style='' value='".sanitize($r[no_srt])."' ></td></tr>                      
<tr><td>Aktif <font color='red'>*</font></td><td>: <select name='aktif'><option value='$r[aktif]'>";
if($r[aktif]==1){
	echo"Aktif";
}else{
	echo"Tidak Aktif";
}

echo"</option>
<option value='1'>Aktif</option>
<option value='2'> Tidak aktif</option>
</select>
</td></tr>                      
<tr><td colspan=2><input class='btn btn-primary' type=submit value=Update>
<a href='?module=editor' class='btn'>Kembali</a></td></tr>
</table>
</form>";
}
break;
case "detail":
echo"<h2>FORM INPUT DETAIL SURAT</h2>
<form method=POST action='$aksi?module=editor&act=detail'  >
<input type=button value='Kembali' onclick=\"window.location.href='?module=editor';\">
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<tr><td>Nama</td><td><input type=hidden name='jns' value='$_GET[id]'><input type=text name=nama></td></tr>
<tr><td>Value</td><td><input type=text name=value></td></tr>
<tr><td><input type=submit name=simpan value=simpan></td></tr>

</table>
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<tr><td>Nama</td><td>Value</td><td>Aksi</td></tr>";
$q=mysql_query("Select * from temp_items where id_jns='$_GET[id]'");
while($r=mysql_fetch_array($q)){
	echo"<tr><td>$r[nama]</td><td>$r[value]</td><td><a href=?module=editor&act=editdetail&id=$r[id]>Edit</a> | <a href='$aksi?module=editor&act=deletedetail&id=$r[id]' onclick=\"return confirm('Anda yakin ingin menghapus?')\" >Hapus</a></td></tr>";
	
}
echo"
</table>
</form>
";
break;
case "editdetail":
$id=$_GET['id'];
$q=mysql_query("Select * from temp_items where id='$id'");
$r=mysql_fetch_array($q);
echo"
<form method=POST action='$aksi?module=editor&act=updatedetail'  >
<input type=button value='Kembali' onclick=\"window.location.href='?module=editor';\">
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<tr><td>Nama</td><td><input type=hidden name=id value=$id><input type=text name=nama value=$r[nama]></td></tr>
<tr><td>Value</td><td><input type=text name=value value=$r[value]></td></tr>
<tr><td><input type=submit name=simpan value=simpan></td></tr>

</table>
</form>";
break;
}
}
?>
