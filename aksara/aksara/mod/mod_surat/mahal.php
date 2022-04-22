case "preview":
$nosrt=$_GET['no'];
$_SESSION['nosrt']=$nosrt;
$qq=mysql_query("Select * from temp_srt where nosrt='$nosrt'");
$r=mysql_fetch_array($qq);
$q=mysql_query("select * from jns_sk where id='$r[id_jns]'");
$rr=mysql_fetch_array($q);

$php1=$rr['template'];
$php2=str_replace(':r[','<?php echo $r[',$php1);
$php=str_replace(']:','];?>',$php2);
   ob_start();
eval(" ?>" . $php . "<?php ");
 $output = ob_get_contents();
    // clear buffer and stop buffering
    ob_end_clean();
 
    // this line show the parsed final data in the browser
    echo $output;
break;