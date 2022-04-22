<?php
include"../../config/koneksi.php";
    
    $id = abs((int)$_GET['id']);
    $categories = Array();
    $jumlah = Array();
    
        $c = mysql_query("select * from status_kawin")or die(mysql_error());
               while($d = mysql_fetch_array($c)){
            $categories[]=$d['nama'];
                        $s0 = mysql_query("select count(*) as jml from penduduk where status_kawin = '$d[id]'") or die(mysql_error());
                          $d0 = mysql_fetch_array($s0);
            $jumlah[]=$d0['jml'];
        }   
    

?>

<script type='text/javascript'>

$(function () {
    $('#container').highcharts({
        chart: {
            type: 'bar'
        },
        title: {
            text: '<?php echo "<h2>Data Kategori Status Kawin</h2>"; ?>'

        },
        subtitle: {
            text: 'Desa '
        },
        xAxis: {
            categories: [<?php for($i = 0;$i<sizeof($categories);$i++){echo "'".$categories[$i]."',";} ?>],
            title: {
                text: null
            }
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Jumlah ',
                align: 'high'
            },
            labels: {
                overflow: 'justify'
            }
        },
        tooltip: {
            valueSuffix: ' '
        },
        plotOptions: {
            bar: {
                dataLabels: {
                    enabled: true
                }
            }
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'top',
            x: -40,
            y: 100,
            floating: true,
            borderWidth: 1,
            backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
            shadow: true
        },
        credits: {
            enabled: false
        },
        series: [{
            showInLegend:false,
            name:'Jumlah ',
            data: [<?php for($i = 0;$i<sizeof($jumlah);$i++){echo $jumlah[$i].',';} ?>]
        }]
    });
});

</script>
<button onclick='history.back()' class='btn-back'><i class='fa fa-arrow-circle-left'></i> Kembali</button><div id='container' style='height:500px;'></div>
<div>
<table id='example' class='table table-striped responsive-utilities jambo_table'>
<tr><th>No</th><th>Status Kawin</th><th>Jumlah</th></tr>
<?
$no=1;
$q = mysql_query("select * from status_kawin")or die(mysql_error());
               while($r = mysql_fetch_array($q)){
            echo"<tr><td>$no</td><td>$r[nama]</td>";
                        $s1 = mysql_query("select count(*) as jml from penduduk where status_kawin = '$r[id]'") or die(mysql_error());
                          $d1 = mysql_fetch_array($s1);
            echo"<td>$d1[jml]</td></tr>";
			$no++;
        }
?>		
</table>
</div>
