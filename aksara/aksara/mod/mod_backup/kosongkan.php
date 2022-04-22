 <?
 
 echo"
 
 <div >
                                <div class='box-header'>
                                    <h3 class='box-title'>Kosongkan Table Penduduk</h3>                                    
                                </div>";

?>


<form enctype="multipart/form-data" action="" method="post">
	<table align="left">
	
	<tr><td><input type="submit" onclick="return confirm('Apakah Anda yakin akan menghapus data penduduk seluruhnya?')" name="hapus" value="Hapus Data" /></td>
	</tr>
	</table>
</form>


<?php
if(isset($_POST['hapus'])){
  include "../../config/koneksi.php";
	
	
	mysql_query("TRUNCATE TABLE kk");
	mysql_query("TRUNCATE TABLE penduduk");
		echo "<script type='text/javascript'>alert('Data telah dikosongkan');</script>";
}
?>
<?
echo"
<br><br><br><br><br><br></div>";
?>
	