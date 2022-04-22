<?php
session_start();
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
  include "../../config/koneksi.php";
  include "../../config/form_validation.php";
  
  function tampil_error($pesan_error=""){
    echo <<<EOF
    <script type="text/javascript" charset="utf-8">     
    alert('$pesan_error');
    history.go(-1);
    </script>
    <noscript>Javascript is disabled</noscript>
EOF;
  }
  function UploadFilegambar4($fupload_name,$ekstensi,$nomor_file){
      // echo $ekstensi;
      //direktori gambar
      $vdir_upload = "../../fotopenduduk/";
      $vfile_upload = $vdir_upload . $fupload_name;
      
      //Simpan gambar dalam ukuran sebenarnya
      move_uploaded_file($_FILES["fupload".$nomor_file]["tmp_name"], $vfile_upload);
      
      //identitas file asli
      if ($ekstensi=='jpg' OR $ekstensi=='jpeg' OR $ekstensi=='JPG' OR $ekstensi=='JPEG'){
            $dataim_src = @imagecreatefromjpeg($vfile_upload);
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
      $dst_width2 = 600;
      $dst_height2 = 700;
      
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
      // imagedestroy($im_src);
      // imagedestroy($im);
      // imagedestroy($im2);
  }
$module=$_GET['module'];
$act=$_GET['act'];
$gval = new form_validation();
$nokk=$_POST['nokk'];

$q=mysql_query("select * from kk where no_kk ='$nokk'");
$r=mysql_fetch_array($q);
$nok=$r['id'];
$nik = mysql_real_escape_string($_POST['nik']);
$nama = mysql_real_escape_string($_POST['nama']);
$tmp_lhr = mysql_real_escape_string($_POST['tmp_lhr']);
// $tgl1 = explode('/',$_POST['tgl_lhr']);
//$tgl_lhr =$tgl1[2]."-".$tgl1[0]."-".$tgl1[1];
$tgl_lhr=mysql_real_escape_string($_POST['tgl_lhr']);
$no_akta=mysql_real_escape_string($_POST['no_akta']);
$jk = mysql_real_escape_string($_POST['jk']);
$gol_drh = mysql_real_escape_string($_POST['gol_drh']);
$agama = mysql_real_escape_string($_POST['agama']);
$status_kawin = mysql_real_escape_string($_POST['status_kawin']);
$surat_nikah = mysql_real_escape_string($_POST['surat_nikah']);
$pendidikan = mysql_real_escape_string($_POST['pendidikan']);
$pekerjaan = mysql_real_escape_string($_POST['pekerjaan']);
$hub_klg = mysql_real_escape_string($_POST['hub_klg']);
$wrg_ngr = mysql_real_escape_string($_POST['wrg_ngr']);
$ayah = mysql_real_escape_string($_POST['ayah']);
$ibu = mysql_real_escape_string($_POST['ibu']);
$keberadaan = mysql_real_escape_string($_POST['keberadaan']);
$nama_file_unik4 = '';
//   echo count($_FILES['fupload4']);
if( $_FILES['fupload4']['name'] != ''){
      $nomor_file = 4;

      $ukuran_maks_file4 = 3000000;
      $lokasi_file4 = $_FILES['fupload4']['tmp_name'];
      $nama_file4   = $_FILES['fupload4']['name'];
      $tipe_file4   = $_FILES['fupload4']['type'];
      $ukuran_file4 = $_FILES['fupload4']['size'];
      $acak4           = rand(1,999999);      
      $extensionList4 = array("jpg","jpeg","png");
      $pecah4 = explode(".", $nama_file4);
      // echo count($pecah4);
      if(count($pecah4) > 1){
            $ekstensi4 = $pecah4[1];    
            $nama_file_unik4 = $acak4.time().".".$ekstensi4;  
      }

}                                				
                        	         
            
  // Input penduduk
  if ($module=='penduduk' AND $act=='input'){
        
      if($gval->required($nik) == FALSE){
            tampil_error('nik tidak boleh kosong');
      }
      elseif($gval->required($nama) == FALSE){
            tampil_error('nama tidak boleh kosong');
      }
      elseif($gval->required($tmp_lhr) == FALSE){
            tampil_error('tmp_lhr tidak boleh kosong');
      }
      elseif($gval->required($tgl_lhr) == FALSE){
            tampil_error('tgl_lhr tidak boleh kosong');
      }
      elseif($gval->required($jk) == FALSE){
            tampil_error('jk tidak boleh kosong');
      }
      elseif($gval->required($status_kawin) == FALSE){
            tampil_error('status_kawin tidak boleh kosong');
      }
      else{
            if($nama_file_unik4 != ''){
                  UploadFilegambar4($nama_file_unik4,$ekstensi4,$nomor_file);
            }
		  
            $insert = mysql_query("INSERT INTO penduduk(id_kk,nik,
					nama,
					tmp_lhr,
					tgl_lhr,no_akta,
					jk,
					gol_drh,
					agama,
					status_kawin,surat_nikah,
					pendidikan,
					pekerjaan,
					hub_klg,
					wrg_ngr,
					ayah,
					ibu,
					keberadaan, foto)
                                VALUES('$nok','$nik',
					'$nama',
					'$tmp_lhr',
					'$tgl_lhr','$no_akta',
					'$jk',
					'$gol_drh',
					'$agama',
					'$status_kawin','$surat_nikah',
					'$pendidikan',
					'$pekerjaan',
					'$hub_klg',
					'$wrg_ngr',
					'$ayah',
					'$ibu',
                              '$keberadaan','$nama_file_unik4')");
            if($insert){
                  header('location:../../media.php?module='.$module.'&pesan=1');
            }else{
                  echo mysql_error();
            }
            
       
      }
     
  }
  
  // Update penduduk  
  elseif ($module=='penduduk' AND $act=='update'){ 
      $id = mysql_real_escape_string($_POST['id']);
      
      if($gval->required($nik) == FALSE){
            tampil_error('nik tidak boleh kosong');
      }
      elseif($gval->required($nama) == FALSE){
            tampil_error('nama tidak boleh kosong');
      }
      elseif($gval->required($tmp_lhr) == FALSE){
            tampil_error('tmp_lhr tidak boleh kosong');
      }
      elseif($gval->required($tgl_lhr) == FALSE){
            tampil_error('tgl_lhr tidak boleh kosong');
      }
      elseif($gval->required($jk) == FALSE){
            tampil_error('jk tidak boleh kosong');
      }
      elseif($gval->required($status_kawin) == FALSE){
            tampil_error('status_kawin tidak boleh kosong');
      }
      else{
          if($_FILES['fupload4']['name']==''){
             mysql_query("UPDATE penduduk SET  nik = '$nik',
					nama = '$nama',
					tmp_lhr = '$tmp_lhr',
					tgl_lhr = '$tgl_lhr',
					no_akta = '$no_akta',
					jk = '$jk',
					gol_drh = '$gol_drh',
					agama = '$agama',
					status_kawin = '$status_kawin',
					surat_nikah = '$surat_nikah',
					pendidikan = '$pendidikan',
					pekerjaan = '$pekerjaan',
					hub_klg = '$hub_klg',
					wrg_ngr = '$wrg_ngr',
					ayah = '$ayah',
					ibu = '$ibu',
					keberadaan = '$keberadaan'                                         
                          WHERE id = '$id'");
		  }else{
			   UploadFilegambar4($nama_file_unik4,$ekstensi4,$nomor_file);
			  mysql_query("UPDATE penduduk SET  nik = '$nik',
					nama = '$nama',
					tmp_lhr = '$tmp_lhr',
					tgl_lhr = '$tgl_lhr',
					no_akta = '$no_akta',
					jk = '$jk',
					gol_drh = '$gol_drh',
					agama = '$agama',
					status_kawin = '$status_kawin',
					surat_nikah = '$surat_nikah',
					pendidikan = '$pendidikan',
					pekerjaan = '$pekerjaan',
					hub_klg = '$hub_klg',
					wrg_ngr = '$wrg_ngr',
					ayah = '$ayah',
					ibu = '$ibu',
					keberadaan = '$keberadaan',
					foto ='$nama_file_unik4'
                          WHERE id = '$id'");
			  
		  }
             header('location:../../media.php?module='.$module.'&pesan=2');
      }
     
  }
 
  // Delete penduduk  
  elseif ($module=='penduduk' AND $act=='delete'){
            $id = mysql_real_escape_string($_GET[id]);
            $id_kk = mysql_real_escape_string($_GET[idkk]);
      mysql_query("DELETE FROM penduduk WHERE id = '$id'");
      mysql_query("DELETE FROM kk WHERE id = '$id_kk'");
      header('location:../../media.php?module='.$module.'&pesan=3');
            
  }
  elseif ($module=='penduduk' AND $act=='inputkk'){ 
  $no_kk = mysql_real_escape_string($_POST['no_kk']);
  $alamat = mysql_real_escape_string($_POST['alamat']);
  $rt = mysql_real_escape_string($_POST['rt']);
  $rw = mysql_real_escape_string($_POST['rw']);

        
      
           $q= mysql_query("INSERT INTO kk(id_desa,no_kk,
					alamat,
					rt,
					rw)
                                VALUES('$_SESSION[iddesa]','$no_kk',
					'$alamat',
					'$rt',
					'$rw')");
					
					$q2=mysql_fetch_array($q);
					$q3=mysql_query("Select * from kk where no_kk='$no_kk'");
					$rr=mysql_fetch_array($q3);
					
			$q1=	mysql_query("INSERT INTO penduduk(id_kk,nik,
					nama,
					tmp_lhr,
					tgl_lhr,no_akta,
					jk,
					gol_drh,
					agama,
					status_kawin,surat_nikah,
					pendidikan,
					pekerjaan,
					hub_klg,
					wrg_ngr,
					ayah,
					ibu,
					keberadaan)
                                VALUES('$rr[id]','$nik',
					'$nama',
					'$tmp_lhr',
					'$tgl_lhr','$no_akta',
					'$jk',
					'$gol_drh',
					'$agama',
					'$status_kawin','$surat_nikah',
					'$pendidikan',
					'$pekerjaan',
					'$hub_klg',
					'$wrg_ngr',
					'$ayah',
					'$ibu',
					'$keberadaan')");	
					
					
					
					
					
            header('location:../../media.php?module='.$module.'&pesan=1');
       
      
  
  }
  elseif ($module=='penduduk' AND $act=='updatekk'){ 
  $id = mysql_real_escape_string($_POST['id']);
  $no_kk = mysql_real_escape_string($_POST['no_kk']);
  $alamat = mysql_real_escape_string($_POST['alamat']);
  $rt = mysql_real_escape_string($_POST['rt']);
  $rw = mysql_real_escape_string($_POST['rw']);
  mysql_query("UPDATE kk SET  no_kk = '$no_kk',
					alamat = '$alamat'                                        
                          WHERE id = '$id'");
    
             header('location:../../media.php?module='.$module.'&pesan=2');
  }
  elseif ($module=='penduduk' AND $act=='deletekk'){ 
  $id = mysql_real_escape_string($_GET[id]);
  $id_kk = mysql_real_escape_string($_GET[idkk]);
      $qq=mysql_query("DELETE FROM kk WHERE id = '$id_kk'");
      $q=mysql_query("DELETE FROM penduduk WHERE id_kk = '$id'");
	  
      header('location:../../media.php?module='.$module.'&pesan=3');
  }
  
  }
?>
