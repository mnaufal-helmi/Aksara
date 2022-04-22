<?php
session_start();
if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
  include "../../config/koneksi.php";
  include "../../config/form_validation.php";
  }
  
	   function UploadFilegambar4($fupload_name,$ekstensi,$nomor_file){
  
  //direktori gambar
  $vdir_upload = "../../img/logo/";
  $vfile_upload = $vdir_upload . $fupload_name;
  
  //Simpan gambar dalam ukuran sebenarnya
  move_uploaded_file($_FILES["fupload".$nomor_file]["tmp_name"], $vfile_upload);
  
  //identitas file asli
  if ($ekstensi=='jpg' OR $ekstensi=='jpeg' OR $ekstensi=='JPG' OR $ekstensi=='JPEG'){
      $dataim_src = imagecreatefromjpeg($vfile_upload);
  }
  elseif ($ekstensi=='png' OR $ekstensi=='PNG'){
      $dataim_src = imagecreatefrompng($vfile_upload);
  }
  elseif ($ekstensi=='gif' OR $ekstensi=='GIF'){
      $dataim_src = imagecreatefromgif($vfile_upload);
  }
  $im_src = $dataim_src;
  $src_width = imageSX($im_src);
  $src_height = imageSY($im_src);
  
  //Set ukuran gambar hasil perubahan
  $dst_width = 16;
  $dst_height = ($dst_width/$src_width)*$src_height;
  
  //proses perubahan ukuran
  $im = imagecreatetruecolor($dst_width,$dst_height);
  imagecopyresampled($im, $im_src, 0, 0, 0, 0, $dst_width, $dst_height, $src_width, $src_height);
  
  //Simpan gambar
  if ($ekstensi=='jpg' OR $ekstensi=='jpeg' OR $ekstensi=='JPG' OR $ekstensi=='JPEG'){
      imagejpeg($im,$vdir_upload . "small_" . $fupload_name);
  }
  elseif ($ekstensi=='png' OR $ekstensi=='PNG'){
      imagepng($im,$vdir_upload . "small_" . $fupload_name);
  }
  elseif ($ekstensi=='gif' OR $ekstensi=='GIF'){
      imagegif($im,$vdir_upload . "small_" . $fupload_name);
  }
  
  //Set ukuran gambar hasil perubahan
  $dst_width2 = 32;
  $dst_height2 = ($dst_width2/$src_width)*$src_height;
  
  //proses perubahan ukuran
  $im2 = imagecreatetruecolor($dst_width2,$dst_height2);
  imagecopyresampled($im2, $im_src, 0, 0, 0, 0, $dst_width2, $dst_height2, $src_width, $src_height);
  
  //Simpan gambar
  if ($ekstensi=='jpg' OR $ekstensi=='jpeg' OR $ekstensi=='JPG' OR $ekstensi=='JPEG'){
      imagejpeg($im2,$vdir_upload . "medium_" . $fupload_name);
  }
  elseif ($ekstensi=='png' OR $ekstensi=='PNG'){
      imagepng($im2,$vdir_upload . "medium_" . $fupload_name);
  }
  elseif ($ekstensi=='gif' OR $ekstensi=='GIF'){
      imagegif($im2,$vdir_upload . "medium_" . $fupload_name);
  }
  
  //Hapus gambar di memori komputer
  imagedestroy($im_src);
  imagedestroy($im);
  imagedestroy($im2);
  }
	$nomor_file = 4;
                    
      $ukuran_maks_file4 = 3000000;
      $lokasi_file4 = $_FILES['fupload4']['tmp_name'];
      $nama_file4   = $_FILES['fupload4']['name'];
      $tipe_file4   = $_FILES['fupload4']['type'];
      $ukuran_file4 = $_FILES['fupload4']['size'];
      $acak4           = rand(1,999999);      
      $extensionList4 = array("jpg","jpeg","png");
      $pecah4 = explode(".", $nama_file4);
      $ekstensi4 = $pecah4[1]; 
      $nama_file_unik4 = $acak4.time().".".$ekstensi4;
                              				
      if (!empty($lokasi_file4)){
                            
          
                UploadFilegambar4($nama_file_unik4,$ekstensi4,$nomor_file);
				 $rr=mysql_query("UPDATE kabupaten SET logo = '$nama_file_unik4'");
				$upd=mysql_query("UPDATE desa SET nmdesa='$_POST[nmdesa]', alamat='$_POST[alamatdesa]', kpldesa='$_POST[kpldesa]', nipkpldesa='$_POST[nipkpldesa]',no_telp='$_POST[notelp]', email='$_POST[email]', website='$_POST[website]' WHERE id='$_POST[iddesa]'");
              
      }
      else{
       
       $upd=mysql_query("UPDATE desa SET nmdesa='$_POST[nmdesa]', alamat='$_POST[alamatdesa]', kpldesa='$_POST[kpldesa]', nipkpldesa='$_POST[nipkpldesa]',no_telp='$_POST[notelp]', email='$_POST[email]', website='$_POST[website]' WHERE id='$_POST[iddesa]'");
              
        
      }
	
	if($upd){
		$_SESSION[nmdesa]=$_POST[nmdesa];
		$_SESSION[alamatdesa]=$_POST[alamatdesa];
		$_SESSION[kpldesa]=$_POST[kpldesa];
		$_SESSION[nipkpldesa]=$_POST[nipkpldesa];
		$_SESSION[notelp]=$_POST[notelp];
		$_SESSION[email]=$_POST[email];
		$_SESSION[website]=$_POST[website];
		if (!empty($lokasi_file4)){
			$_SESSION[logo]=$nama_file_unik4;
		}
		echo"<script>alert('Setting Parameter Desa Berhasi Disimpan');window.location.href='index.php'</script>";
	}
header('location:../../media.php?module=info');
  
  ?>