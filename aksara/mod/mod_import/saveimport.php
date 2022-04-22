<?php
session_start();
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include "koneksi.php";
function jdno($d,$db){
	$fil=$d;
	$cekfil=mysql_fetch_array(mysql_query("SELECT id as id, UCASE(nama) as nama FROM $db WHERE nama ='$fil'"));
	return $cekfil[id];
}
function jdnos($d,$db){
	$fil=$d;
	$cekfil=mysql_fetch_array(mysql_query("SELECT id as id, UCASE(nama) as nama FROM $db WHERE nama like '%$fil%'"));
	return $cekfil[id];
}
function cariTgl($a){
	$b=explode("-",$a);
	if($b[1]=='JAN'){
		$m="01";
	}elseif($b[1]=='FEB'){
		$m="02";
	}elseif($b[1]=='MAR'){
		$m="03";
	}elseif($b[1]=='APR'){
		$m="04";
	}elseif($b[1]=='MAY'){
		$m="05";
	}elseif($b[1]=='JUN'){
		$m="06";
	}elseif($b[1]=='JUL'){
		$m="07";
	}elseif($b[1]=='AUG'){
		$m="08";
	}elseif($b[1]=='SEP'){
		$m="09";
	}elseif($b[1]=='OCT'){
		$m="10";
	}elseif($b[1]=='NOV'){
		$m="11";
	}elseif($b[1]=='DEC'){
		$m="12";
	}
	if($b[2] >= 45 and $b[2] <= 99){
		$y="19".$b[2];
	}else{
		$y="20".$b[2];
	}
	$hsl=$y."-".$m."-".$b[0];
	return $hsl;
}
function tglxls($tg){
	$pecah = explode("-", $tg);
	$d = $pecah[0];
	$m = $pecah[1];
	$y = $pecah[2];
	return $y.'-'.$m.'-'.$d;
}
	// echo print_r($_FILES['filedb']);
	$filedb=$_FILES['filedb'];

	$extension=substr($_FILES['filedb']['name'], -4, 4);
	if ($extension==".xls"){
		$filename=$_FILES['filedb']['name'];
		$move= move_uploaded_file($_FILES['filedb']['tmp_name'],$filename);

		require_once 'excel_reader2.php';
		$data = new Spreadsheet_Excel_Reader();
		$data->setOutputEncoding('utf-8');
		$data->read($filename);
		error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);
		for ($i = 2; $i <= $data->sheets[0]['numRows']; $i++) {
			$nokk=$data->sheets[0]['cells'][$i][1];
			$alamat=$data->sheets[0]['cells'][$i][2];
			$rt=$data->sheets[0]['cells'][$i][3];
			$rw=$data->sheets[0]['cells'][$i][4];
			$nik=$data->sheets[0]['cells'][$i][5];
			$nama=$data->sheets[0]['cells'][$i][6];
			$tmplhr=$data->sheets[0]['cells'][$i][7];
			$tgllhrzz=$data->sheets[0]['cells'][$i][8];
			$no_akta=$data->sheets[0]['cells'][$i][9];
			$ijk=$data->sheets[0]['cells'][$i][10];
			$igoldrh=$data->sheets[0]['cells'][$i][11];
			$iagama=$data->sheets[0]['cells'][$i][12];
			$istatuskawin=$data->sheets[0]['cells'][$i][13];
            $surat_nikah=$data->sheets[0]['cells'][$i][14];
			$ipdkakhir=$data->sheets[0]['cells'][$i][15];
			$ipekerjaan=$data->sheets[0]['cells'][$i][16];
			$ihubklg=$data->sheets[0]['cells'][$i][17];
			$iwrgngr=$data->sheets[0]['cells'][$i][18];
			$ayah=$data->sheets[0]['cells'][$i][19];
			$ibu=$data->sheets[0]['cells'][$i][20];
			$ikeber=$data->sheets[0]['cells'][$i][21];
			$tglbaru=explode("-",$tgllhr);
			$tglbaru1=date($tglbaru[2]."-".$tglbaru[1]."-".$tglbaru[0]);

			$cekkk=mysql_fetch_array(mysql_query("SELECT COUNT(id) as byk FROM kk WHERE no_kk='$nokk'"));
			if($cekkk[byk]==0){
				$sav=mysql_query("INSERT INTO kk VALUES('','$_SESSION[iddesa]','$nokk','$alamat','$rt','$rw')");
			}
			$ceknik=mysql_fetch_array(mysql_query("SELECT COUNT(id) as byk FROM penduduk WHERE nik='$nik'"));
			if($ceknik[byk]==0){
				$cekidkk=mysql_fetch_array(mysql_query("SELECT id FROM kk WHERE no_kk='$nokk'"));
				$itgllhr=date(tglxls($tgllhrzz));
				$jk=jdnos($ijk,'jk');
				$goldrh=jdno($igoldrh,'gol_drh');
				$agama=jdno($iagama,'agama');
				$statuskawin=jdno($istatuskawin,'status_kawin');
				$pdkakhir=jdno($ipdkakhir,'pendidikan');
				$pekerjaan=jdno($ipekerjaan,'pekerjaan');
				$hubklg=jdno($ihubklg,'hub_klg');
				$wrgngr=jdno($iwrgngr,'wrg_ngr');
				$keber=jdno($ikeber,'keberadaan');
				$sav=mysql_query("INSERT INTO penduduk (
					id_kk, nik, nama,
					tmp_lhr, tgl_lhr, no_akta,
					jk, gol_drh, agama,
					status_kawin, surat_nikah, pendidikan,
					pekerjaan, hub_klg, wrg_ngr,
					ayah, ibu, keberadaan) VALUES(
						'$cekidkk[id]','$nik','$nama',
						'$tmplhr','$itgllhr','$no_akta',
						'$jk','$goldrh','$agama',
						'$statuskawin','$surat_nikah','$pdkakhir',
						'$pekerjaan','$hubklg','$wrgngr',
						'$ayah','$ibu','$keber')");
				if($sav){
					$inp=$inp+1;
				}else{
					 echo mysql_error();
				}

				// echo print_r($sav);
			}
		}
		echo"<script>window.alert('Berhasil Input $inp records ke database');window.location.href='?module=import';</script>";
	}
	else{echo"<script>window.alert('$filename Maaf Ektensi File harus *.xls');window.location.href='?module=import';</script>";}
	unlink($filename);

?>
