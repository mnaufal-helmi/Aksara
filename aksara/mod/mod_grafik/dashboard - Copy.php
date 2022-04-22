<?php
include"../../config/koneksi.php";

    
    $id = abs((int)$_GET['id']);
    $categories = Array();
    $jumlah = Array();
    
        $c = mysql_query("select * from jns_sk")or die(mysql_error());
               while($d = mysql_fetch_array($c)){
            $categories[]=$d['nama'];
                        $s0 = mysql_query("select id_jns, count(DISTINCT nosrt) as jml from temp_srt where id_jns = '$d[id]' ") or die(mysql_error());
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
            text: '<?php echo "<h2>Grafik Permohonan Surat</h2>"; ?>'

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

<div id='container' style='height:500px;'></div>



