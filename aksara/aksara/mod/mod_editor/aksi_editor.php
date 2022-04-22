<?php
session_start();

if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
  include "../../config/koneksi.php";
 
  
  
  $module=$_GET[module];
  $act=$_GET[act];  
  $kode = mysql_real_escape_string($_POST['kode']);
  $nama = mysql_real_escape_string($_POST['nama']);
  $template = mysql_real_escape_string($_POST['template']);

  // Input editor
  if ($module=='editor' AND $act=='input'){
        
            mysql_query("INSERT INTO jns_sk(kode,
					nama,
					template)
                                VALUES('$kode',
					'$nama',
					'$template')");
            header('location:../../media.php?module='.$module.'&pesan=1');
       
     
  }
  
  // Update editor  
  elseif ($module=='editor' AND $act=='update'){ 
      $id = mysql_real_escape_string($_POST['id']);
      
          
             mysql_query("UPDATE jns_sk SET  kode = '$kode',
					nama = '$nama',
					template = '$template',
						no_srt='$_POST[no_srt]',
						aktif='$_POST[aktif]'
                          WHERE id = '$id'");
    
             header('location:../../media.php?module='.$module.'&pesan=2');
  }
 
  // Delete editor  
  elseif ($module=='editor' AND $act=='delete'){
            $id = mysql_real_escape_string($_GET[id]);
      mysql_query("DELETE FROM jns_sk WHERE id = '$id'");
      header('location:../../media.php?module='.$module.'&pesan=3');
            
  }   elseif ($module=='editor' AND $act=='deletedetail'){
            $id = mysql_real_escape_string($_GET[id]);
			  $q=mysql_fetch_array(mysql_query("Select * from temp_items where id='$id'"));
      mysql_query("DELETE FROM temp_items WHERE id = '$id'");
	 
      header('location:../../media.php?module='.$module.'&act=detail&id='.$q[id_jns]);
            
  }  
  
  elseif ($module=='editor' AND $act=='detail'){
            $id = mysql_real_escape_string($_GET[id]);
     mysql_query("INSERT INTO temp_items(id_jns,
					nama,value,desa)
                                VALUES('$_POST[jns]',
					'$_POST[nama]','$_POST[value]','$_SESSION[iddesa]')");
            header('location:../../media.php?module='.$module.'&act=detail&id='.$_POST[jns]);
            
  } 
  elseif ($module=='editor' AND $act=='updatedetail'){
            $id = mysql_real_escape_string($_POST['id']);
      mysql_query("UPDATE temp_items SET  nama = '$_POST[nama]',
					value = '$_POST[value]'                                     
                          WHERE id = '$id'");
    $q=mysql_fetch_array(mysql_query("Select * from temp_items where id='$id'"));
             header('location:../../media.php?module='.$module.'&act=detail&id='.$q[id_jns]);
            
  }
  
  }
?>
