 <?
 
 echo"
 
 <div >
                                <div class='box-header'>
                                    <h3 class='box-title'>Recovery Database</h3>                                    
                                </div>";

?>


<form enctype="multipart/form-data" action="" method="post">
	<table align="left">
	<tr><td>File Backup Database (*.sql) berada di folder backup di c://xampp/htdocs/aksara/backup/ <input type="file" name="datafile" size="30" id="gambar" /></td></tr>
	<tr><td><input type="submit" onclick="return confirm('Apakah Anda yakin akan restore database?')" name="restore" value="Restore Database" /></td>
	</tr>
	</table>
</form>


<?php
if(isset($_POST['restore'])){
	include"koneksi.php";
	
	$nama_file=$_FILES['datafile']['name'];
	$ukuran=$_FILES['datafile']['size'];
	
	
	if ($nama_file=="")
	{
		echo "Fatal Error";
	}else{
		
		$uploaddir='restore/';
		$alamatfile=$uploaddir.$nama_file;

		
		if (move_uploaded_file($_FILES['datafile']['tmp_name'],$alamatfile))
		{
			
			$filename = 'restore/'.$nama_file.'';
			
			
			$templine = '';
			
			$lines = file($filename);
			
			foreach ($lines as $line)
			{
				// Skip it if it's a comment
				if (substr($line, 0, 2) == '--' || $line == '')
					continue;
			 
				// Add this line to the current segment
				$templine .= $line;
				// If it has a semicolon at the end, it's the end of the query
				if (substr(trim($line), -1, 1) == ';')
				{
					// Perform the query
					mysql_query($templine) or print('Error performing query \'<strong>' . $templine . '\': ' . mysql_error() . '<br /><br />');
					// Reset temp variable to empty
					$templine = '';
				}
			}
			echo "<center>Berhasil Restore Database, silahkan di cek.</center>";
		
		}else{
			
			echo "Proses upload gagal, kode error = " . $_FILES['location']['error'];
		}	
	}

}else{
	unset($_POST['restore']);
}
?>
<?
echo"
<br><br><br><br><br><br></div>";
?>
	