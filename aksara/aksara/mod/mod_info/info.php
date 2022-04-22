<?php
session_start();
if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
    echo "<center>Untuk mengakses modul, Anda harus login <br>";
    echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{

echo"
  <form method=POST action='mod/mod_info/aksi_info.php' enctype='multipart/form-data' >
	<input type=hidden name=iddesa value='$_SESSION[iddesa]'>
	<h3>Setting Informasi ".dessa()."</h3>
	<table  id='example' class='table table-striped responsive-utilities jambo_table'>
	<tr><td>Nama ".dessa()."</td><td><input type=text name=nmdesa value='$_SESSION[nmdesa]'></td></tr>
	<tr><td>Alamat</td><td><textarea name=alamatdesa>$_SESSION[alamatdesa]</textarea></td></tr>
	<tr><td>Nama ".kpdes()."</td><td><input type=text name=kpldesa value='$_SESSION[kpldesa]'></td></tr>
	<tr><td>NIP ".kpdes()."</td><td><input type=text name=nipkpldesa value='$_SESSION[nipkpldesa]'></td></tr>
	<tr><td>No Telepon </td><td><input type=text name=notelp value='$_SESSION[notelp]'></td></tr>
	<tr><td>Email </td><td><input type=text name=email value='$_SESSION[email]'></td></tr>
	<tr><td>Website </td><td><input type=text name=website value='$_SESSION[website]'></td></tr>
	<tr><td>Logo </td><td> <img src='img/logo/$_SESSION[logo]' height=80px><input type=file name='fupload4' ></td></tr>
	
	<tr><td colspan=2 align=center><br><input type=submit value='Simpan' class='btn btn-round btn-primary'> <input type=reset value='Batal' class='btn btn-round btn-warning' onclick=\"$('#setting').hide(300);\"></td></tr>
	</table>
	</form>";
}
?>