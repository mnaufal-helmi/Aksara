  <script src="tinymce/tinymce.min.js"></script>
  <script>
            tinymce.init({
  selector: 'textarea',
  height: 500,
  theme: 'modern',
  plugins: [
    'advlist autolink lists link image charmap print preview hr anchor pagebreak',
    'searchreplace wordcount visualblocks visualchars code fullscreen',
    'insertdatetime media nonbreaking save table contextmenu directionality',
    'emoticons template paste textcolor colorpicker textpattern imagetools codesample toc help'
  ],
  toolbar1: 'undo redo | insert | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
  toolbar2: 'print preview media | forecolor backcolor emoticons | codesample help',
  image_advtab: true,
  templates: [
    { title: 'Test template 1', content: 'Test 1' },
    { title: 'Test template 2', content: 'Test 2' }
  ],

 });

            </script>
<?php
include "config/koneksi.php";


include "timeout.php";

if($_SESSION[login]==1){
	if(!cek_login()){
		$_SESSION[login] = 0;
	}
}
if($_SESSION[login]==0){
  header('location:logout.php');
}
else{
if (empty($_SESSION['username']) AND empty($_SESSION['passuser']) AND $_SESSION['login']==0){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=index.php><b>LOGIN</b></a></center>";
}
else{
function sanitize($text){
    return htmlentities(stripslashes($text));
}
$edit = mysql_query("SELECT * FROM jns_sk WHERE id='$_GET[id]'");
$r    = mysql_fetch_array($edit);
$num_rows_r = mysql_num_rows($edit);

if(isset($_POST['submit'])){
    $id = mysql_real_escape_string($_POST['id']);
    
    $kode = mysql_real_escape_string($_POST['kode']);
    $nama = mysql_real_escape_string($_POST['nama']);
    $template = mysql_real_escape_string($_POST['editor1']);
    mysql_query("UPDATE jns_sk SET  kode = '$kode',
                    nama = '$nama',
					template = '$template',
					no_srt='$_POST[no_srt]',
					aktif='$_POST[aktif]',
					status='$_POST[status]',
					ket='$_POST[ket]'
                    WHERE id = '$id'");
    
    header('location:media.php?module=editor&pesan=2');
}
echo "
<link href='css/bootstrap.min.css' rel='stylesheet'>
<link href='css/surat.css' rel='stylesheet'>
<div class='container'>
<div class='nav_title' style='order: 0;'>
 <a href='media.php?module=home' class='site_title'><img src='logo.png'  height='90%'> <span>AKSARA</span></a>
</div>
<div class='surat'>
<h2>Edit Surat</h2>
<form method=POST action=''>
<input type=hidden name=id value='$r[id]'>
<table class='table responsive-utilities'>
<tr><td>Kode Surat<font color='red'>*</font><br/><input type='text' name='kode' size='20' class='' style='' value='".sanitize($r[kode])."' ></td></tr>                
<tr><td>Nama Surat<font color='red'>*</font><br/><input type='text' name='nama' size='20' class='' style='' value='".sanitize($r[nama])."' ></td></tr>                
<tr><td>Template <font color='red'>*</font><br/>
 <textarea name='editor1' id='editor1' rows='10' cols='80'>
               $r[template]
            </textarea>";
				
echo "</td></tr>      
<tr><td>No Urut Surat <font color='red'>*</font><br/><input type='text' name='no_srt' size='20' class='' style='' value='".sanitize($r[no_srt])."' ></td></tr>                      
<tr><td>Aktif <font color='red'>*</font><br/><select name='aktif'><option value='$r[aktif]'>";
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
<tr><td>Tampilkan KOP Surat<font color='red'>*</font><br/><select name='status'><option value='$r[status]'>";
if($r[status]==1){
	echo"Aktif";
}else{
	echo"Tidak Aktif";
}

echo"</option>
<option value='1'>Aktif</option>
<option value='2'> Tidak aktif</option>
</select>
</td></tr> 
<tr><td>Jenis Surat<font color='red'>*</font><br/><select name='ket'><option value='$r[ket]'>";
if($r[ket]==1){
	echo"Surat Pelayanan";
}elseif($r[ket]==2){
	echo"Surat Dinas";
}else{
	echo"-";
}

echo"</option>
<option value='1'>Surat Pelayanan</option>
<option value='2'> Surat Dinas</option>
</select>
</td></tr>                      
<tr><td colspan=2><input class='btn btn-primary' name='submit' type=submit value=Update>
<a href='media.php?module=editor' class='btn'>Kembali</a></td></tr>
</table>
</form>
</div>
</div>
";
}
}
?>
