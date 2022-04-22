
<style>
#prevsurat{
	 clear: both;
	background-color:#ffff;
}
</style>


<script type="text/javascript">
function getCombo(){
            $.get("mod/mod_surat/file.php?opt1="+$("#Idsurat").val(), function(data){   
		         $("#Detailsurat").html(data);
		      });
         }
		  function setThis(value) {
  	 $.ajax({ 
                type: "GET",
                url: "mod/mod_surat/getdata.php?mod=isi",
                data: 'id=' + value , 
            success: function(msg){
                   
                   msg = JSON.parse( msg ); 
				 
                   document.getElementById('nama2').value = msg.nama;
                   document.getElementById('nik2').value = msg.nik;
                   document.getElementById('tmp').value = msg.tmp_lhr;
                   document.getElementById('jk').value = msg.jk;
                   document.getElementById('wrg_ngr').value = msg.wrg_ngr;
                   document.getElementById('agama').value = msg.agama;
                   document.getElementById('status_kawin').value = msg.status_kawin;
                   document.getElementById('pendidikan').value = msg.pendidikan;
                   document.getElementById('pekerjaan').value = msg.pekerjaan;
                   document.getElementById('alamat2').value = msg.alamat;
                   
                  
                    
                    }

                });

  }
function autoForm(un) {
var form = document.createElement("form");
document.body.appendChild(form);
form.method = "POST";
form.action = "?module=surat&act=cari";
var element1 = document.createElement("INPUT");         
    element1.name="keyword"
    element1.value = un;
       element1.type = 'hidden'
          form.appendChild(element1);
         
form.submit();

}

	</script>
