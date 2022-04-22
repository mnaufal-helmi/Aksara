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
if(isset($_POST['submit'])){
        $kode = mysql_real_escape_string($_POST['kode']);
        $nama = mysql_real_escape_string($_POST['nama']);
        $template = mysql_real_escape_string($_POST['editor1']);
        mysql_query("INSERT INTO jns_sk(kode,
					nama,
					template)
                                VALUES('$kode',
					'$nama',
					'$template')");
            header('location:media.php?module=editor&pesan=1');
}
echo "
<link href='css/bootstrap.min.css' rel='stylesheet'>
<link href='css/surat.css' rel='stylesheet'>
<div class='container'>
<div class='nav_title' style='order: 0;'>
 <a href='media.php?module=home' class='site_title'><img src='logo.png'  height='90%'> <span>AKSARA</span></a>
</div>
<div class='surat'>
<h2>Tambah Surat</h2>
<form method=POST>
<table class='table responsive-utilities'>
<tr><td>kode <font color='red'>*</font><br/><input type='text' name='kode' size='20' class='' style='' value='' ></td></tr>                
<tr><td>nama <font color='red'>*</font><br/><input type='text' name='nama' size='20' class='' style='' value='' ></td></tr>                
<tr><td>template <font color='red'>*</font><br/> <textarea name='editor1' id='editor1' rows='10' cols='80'>
               $r[template]
            </textarea>";
echo "</td></tr>                
<tr><td colspan=2><input class='btn btn-primary' type=submit name=submit value=Simpan>
<a href='media.php?module=editor' class='btn'>Kembali</a></td></tr>
</table>
</form>
</div>
</div>
";
}
}
 ?>  
  