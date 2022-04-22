<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<div class="panel panel-info bg-info">
		<div class="panel-body">
			<h3>Untuk Contoh File migrasi bisa di download disini </h3>
			<br>
			<a href="./MASTER_DATA_PENDUDUK_DESA.xls" target="_blank" class="btn btn-primary">File Migrasi</a>
		</div>
		</div>
	</div>
</div>
<?php
session_start();
include "../../config/koneksi.php";
if($_GET[act]==''){
	echo"
	<h2>IMPORT DATA KEPENDUDUKAN</h2>
	<form method=POST action='?module=saveimport' enctype='multipart/form-data'>
	<table id='example' class='table table-striped responsive-utilities jambo_table'><tr><td>
	Ambil File Excel</td><td><input type=file name=filedb></td></tr><tr><td colspan=2><input type=submit value='Simpan Ke Database' class='btn btn-round btn-primary'></td></tr></table>
	</form>";

}



if($_GET['act']=='savedb'){

function jdno($d,$db){
	$fil=strtoupper($d);
	$cekfil=mysql_fetch_array(mysql_query("SELECT id as id, UCASE(nama) as nama FROM $db WHERE nama='$fil'"));
	return $cekfil[id];
}

function tglxls($tg){
$pecah = explode("/", $tg);
$d = $pecah[0];
$m = $pecah[1];
$y = $pecah[2];
return $y.'-'.$m.'-'.$d;
}

	$filedb=$_POST['filedb'];

	$extension=substr($_FILES['filedb']['name'], -4, 4);
	if ($extension==".xls"){
		$filename=$_FILES['filedb']['name'];
		$move= move_uploaded_file($_FILES['filedb']['tmp_name'],$filename);

		require_once 'reader.php';
		$data = new Spreadsheet_Excel_Reader();
		$data->setOutputEncoding('CP1251');
		$data->read($filename);
		error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);
		for ($i = 2; $i <= $data->sheets[0]['numRows']; $i++) {
			$nokk=$data->sheets[0]['cells'][$i][1];
			$nik=$data->sheets[0]['cells'][$i][2];
			$nama=$data->sheets[0]['cells'][$i][3];
			$alamat=$data->sheets[0]['cells'][$i][4];
			$rt=$data->sheets[0]['cells'][$i][5];
			$rw=$data->sheets[0]['cells'][$i][6];
			$tmplhr=$data->sheets[0]['cells'][$i][7];
			$tgllhr=$data->sheets[0]['cells'][$i][8];
			$ijk=$data->sheets[0]['cells'][$i][9];
			$igoldrh=$data->sheets[0]['cells'][$i][10];
			$iagama=$data->sheets[0]['cells'][$i][11];
			$istatuskawin=$data->sheets[0]['cells'][$i][12];
			$ipdkakhir=$data->sheets[0]['cells'][$i][13];
			$ipekerjaan=$data->sheets[0]['cells'][$i][14];
			$ihubklg=$data->sheets[0]['cells'][$i][15];
			$iwrgngr=$data->sheets[0]['cells'][$i][16];
			$ayah=$data->sheets[0]['cells'][$i][17];
			$ibu=$data->sheets[0]['cells'][$i][18];
			$cekkk=mysql_fetch_array(mysql_query("SELECT COUNT(id) as byk FROM kk WHERE no_kk='$nokk'"));
			if($cekkk[byk]==0){
				$sav=mysql_query("INSERT INTO kk VALUES('','$_SESSION[iddesa]','$nokk','$alamat','$rt','$rw')");
			}
			$ceknik=mysql_fetch_array(mysql_query("SELECT COUNT(id) as byk FROM penduduk WHERE nik='$nik'"));

			if($ceknik[byk]==0){
				$cekidkk=mysql_fetch_array(mysql_query("SELECT id FROM kk WHERE no_kk='$nokk'"));
				$itgllhr=tglxls($itgllhr);
				$jk=jdno($ijk,'jk');$goldrh=jdno($igoldrh,'gol_drh');$agama=jdno($iagama,'agama');$statuskawin=jdno($istatuskawin,'status_kawin');$pdkakhir=jdno($ipdkakhir,'pendidikan');$pekerjaan=jdno($ipekerjaan,'pekerjaan');$hubklg=jdno($ihubklg,'hub_klg');$wrgngr=jdno($iwrgngr,'wrg_ngr');
				$sav=mysql_query("INSERT INTO penduduk VALUES('','$cekidkk[id]','$nik','$nama','$tmplhr','$tgllhr','$jk','$goldrh','$agama','$statuskawin','$pdkakhir','$pekerjaan','$hubklg','$wrgngr','$ayah','$ibu','1')");
				if($sav){
					echo print_r($sav);
					$inp=$inp+1;
				}else{
					echo mysql_error();
				}
			}
		}
		// echo"<script>window.alert('Berhasil Input $inp records ke database');window.location.href='?';</script>";
	}
	else{echo"<script>window.alert('$filename Maaf Ektensi File harus *.xls');window.location.href='?';</script>";}
	unlink($filename);
}
?>