<?php
session_start();
if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
    echo "<center>Untuk mengakses modul, Anda harus login <br>";
    echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{

function tampil_error($pesan_error=""){
    echo <<<EOF
    <script type="text/javascript" charset="utf-8">    
    alert('$pesan_error');
    history.go(-1); 
    </script>
    <noscript>Javascript is disabled</noscript>
EOF;
}
function ck($ts){
	$x=mysql_fetch_array(mysql_query("SELECT * FROM temp_items WHERE value='$ts' and id_jns='$_SESSION[idjns]'"));
	$r=mysql_fetch_array(mysql_query("SELECT * FROM temp_srt WHERE id_temp='$x[id]' and nosrt='$_SESSION[nosrt]'"));
	return $r[value];
	
}
function sanitize($text){
    return htmlentities(stripslashes($text));
}

$aksi="modul/mod_penduduk/aksi_penduduk.php";
switch($_GET[act]){

default:
echo"<table class='table table-striped responsive-utilities jambo_table' >
<tr><td align=center><h2>Pilih Surat</h2></td></tr>
<tr><td align=center><a href=?module=surat&act=pelayanan class='btn btn-round btn-warning' width='100px'> Surat Pelayanan</a></td></tr>
<tr><td align=center><a href=?module=surat&act=dinas class='btn btn-round btn-danger'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Surat Dinas &nbsp;&nbsp;       </a></td></tr>


</table>";
break;

case "dinas":
echo "<h2>Surat Dinas</h2> ";
echo"<div align=center><select name=surat id='Idsurat' width='1000px' onChange='getCombo()'><option value=''>--Pilih Jenis Surat--</option>";
$sql=mysql_query("SELECT * FROM jns_sk where aktif='1' and ket='2' ");
		WHILE($r=mysql_fetch_array($sql)){
			echo"<option value='$r[id]'>$r[nama]</option>";
		}
		echo"</select></div>";
		echo"<div id='Detailsurat'></div>";
break;
case "pelayanan":
echo "<h2>Daftar Penduduk</h2> ";
if($_GET['pesan']=='1'){
echo "<div style='padding:5px;color:green;border:1px solid green;font-size:12px;margin-bottom:5px;background-color:#fbfbfb;'>Data telah berhasil ditambah!</div>";
}
elseif($_GET['pesan']==2){
echo "<div style='padding:5px;color:green;border:1px solid green;font-size:12px;margin-bottom:5px;background-color:#fbfbfb;'>Data telah berhasil diperbaharui!</div>";
}
elseif($_GET['pesan']==3){
echo "<div style='padding:5px;color:red;border:1px solid red;font-size:12px;margin-bottom:5px;background-color:#fbfbfb;'>Data telah berhasil dihapus!</div>";
}



echo "<div style='float:right;font-size:12px;'>
<form method='POST' action='?module=surat&act=cari' >
Cari Data <input type='text' name='keyword'> <input type='submit' value='Cari' class='btn btn-round btn-warning'>
</form>
</div>";
echo "<table id='example' class='table table-striped responsive-utilities jambo_table'>
<thead><tr><td class='center'>No</td>
<td class='center'>NIK</td><td class='center'>NAMA</td><td class='center'>TMP LAHIR</td><td class='center'>TGL LAHIR</td><td class='center'>JENIS KELAMIN</td><td class='center'>HUBUNGAN KEL</td></tr></thead></tbody>";
//paging
$batas   = 10;
$halaman = $_GET['halaman'];
if(empty($halaman)){
    $posisi  = 0;
    $halaman = 1;
}
else{
    $posisi = ($halaman-1) * $batas;
}
$tampil=mysql_query("SELECT p.*,p.id as ides,k.* FROM penduduk p, kk k where k.id=p.id_kk AND k.id_desa='$_SESSION[iddesa]' LIMIT $posisi,$batas");
$no=$posisi + 1;
while ($r=mysql_fetch_array($tampil)){
  echo "<tr onDblclick=\"autoForm($r[nik])\"><td class='center'>$no.</td>
	<td class='center'>".sanitize($r[nik])."</td>
      	<td class='center'>".sanitize($r[nama])."</td>
      	<td class='center'>".sanitize($r[tmp_lhr])."</td>
      	<td class='center'>".sanitize($r[tgl_lhr])."</td>
      	<td class='center'>".sanitize(cek('jk',$r[jk]))."</td>
       	<td class='center'>".sanitize(cek('hub_klg',$r[hub_klg]))."</td>
             </tr>";
  $no++;
}
echo "</tbody></table>";
$tampil2 = mysql_query("SELECT p.*,p.id as ides,k.* FROM penduduk p, kk k where k.id=p.id_kk AND k.id_desa='$_SESSION[iddesa]'");
$jmldata = mysql_num_rows($tampil2);
$jmlhal  = ceil($jmldata/$batas);
echo "<div style='font-size:12px;'>Jumlah $jmldata data<br><br>";
if($halaman > 1){
     $prev=$halaman-1;
     echo "<span><a href=$_SERVER[PHP_SELF]?module=surat&halaman=$prev><< Prev</a></span> ";
}
else{
     echo "<span style='color:gray;'><< Prev</span> ";
}
     for($i=1;$i<=$jmlhal;$i++)
          if ($i != $halaman){
          echo " <a href=$_SERVER[PHP_SELF]?module=surat&halaman=$i>$i</a> ";
     }
else{
     echo " <span style='color:red;'>$i</span> ";
}
if($halaman < $jmlhal){
     $next=$halaman+1;
     echo "<span><a href=$_SERVER[PHP_SELF]?module=surat&halaman=$next>Next >> </a></span>";
}
else{
     echo "<span style='color:gray;'>Next >> </span>";
}
echo "</div><br>";
break;

case "cari":
echo "<h2>Cari Penduduk</h2> ";
$keyword = trim($_POST['keyword']);
echo "<div style='float:right;font-size:12px;'>
<form method='POST' action='?module=penduduk&act=cari'>
Cari Data <input type='text' name='keyword' value='$keyword'> <input type='submit' value='Cari'>
</form>
</div>";
echo "
<input type=button value='Kembali' onclick=\"window.location.href='?module=surat';\">
<br><br>";
if(empty($keyword)){
$tampil=mysql_query("SELECT p.*,p.id as ides,k.* FROM penduduk p, kk k where k.id=p.id_kk AND k.id_desa='$_SESSION[iddesa]'");
}
else{
$tampil=mysql_query("SELECT p.*,p.id as ides,k.* FROM penduduk p, kk k where k.id=p.id_kk AND k.id_desa='$_SESSION[iddesa]' AND( 
nik LIKE '%$keyword%' OR nama LIKE '%$keyword%' OR tmp_lhr LIKE '%$keyword%' OR tgl_lhr LIKE '%$keyword%' OR jk LIKE '%$keyword%' OR gol_drh LIKE '%$keyword%' OR agama LIKE '%$keyword%' OR status_kawin LIKE '%$keyword%' OR pendidikan LIKE '%$keyword%' OR pekerjaan LIKE '%$keyword%' OR hub_klg LIKE '%$keyword%' OR wrg_ngr LIKE '%$keyword%' OR ayah LIKE '%$keyword%' OR ibu LIKE '%$keyword%' OR keberadaan LIKE '%$keyword%' ) ");
}

$jumlah_data = mysql_num_rows($tampil);
echo "<small>Ditemukan sebanyak ".$jumlah_data." data</small><br>";
echo "<table id='example' class='table table-striped responsive-utilities jambo_table'>
<thead><tr><td class='center'>No</td>
<td class='center'>NIK</td><td class='center'>NAMA</td><td class='center'>TMP LAHIR</td><td class='center'>TGL LAHIR</td><td class='center'>JENIS KELAMIN</td><td class='center'>HUBUNGAN KEL</td></tr></thead></tbody>";
$no=1;
while ($r=mysql_fetch_array($tampil)){
    echo "<tr onclick=\"setThis('$r[ides]')\"> <td class='center'>$no.</td>
		<td class='center'>".sanitize($r[nik])."</td>
      	<td class='center'>".sanitize($r[nama])."</td>
      	<td class='center'>".sanitize($r[tmp_lhr])."</td>
      	<td class='center'>".sanitize($r[tgl_lhr])."</td>
      	<td class='center'>".sanitize(cek('jk',$r[jk]))."</td>
       	<td class='center'>".sanitize(cek('hub_klg',$r[hub_klg]))."</td>
             </tr>";
  $no++;
}
echo "</tbody></table><div align=center><select name=surat id='Idsurat' width='1000px' onChange='getCombo()'><option value=''>--Pilih Jenis Surat--</option>";
$sql=mysql_query("SELECT * FROM jns_sk where aktif='1' and ket='1' ");
		WHILE($r=mysql_fetch_array($sql)){
			echo"<option value='$r[id]'>$r[nama]</option>";
		}
		echo"</select></div>";
		echo"<div id='Detailsurat'></div>";
break;

// Form Tambah penduduk
case "tambahpenduduk":
echo "<h2>Tambah Penduduk</h2>
<form method=POST action='$aksi?module=penduduk&act=input'  >
<table class='list'>
<tr><td>nik <font color='red'>*</font></td><td>: <input type='text' name='nik' size='20' class='' style='' value='' ></td></tr>                
<tr><td>nama <font color='red'>*</font></td><td>: <input type='text' name='nama' size='20' class='' style='' value='' ></td></tr>                
<tr><td>tmp_lhr <font color='red'>*</font></td><td>: <input type='text' name='tmp_lhr' size='20' class='' style='' value='' ></td></tr>                
<tr><td>tgl_lhr <font color='red'>*</font></td><td>: <input type='text' name='tgl_lhr' size='20' class='' style='' value='' ></td></tr>                
<tr><td>jk <font color='red'>*</font></td><td>: ";
$sql_combobox7 = mysql_query("SELECT * FROM jk");
echo "<select name='jk' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox7=mysql_fetch_array($sql_combobox7)){
 echo "<option value='$r_combobox7[id]'>$r_combobox7[nama]</option>";
}
echo "</select></td></tr>
<tr><td>gol_drh </td><td>: ";
$sql_combobox8 = mysql_query("SELECT * FROM gol_drh");
echo "<select name='gol_drh' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox8=mysql_fetch_array($sql_combobox8)){
 echo "<option value='$r_combobox8[id]'>$r_combobox8[nama]</option>";
}
echo "</select></td></tr>
<tr><td>agama </td><td>: ";
$sql_combobox9 = mysql_query("SELECT * FROM agama");
echo "<select name='agama' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox9=mysql_fetch_array($sql_combobox9)){
 echo "<option value='$r_combobox9[id]'>$r_combobox9[nama]</option>";
}
echo "</select></td></tr>
<tr><td>status_kawin <font color='red'>*</font></td><td>: ";
$sql_combobox10 = mysql_query("SELECT * FROM status_kawin");
echo "<select name='status_kawin' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox10=mysql_fetch_array($sql_combobox10)){
 echo "<option value='$r_combobox10[id]'>$r_combobox10[nama]</option>";
}
echo "</select></td></tr>
<tr><td>pendidikan </td><td>: ";
$sql_combobox11 = mysql_query("SELECT * FROM pendidikan");
echo "<select name='pendidikan' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox11=mysql_fetch_array($sql_combobox11)){
 echo "<option value='$r_combobox11[id]'>$r_combobox11[nama]</option>";
}
echo "</select></td></tr>
<tr><td>pekerjaan </td><td>: ";
$sql_combobox12 = mysql_query("SELECT * FROM pekerjaan");
echo "<select name='pekerjaan' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox12=mysql_fetch_array($sql_combobox12)){
 echo "<option value='$r_combobox12[id]'>$r_combobox12[nama]</option>";
}
echo "</select></td></tr>
<tr><td>hub_klg </td><td>: ";
$sql_combobox13 = mysql_query("SELECT * FROM hub_klg");
echo "<select name='hub_klg' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox13=mysql_fetch_array($sql_combobox13)){
 echo "<option value='$r_combobox13[id]'>$r_combobox13[nama]</option>";
}
echo "</select></td></tr>
<tr><td>wrg_ngr </td><td>: ";
$sql_combobox14 = mysql_query("SELECT * FROM wrg_ngr");
echo "<select name='wrg_ngr' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox14=mysql_fetch_array($sql_combobox14)){
 echo "<option value='$r_combobox14[id]'>$r_combobox14[nama]</option>";
}
echo "</select></td></tr>
<tr><td>ayah </td><td>: <input type='text' name='ayah' size='20' class='' style='' value='' ></td></tr>                
<tr><td>ibu </td><td>: <input type='text' name='ibu' size='20' class='' style='' value='' ></td></tr>                
<tr><td>keberadaan </td><td>: ";
$sql_combobox17 = mysql_query("SELECT * FROM keberadaan");
echo "<select name='keberadaan' class='' style=''>
      <option value='' selected>--Pilih--</option>";
