<?php
session_start();
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
    $module=$_GET[module];
  $act=$_GET[act];
  $gval = new form_validation();
  
  $tgl1 = explode('/',$_POST['tgl']);
  $tgl=$tgl1[2]."-".$tgl1[0]."-".$tgl1[1];
  $no_surat = mysql_real_escape_string($_POST['no_surat']);
  $tanggal_surat = mysql_real_escape_string($_POST['tanggal_surat']);
  $pengirim = mysql_real_escape_string($_POST['pengirim']);
  $isi_singkat = mysql_real_escape_string($_POST['isi_singkat']);
  $keterangan = mysql_real_escape_string($_POST['keterangan']);

  // Input suratmasuk
  if ($module=='suratmasuk' AND $act=='input'){
        
      if($gval->required($tgl) == FALSE){
            tampil_error('Tanggal tidak boleh kosong');
      }
      elseif($gval->required($no_surat) == FALSE){
            tampil_error('Nomor surat tidak boleh kosong');
      }
      elseif($gval->required($tanggal_surat) == FALSE){
            tampil_error('Tanggal surat tidak boleh kosong');
      }
      elseif($gval->required($pengirim) == FALSE){
            tampil_error('Pengirim tidak boleh kosong');
      }
      elseif($gval->required($isi_singkat) == FALSE){
            tampil_error('Isi singkat tidak boleh kosong');
      }
      elseif($gval->required($keterangan) == FALSE){
            tampil_error('Keterangan tidak boleh kosong');
      }
      else{
            mysql_query("INSERT INTO surtamasuk(tgl,
					no_surat,
					tanggal_surat,
					pengirim,
					isi_singkat,
					keterangan)
                                VALUES('$tgl',
					'$no_surat',
					'$tanggal_surat',
					'$pengirim',
					'$isi_singkat',
					'$keterangan')");
            header('location:../../media.php?module='.$module.'&pesan=1');
       
      }
     
  }
  
  // Update suratmasuk  
  elseif ($module=='suratmasuk' AND $act=='update'){ 
      $id = mysql_real_escape_string($_POST['id']);
      
      if($gval->required($tgl) == FALSE){
            tampil_error('Tanggal tidak boleh kosong');
      }
      elseif($gval->required($no_surat) == FALSE){
            tampil_error('Nomor surat tidak boleh kosong');
      }
      elseif($gval->required($tanggal_surat) == FALSE){
            tampil_error('Tanggal surat tidak boleh kosong');
      }
      elseif($gval->required($pengirim) == FALSE){
            tampil_error('Pengirim tidak boleh kosong');
      }
      elseif($gval->required($isi_singkat) == FALSE){
            tampil_error('Isi singkat tidak boleh kosong');
      }
      elseif($gval->required($keterangan) == FALSE){
            tampil_error('Keterangan tidak boleh kosong');
      }
      else{
          
             mysql_query("UPDATE surtamasuk SET  tgl = '$_POST[tgl1]',
					no_surat = '$no_surat',
					tanggal_surat = '$tanggal_surat',
					pengirim = '$pengirim',
					isi_singkat = '$isi_singkat',
					keterangan = '$keterangan'                                         
                          WHERE id = '$id'");
    
             header('location:../../media.php?module='.$module.'&pesan=2');
      }
     
  }
 
  // Delete suratmasuk  
  elseif ($module=='suratmasuk' AND $act=='delete'){
            $id = mysql_real_escape_string($_GET[id]);
      mysql_query("DELETE FROM surtamasuk WHERE id = '$id'");
      header('location:../../media.php?module='.$module.'&pesan=3');
            
  }
  
  }
?>
