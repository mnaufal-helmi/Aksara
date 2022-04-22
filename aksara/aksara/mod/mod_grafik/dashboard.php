<?php
include "../../config/koneksi.php";

$categories =  array(
	'0-4', '5-9', '10-14', '15-19',
	'20-24', '25-29', '30-34', '35-39', '40-44',
	'45-49', '50-54', '55-59', '60-64', '65-69',
	'70-74', '75+'
);

// hitung total penduduk
$sql = "SELECT COUNT(id) AS jml FROM penduduk";
$total = mysql_fetch_array(mysql_query($sql));

for ($i = 0; $i < count($categories); $i++) {
	$str = (explode("-", $categories[$i]));

	$to = date("Y/m/d", strtotime("-$str[0] years"));
	$from = date('Y/m/d', strtotime("-$str[1] years"));

	if ($str[1] === NULL) { // untuk umur 75+
		$from = date('Y/m/d', strtotime("-75 years"));

		$sql = "SELECT COUNT(id) AS jml FROM penduduk WHERE DATE_FORMAT(STR_TO_DATE(tgl_lhr, '--%d/%m/%Y'), '%Y/%m/%d') <= '$from' AND jk = 1";
		$lk = mysql_fetch_array(mysql_query($sql));

		$sql = "SELECT COUNT(id) AS jml FROM penduduk WHERE DATE_FORMAT(STR_TO_DATE(tgl_lhr, '--%d/%m/%Y'), '%Y/%m/%d') <= '$from' AND jk = 2";
		$pr = mysql_fetch_array(mysql_query($sql));
	} else {

		$sql = "SELECT COUNT(id) AS jml FROM penduduk WHERE DATE_FORMAT(STR_TO_DATE(tgl_lhr, '--%d/%m/%Y'), '%Y/%m/%d') BETWEEN '$from' AND '$to' AND jk = 1";
		$lk = mysql_fetch_array(mysql_query($sql));

		$sql = "SELECT COUNT(id) AS jml FROM penduduk WHERE DATE_FORMAT(STR_TO_DATE(tgl_lhr, '--%d/%m/%Y'), '%Y/%m/%d') BETWEEN '$from' AND '$to' AND jk = 2";
		$pr = mysql_fetch_array(mysql_query($sql));
	}

	// Laki-laki
	$persen = ($lk['jml'] / $total['jml'] * 100);
	$negative = '-' . $persen;
	$dataLK[$i] = (float) $negative;

	// perempuan
	$persen = ($pr['jml'] / $total['jml'] * 100);
	$dataPR[$i] = (float) $persen;
}
?>

<div id='container' style='height:500px;'></div>

<script src="jx/jquery-3.1.1.min.js"></script>
<script src="jx/highcharts.js"></script>
<script src="jx/exporting.js"></script>

<script type='text/javascript'>
	// Data gathered from http://populationpyramid.net/germany/2015/

	// Age categories
	var categories = <?php echo json_encode($categories) ?>;


	Highcharts.chart('container', {
		chart: {
			type: 'bar'
		},
		title: {
			text: 'PIRAMIDA PENDUDUK'
		},
		
		accessibility: {
			point: {
				valueDescriptionFormat: '{index}. Age {xDescription}, {value}%.'
			}
		},
		xAxis: [{
			categories: categories,
			reversed: false,
			labels: {
				step: 1
			},
			accessibility: {
				description: 'Age (Laki-laki)'
			}
		}, { // mirror axis on right side
			opposite: true,
			reversed: false,
			categories: categories,
			linkedTo: 0,
			labels: {
				step: 1
			},
			accessibility: {
				description: 'Age (perempuan)'
			}
		}],
		yAxis: {
			title: {
				text: null
			},
			labels: {
				formatter: function() {
					return Math.abs(this.value) + '%';
				}
			},
			accessibility: {
				description: 'Percentage population',
				rangeDescription: 'Range: 0 to 5%'
			}
		},

		plotOptions: {
			series: {
				stacking: 'normal'
			}
		},

		tooltip: {
			formatter: function() {
				return '<b>' + this.series.name + ', age ' + this.point.category + '</b><br/>' +
					'Population: ' + Highcharts.numberFormat(Math.abs(this.point.y), 1) + '%';
			}
		},

		series: [{
			name: 'Laki-laki',
			data: <?php echo json_encode($dataLK); ?>
		}, {
			name: 'perempuan',
			data: <?php echo json_encode($dataPR); ?>
		}]
	});
</script>