while ($r_combobox17=mysql_fetch_array($sql_combobox17)){
 echo "<option value='$r_combobox17[id]'>$r_combobox17[nama]</option>";
}
echo "</select></td></tr>
<tr><td colspan=2><input class='btn btn-primary' type=submit name=submit value=Simpan>
<a href='?module=penduduk' class='btn'>Kembali</a></td></tr>
</table>
</form>";
break;

// Form Edit penduduk 
case "editpenduduk":
$edit = mysql_query("SELECT * FROM penduduk WHERE id='$_GET[id]'");
$r    = mysql_fetch_array($edit);
$num_rows_r = mysql_num_rows($edit);
if(empty($_GET[id])){
    tampil_error('ID tidak ditemukan!');
}
elseif(!is_numeric($_GET[id])){
    tampil_error('ID tidak ditemukan!');
}
elseif($num_rows_r == 0){
    tampil_error('Data tidak ditemukan!');
}
else {
echo "<h2>Edit Penduduk</h2> 
<form method=POST action='$aksi?module=penduduk&act=update'  >
<input type=hidden name=id value='$r[id]'>
<table class='list'>
<tr><td>nik <font color='red'>*</font></td><td>: <input type='text' name='nik' size='20' class='' style='' value='".sanitize($r[nik])."' ></td></tr> <tr><td>nama <font color='red'>*</font></td><td>: <input type='text' name='nama' size='20' class='' style='' value='".sanitize($r[nama])."' ></td></tr>                
                
<tr><td>tmp_lhr <font color='red'>*</font></td><td>: <input type='text' name='tmp_lhr' size='20' class='' style='' value='".sanitize($r[tmp_lhr])."' ></td></tr>                
<tr><td>tgl_lhr <font color='red'>*</font></td><td>: <input type='text' name='tgl_lhr' size='20' class='' style='' value='".sanitize($r[tgl_lhr])."' ></td></tr>                
<tr><td>jk <font color='red'>*</font></td><td>:";
$sql_combobox7 = mysql_query("SELECT * FROM jk");
echo "<select name='jk' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox7=mysql_fetch_array($sql_combobox7)){
 if ($r['jk'] == $r_combobox7['id']){
     echo "<option value='".sanitize($r_combobox7[id])."' selected>".sanitize($r_combobox7[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox7[id])."'>".sanitize($r_combobox7[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>gol_drh </td><td>:";
$sql_combobox8 = mysql_query("SELECT * FROM gol_drh");
echo "<select name='gol_drh' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox8=mysql_fetch_array($sql_combobox8)){
 if ($r['gol_drh'] == $r_combobox8['id']){
     echo "<option value='".sanitize($r_combobox8[id])."' selected>".sanitize($r_combobox8[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox8[id])."'>".sanitize($r_combobox8[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>agama </td><td>:";
$sql_combobox9 = mysql_query("SELECT * FROM agama");
echo "<select name='agama' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox9=mysql_fetch_array($sql_combobox9)){
 if ($r['agama'] == $r_combobox9['id']){
     echo "<option value='".sanitize($r_combobox9[id])."' selected>".sanitize($r_combobox9[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox9[id])."'>".sanitize($r_combobox9[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>status_kawin <font color='red'>*</font></td><td>:";
$sql_combobox10 = mysql_query("SELECT * FROM status_kawin");
echo "<select name='status_kawin' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox10=mysql_fetch_array($sql_combobox10)){
 if ($r['status_kawin'] == $r_combobox10['id']){
     echo "<option value='".sanitize($r_combobox10[id])."' selected>".sanitize($r_combobox10[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox10[id])."'>".sanitize($r_combobox10[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>pendidikan </td><td>:";
$sql_combobox11 = mysql_query("SELECT * FROM pendidikan");
echo "<select name='pendidikan' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox11=mysql_fetch_array($sql_combobox11)){
 if ($r['pendidikan'] == $r_combobox11['id']){
     echo "<option value='".sanitize($r_combobox11[id])."' selected>".sanitize($r_combobox11[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox11[id])."'>".sanitize($r_combobox11[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>pekerjaan </td><td>:";
$sql_combobox12 = mysql_query("SELECT * FROM pekerjaan");
echo "<select name='pekerjaan' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox12=mysql_fetch_array($sql_combobox12)){
 if ($r['pekerjaan'] == $r_combobox12['id']){
     echo "<option value='".sanitize($r_combobox12[id])."' selected>".sanitize($r_combobox12[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox12[id])."'>".sanitize($r_combobox12[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>hub_klg </td><td>:";
$sql_combobox13 = mysql_query("SELECT * FROM hub_klg");
echo "<select name='hub_klg' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox13=mysql_fetch_array($sql_combobox13)){
 if ($r['hub_klg'] == $r_combobox13['id']){
     echo "<option value='".sanitize($r_combobox13[id])."' selected>".sanitize($r_combobox13[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox13[id])."'>".sanitize($r_combobox13[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>wrg_ngr </td><td>:";
$sql_combobox14 = mysql_query("SELECT * FROM wrg_ngr");
echo "<select name='wrg_ngr' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox14=mysql_fetch_array($sql_combobox14)){
 if ($r['wrg_ngr'] == $r_combobox14['id']){
     echo "<option value='".sanitize($r_combobox14[id])."' selected>".sanitize($r_combobox14[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox14[id])."'>".sanitize($r_combobox14[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td>ayah </td><td>: <input type='text' name='ayah' size='20' class='' style='' value='".sanitize($r[ayah])."' ></td></tr>                
<tr><td>ibu </td><td>: <input type='text' name='ibu' size='20' class='' style='' value='".sanitize($r[ibu])."' ></td></tr>                
<tr><td>keberadaan </td><td>:";
$sql_combobox17 = mysql_query("SELECT * FROM keberadaan");
echo "<select name='keberadaan' class='' style=''>
      <option value=''>--Pilih--</option>";
while ($r_combobox17=mysql_fetch_array($sql_combobox17)){
 if ($r['keberadaan'] == $r_combobox17['id']){
     echo "<option value='".sanitize($r_combobox17[id])."' selected>".sanitize($r_combobox17[nama])."</option>";
 }
 else {
     echo "<option value='".sanitize($r_combobox17[id])."'>".sanitize($r_combobox17[nama])."</option>";
 }
}
echo "</select></td></tr>
<tr><td colspan=2><input class='btn btn-primary' type=submit value=Update>
<a href='?module=penduduk' class='btn'>Kembali</a></td></tr>
</table>
</form>";
}
break;
case "preview":

$nosrt=$_GET['no'];
$jsk=$_GET['jns'];
$_SESSION['nosrt']=$nosrt;
$qq=mysql_query("Select * from temp_srt where nosrt='$nosrt' and id_jns='$jsk'");
while($r=mysql_fetch_array($qq)){
$qs=mysql_query("select * from temp_items where id='$r[id_temp]'");
while($rs=mysql_fetch_array($qs)){
	 $value=$rs['value'];
 $valu=$r['value'];
 $ides=$r['id_jns'];
 $_SESSION[$value]=$valu;

}
$_SESSION['tglsrt']=sundatgl($r['tglsrt']);
$a=mysql_query("Select * from penduduk where nik='$r[nik]'");
$b=mysql_fetch_array($a);
$_SESSION['nik']=$b['nik'];
$_SESSION['nama']=$b['nama'];
$_SESSION['tmp_lhr']=$b['tmp_lhr'];
$_SESSION['tgl_lhr']=sundatgl($b['tgl_lhr']);
$_SESSION['jk']=cek('jk',$b['jk']);
$_SESSION['gol_drh']=cek('gol_drh',$b['gol_drh']);
$_SESSION['agama']=cek('agama',$b['agama']);
$_SESSION['status_kawin']=cek('status_kawin',$b['status_kawin']);
$_SESSION['pendidikan']=cek('pendidikan',$b['pendidikan']);
$_SESSION['pekerjaan']=cek('pekerjaan',$b['pekerjaan']);
$_SESSION['hub_klg']=cek('hub_klg',$b['hub_klg']);
$_SESSION['wrg_ngr']=cek('wrg_ngr',$b['wrg_ngr']);
$_SESSION['ayah']=$b['ayah'];
$_SESSION['ibu']=$b['ibu'];
$_SESSION['keberadaan']=cek('keberadaan',$b['keberadaan']);

$a1=mysql_query("Select * from kk where id='$b[id_kk]'");
$b1=mysql_fetch_array($a1);
$_SESSION['nokk']=$b1['no_kk'];
$_SESSION['alamat']=$b1['alamat'];
$_SESSION['rt']=$b1['rt'];
$_SESSION['rw']=$b1['rw'];

$a2=mysql_query("Select * from penduduk where id_kk='$b1[id]' and hub_klg='1'");
$b2=mysql_fetch_array($a2);	
$_SESSION['nik1']=$b2['nik'];
$_SESSION['nama1']=$b2['nama'];
$_SESSION['tmp_lhr1']=$b2['tmp_lhr'];
$_SESSION['tgl_lhr1']=sundatgl($b2['tgl_lhr']);
$_SESSION['jk1']=cek('jk',$b2['jk']);
$_SESSION['gol_drh1']=cek('gol_drh',$b2['gol_drh']);
$_SESSION['agama1']=cek('agama',$b2['agama']);
$_SESSION['status_kawin1']=cek('status_kawin',$b2['status_kawin']);
$_SESSION['pendidikan1']=cek('pendidikan',$b2['pendidikan']);
$_SESSION['pekerjaan1']=cek('pekerjaan',$b2['pekerjaan']);
$_SESSION['hub_klg1']=cek('hub_klg',$b2['hub_klg']);
$_SESSION['wrg_ngr1']=cek('wrg_ngr',$b2['wrg_ngr']);
$_SESSION['ayah1']=$b2['ayah'];
$_SESSION['ibu1']=$b2['ibu'];
$_SESSION['keberadaan1']=cek('keberadaan',$b2['keberadaan']);

$a3=mysql_query("Select * from penduduk where id_kk='$b1[id]' and hub_klg='2'");
$b3=mysql_fetch_array($a3);	
$_SESSION['nik2']=$b3['nik'];
$_SESSION['nama2']=$b3['nama'];
$_SESSION['tmp_lhr2']=$b3['tmp_lhr'];
$_SESSION['tgl_lhr2']=sundatgl($b3['tgl_lhr']);
$_SESSION['jk2']=cek('jk',$b3['jk']);
$_SESSION['gol_drh2']=cek('gol_drh',$b3['gol_drh']);
$_SESSION['agama2']=cek('agama',$b3['agama']);
$_SESSION['status_kawin2']=cek('status_kawin',$b3['status_kawin']);
$_SESSION['pendidikan2']=cek('pendidikan',$b3['pendidikan']);
$_SESSION['pekerjaan2']=cek('pekerjaan',$b3['pekerjaan']);
$_SESSION['hub_klg2']=cek('hub_klg',$b3['hub_klg']);
$_SESSION['wrg_ngr2']=cek('wrg_ngr',$b3['wrg_ngr']);
$_SESSION['ayah2']=$b3['ayah'];
$_SESSION['ibu2']=$b3['ibu'];
$_SESSION['keberadaan2']=cek('keberadaan',$b3['keberadaan']);
}
$q=mysql_query("Select * from jns_sk where id='$ides'");

$rr=mysql_fetch_array($q);

$php1=$rr['template'];
 $php2=str_replace('*[','<?php echo $_SESSION[',$php1);
 $php=str_replace(']*',']; ?>',$php2);
      ob_start();
eval(" ?>" . $php . "<?php ");
$kueri=mysql_query("Select * from jns_sk where id='$jsk'");
$rkueri=mysql_fetch_array($kueri);

 $output = ob_get_contents();
    // clear buffer and stop buffering
    ob_end_clean();
 
    // this line show the parsed final data in the browser
	
    echo "<div id='prevsurat'><table align='center' width='700px'style='-webkit-box-shadow: 17px 19px 58px 6px rgba(0,0,0,0.69);-moz-box-shadow: 17px 19px 58px 6px rgba(0,0,0,0.69);box-shadow: 17px 19px 58px 6px rgba(0,0,0,0.69);'><tr style='background-color: #ffff; '><td style='padding-left:5px;padding-right:5px;padding-bottom:5px;padding-top:0;'>
	";
	if($rkueri[status]==1){
echo"<br><img src='kop/$_SESSION[kop]'>";
}
	echo"
	
	$output</td></tr></table>";
	if($jsk=='35'){
	echo"<table border=1 width='100%'><tr><td>NO</td><td>NIK</td><td>NAMA</td><td>SHDK</td></tr>";
	$nob=1;
	$aq=mysql_query("select * from penduduk where id_kk='$b[id_kk]'");
	while($at=mysql_fetch_array($aq)){
		echo"<tr><td>$nob</td><td>$at[nik]</td><td>$at[nama]</td><td>".cek('hub_klg',$at[hub_klg])."</td></tr>";
		$nob++;
	}

	echo"</table>
	<table>
	<tr><td>Diketahui oleh:</td><td>Pemohon</td><td>Dikeluarkan Oleh</td></tr>
	<tr><td>Camat $_SESSION[nmkec]</td><td></td><td>Kepala Desa $_SESSION[nmdesa]</td></tr>
	<tr><td></td><td></td><td></td></tr>
	
	</table>
	</div>";
	}
	echo"<div align='center' id='prexsurat'><a href='mod/mod_surat/print.php?no=$nosrt&jns=$jsk'><img src='img/Word-icon.png'></a> <a href=# onclick='window.print();'><img src='img/print.png'</a></div>";
break;
}
}
?>
