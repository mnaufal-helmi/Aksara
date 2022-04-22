DROP TABLE agama;

CREATE TABLE `agama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO agama VALUES("1","ISLAM");
INSERT INTO agama VALUES("2","PROTESTAN");
INSERT INTO agama VALUES("3","KHATOLIK");
INSERT INTO agama VALUES("4","HINDU");
INSERT INTO agama VALUES("5","BUDHA");
INSERT INTO agama VALUES("6","KONG HUCU");
INSERT INTO agama VALUES("7","KEPERCAYAAN");
INSERT INTO agama VALUES("8","KRISTEN");



DROP TABLE desa;

CREATE TABLE `desa` (
  `id` varchar(50) NOT NULL,
  `id_kab` int(11) NOT NULL,
  `id_kec` int(11) NOT NULL,
  `nmdesa` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `kpldesa` varchar(50) NOT NULL,
  `nipkpldesa` varchar(30) NOT NULL,
  `no_telp` varchar(25) NOT NULL,
  `email` varchar(55) NOT NULL,
  `website` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO desa VALUES("3208010001","1","11","Cimenga","","","","","","");



DROP TABLE gol_drh;

CREATE TABLE `gol_drh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO gol_drh VALUES("1","A");
INSERT INTO gol_drh VALUES("2","B");
INSERT INTO gol_drh VALUES("3","AB");
INSERT INTO gol_drh VALUES("4","O");
INSERT INTO gol_drh VALUES("5","A+");
INSERT INTO gol_drh VALUES("6","A-");
INSERT INTO gol_drh VALUES("7","B+");
INSERT INTO gol_drh VALUES("8","B-");
INSERT INTO gol_drh VALUES("9","AB+");
INSERT INTO gol_drh VALUES("10","AB-");
INSERT INTO gol_drh VALUES("11","-");



DROP TABLE hub_klg;

CREATE TABLE `hub_klg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO hub_klg VALUES("1","Kepala Keluarga");
INSERT INTO hub_klg VALUES("2","Suami");
INSERT INTO hub_klg VALUES("3","Istri");
INSERT INTO hub_klg VALUES("4","Anak");
INSERT INTO hub_klg VALUES("5","Menantu");
INSERT INTO hub_klg VALUES("6","Cucu");
INSERT INTO hub_klg VALUES("7","Orang Tua");
INSERT INTO hub_klg VALUES("8","Mertua");
INSERT INTO hub_klg VALUES("9","Famili Lain");
INSERT INTO hub_klg VALUES("10","Pembantu");
INSERT INTO hub_klg VALUES("11","Lainnya");



DROP TABLE jk;

CREATE TABLE `jk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO jk VALUES("1","LAKI-LAKI");
INSERT INTO jk VALUES("2","PEREMPUAN");



DROP TABLE jns_sk;

CREATE TABLE `jns_sk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(75) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `template` text NOT NULL,
  `no_srt` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `ket` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

INSERT INTO jns_sk VALUES("11","474/*0*/DS.2011/","Surat Keterangan KTP Sementara","<p><strong><span style=\"font-family:Bookman Old Style,serif; font-size:9.0pt\">Kode Desa :&nbsp; 32.05.05.201</span></strong></p>\n\n<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,sans-serif\"><u><span style=\"font-family:Arial,sans-serif\">KARTU TANDA PENDUDUK (KTP) SEMENTARA</span></u></span></strong><br />\n<span style=\"font-family:Arial,sans-serif\">Nomor : *[no_srt]*</span><br />\n&nbsp;</p>\n\n<p style=\"text-align:left\"><span style=\"font-family:Arial,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Yang bertanda-tangan di bawah ini, Kepala Desa&nbsp;</span><span style=\"font-family:Arial,sans-serif\">*[nmdesa]*</span><span style=\"font-family:Arial,sans-serif\"> Kecamatan *[nmkec]*&nbsp;Kabupaten Garut, menerangkan bahwa.</span></p>\n\n<div>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse\">\n	<tbody>\n		<tr>\n			<td style=\"width:111.75pt\">\n			<p><span style=\"font-family:Arial,sans-serif\">N a m a</span></p>\n\n			<p><strong><span style=\"font-family:Arial,sans-serif\">NIK</span></strong></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">Tempat/Tgl. Lahir</span></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">Jenis Kelamin</span></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">Agama</span></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">Pekerjaan</span></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">Alamat</span></p>\n			</td>\n			<td style=\"width:14.15pt\">\n			<p><span style=\"font-family:Arial,sans-serif\">:</span></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">:</span></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">:</span></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">:</span></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">:</span></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">:</span></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">:</span></p>\n			</td>\n			<td style=\"width:271.35pt\">\n			<p><strong><span style=\"font-family:Arial,sans-serif\">*[nama]*</span></strong></p>\n\n			<p><strong><span style=\"font-family:Arial,sans-serif\">*[nik]*</span></strong></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">*[tmp_lhr]*, &nbsp;*[tgl_lhr]*</span></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">*[jk]*</span></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">*[agama]*</span></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">*[pekerjaan]*</span></p>\n\n			<p><span style=\"font-family:Arial,sans-serif\">*[alamat]* &nbsp;RT *[rt]*&nbsp;&nbsp; RW&nbsp; *[rw]*&nbsp;&nbsp; Desa *[nmdesa]* Kecamatan *[nmkec]* Kabupaten Garut</span></p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n</div>\n\n<p><span style=\"font-family:Arial,sans-serif\">&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</span></p>\n\n<p><span style=\"font-family:Arial,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Adalah salah seorang warga masyarakat kami, telah memohon surat keterangan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</span></p>\n\n<p style=\"text-align:center\"><strong><span style=\"font-family:Arial,sans-serif\">======== KARTU TANDA PENDUDUK (KTP) SEMENTARA ========</span></strong></p>\n\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Surat</span><span style=\"font-family:Arial,sans-serif\">&nbsp; keterangan&nbsp; ini, kami berikan&nbsp; kepadanya&nbsp; berdasarkan atas sepengetahuan dan pertimbangan bahwa nama tersebut di atas&nbsp; benar-benar&nbsp; salah seorang warga masyarakat Desa kami yang tinggal secara menjdhfjdfhdjfjd etap di alamat tersebut di atas&nbsp;</span><span style=\"font-family:Arial,sans-serif\">dan sampai saat ini masih tercatat dalam buku kependudukan sesuai dengan surat keterangan yang diberikan oleh para ketua RT dan RW nya Dan perlu kami sampaikan bahwa KTP yang bersangkutan sedang dalam proses pembuatan. Desa Tarogong</span><br />\n<br />\n<span style=\"font-family:Arial,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Demikian Surat Keterangan ini dibuat dengan sebenarnya untuk dipergunakan seperlunya dan yang berkepentingan agar menjadi maklum.</span></p>\n\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:collapse; margin-left:27pt\">\n	<tbody>\n		<tr>\n			<td style=\"width:231.05pt\">&nbsp;</td>\n			<td style=\"width:231.05pt\">\n			<p style=\"margin-right:23.8pt; text-align:center\"><span style=\"font-family:Arial,sans-serif\">*[nmdesa]*</span><span style=\"font-family:Arial,sans-serif\">, </span><span style=\"font-family:Arial,sans-serif\">&nbsp;*[tglsrt]*</span><br />\n			<span style=\"font-family:Arial,sans-serif\">*[an]*</span><span style=\"font-family:Arial,sans-serif\">&nbsp;&nbsp; Kepala Desa </span><strong>*[nmdesa]*</strong><br />\n			*[jabatan]*<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<strong><span style=\"font-family:Arial,sans-serif\">*[nm_ttd]*</span></strong></p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n","25","1","1","1");
INSERT INTO jns_sk VALUES("27","100/*0*/SK-BM/NKTGG/","Surat Keterangan Belum Menikah","<p><br /> <span style=\"font-family: Arial, sans-serif; font-size: 10.6667px; letter-spacing: 0.533333px;\">Kode Desa :&nbsp; 32.05.05.2011</span></p>\n<div class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: center;\" align=\"center\"><br /><span style=\"font-family: Arial; font-size: 14px;\"><strong><u><span style=\"font-size: 16px;\">SURAT KETERANGAN</span></u></strong></span></div>\n<div class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: center;\" align=\"center\"><span style=\"font-family: Arial; font-size: 14px;\">Nomor : *[no_srt]*</span></div>\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">&nbsp;</span></p>\n<div class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify; text-indent: 36pt;\"><span style=\"font-family: Arial; font-size: 14px;\">Yang bertanda tangan di bawah ini Kepala Desa *[nmdesa]* Kecamatan *[nmkec]* Kabupaten *[nmkab]*, dengan ini menerangkan bahwa :</span></div>\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">&nbsp;</span></p>\n<table class=\"MsoTableGrid\" style=\"margin-left: 40.85pt; border-collapse: collapse; width: 675px; height: 217px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"width: 176.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">Nama</span></p>\n</td>\n<td style=\"width: 13.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">:</span></p>\n</td>\n<td style=\"width: 437.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">*[nama]*</span></p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 176.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">Tempat/Tgl. Lahir</span></p>\n</td>\n<td style=\"width: 13.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">:</span></p>\n</td>\n<td style=\"width: 437.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">*[tmp_lhr]*/*[tgl_lhr]*</span></p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 176.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">Jenis Kelamin</span></p>\n</td>\n<td style=\"width: 13.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">:</span></p>\n</td>\n<td style=\"width: 437.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">*[jk]*</span></p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 176.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">Status Perkawinan</span></p>\n</td>\n<td style=\"width: 13.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">:</span></p>\n</td>\n<td style=\"width: 437.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">*[status_kawin]*</span></p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 176.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">Pekerjaan</span></p>\n</td>\n<td style=\"width: 13.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">:</span></p>\n</td>\n<td style=\"width: 437.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">*[pekerjaan]*</span></p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 176.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">Alamat</span></p>\n</td>\n<td style=\"width: 13.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">:</span></p>\n</td>\n<td style=\"width: 437.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">*[alamat]*</span></p>\n</td>\n</tr>\n<tr>\n<td style=\"width: 176.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">NIK</span></p>\n</td>\n<td style=\"width: 13.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">:</span></p>\n</td>\n<td style=\"width: 437.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">*[nik]*</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">&nbsp;</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify; text-indent: 36pt;\"><span style=\"font-family: Arial; font-size: 14px;\">Sepanjang yang kami ketahui dan menurut data yang ada pada kami bahwa nama tersebut diatas memang benar&nbsp;</span><span style=\"font-family: Arial; font-size: 14px;\"><strong>BELUM MENIKAH&nbsp;</strong></span><span style=\"font-family: Arial; font-size: 14px;\">atau masih Jejaka / Perawan. Surat keterangan ini akan digunakan untuk *[tujuansurat]*.</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify; text-indent: 36pt;\"><span style=\"font-family: Arial; font-size: 14px;\">Demikian surat keterangan ini kami berikan kepada yang bersangkutan untuk dapat dipergunakan sebagaimana mestinya.</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify;\"><span style=\"font-family: Arial; font-size: 14px;\">&nbsp;</span></p>\n<table class=\"MsoTableGrid\" style=\"margin-left: 225.15pt; border-collapse: collapse; height: 111px; float: right;\" border=\"0\" width=\"315\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td style=\"width: 298.625px; padding: 0cm 5.4pt;\" valign=\"top\">\n<p style=\"margin: 0cm 0cm 0.0001pt; text-align: center;\" align=\"center\"><span style=\"font-family: Arial; font-size: 14px;\">*[nmdesa]*, *[tglsrt]*<br />*[an]* Kepala Desa *[nmdesa]*</span></p>\n<p style=\"margin: 0cm 0cm 0.0001pt; text-align: center;\" align=\"center\"><span style=\"font-family: Arial; font-size: 14px;\">&nbsp;</span></p>\n<p style=\"margin: 0cm 0cm 0.0001pt; text-align: center;\" align=\"center\"><span style=\"font-family: Arial; font-size: 14px;\">&nbsp;</span></p>\n<p style=\"margin: 0cm 0cm 0.0001pt; text-align: center;\" align=\"center\"><span style=\"font-family: Arial; font-size: 14px;\"><br /><strong><u>*[nm_ttd]*</u></strong><br />*[nip]*</span></p>\n</td>\n</tr>\n</tbody>\n</table>","9","1","0","1");
INSERT INTO jns_sk VALUES("36","*0*/SK/NKGG/","Permohonan KTP","<table style=\"width: 741px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><colgroup><col width=\"89\"></col>\n <col width=\"6\" /> <col span=\"34\" width=\"19\" /> </colgroup>\n<tbody>\n<tr>\n<td width=\"89\" height=\"17\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"6\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td class=\"xl113\" rowspan=\"2\" colspan=\"4\" width=\"76\">\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td style=\"text-align: center;\"><span style=\"font-size: xx-small;\"><strong>F-1.07</strong></span></td>\n</tr>\n</tbody>\n</table>\n</td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td width=\"19\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n</tr>\n<tr>\n<td height=\"17\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n</tr>\n<tr>\n<td height=\"17\"><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n</tr>\n<tr>\n<td class=\"xl109\" colspan=\"36\" height=\"17\"><span style=\"font-size: xx-small;\">FORMULIR PERMOHONAN KARTU TANDA PENDUDUK ( KTP )</span></td>\n</tr>\n<tr>\n<td class=\"xl65\" height=\"17\"><span style=\"font-size: xx-small;\">Perhatian</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n</tr>\n<tr>\n<td class=\"xl65\" colspan=\"15\" height=\"17\"><span style=\"font-size: xx-small;\">1. Harap diisi dengan HURUF CETAK dan menggunakan TINTA HITAM</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n</tr>\n<tr>\n<td class=\"xl65\" colspan=\"16\" height=\"17\"><span style=\"font-size: xx-small;\">2. Untuk kolom pilihan, harap memberi tanda silang ( X ) pada kotak pilihan</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n<td><span style=\"font-size: xx-small;\">&nbsp;</span></td>\n</tr>\n<tr>\n<td class=\"xl68\" colspan=\"22\" height=\"17\"><span style=\"font-size: xx-small;\">&nbsp;&nbsp;&nbsp; Setelah Formulir ini diisi dan ditanda tangani, harap diserahkan kembali ke kantor Kepala Desa</span></td>\n<td class=\"xl69\">&nbsp;</td>\n<td class=\"xl69\">&nbsp;</td>\n<td class=\"xl69\">&nbsp;</td>\n<td class=\"xl69\">&nbsp;</td>\n<td class=\"xl69\">&nbsp;</td>\n<td class=\"xl69\">&nbsp;</td>\n<td class=\"xl69\">&nbsp;</td>\n<td class=\"xl69\">&nbsp;</td>\n<td class=\"xl69\">&nbsp;</td>\n<td class=\"xl69\">&nbsp;</td>\n<td class=\"xl69\">&nbsp;</td>\n<td class=\"xl69\">&nbsp;</td>\n<td class=\"xl69\">&nbsp;</td>\n<td class=\"xl69\">&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td class=\"xl110\" colspan=\"9\" height=\"17\">PEMERINTAH PROPINSI</td>\n<td class=\"xl70\">:</td>\n<td class=\"xl71\" align=\"right\">1</td>\n<td class=\"xl71\" align=\"right\">3</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl94\" colspan=\"18\">\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>Sumatera Barat</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td class=\"xl110\" colspan=\"9\" height=\"17\">PEMERINTAH KABUPATEN / KOTA</td>\n<td class=\"xl70\">:</td>\n<td class=\"xl71\" align=\"right\"></td>\n<td class=\"xl71\" align=\"right\">2</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl94\" colspan=\"18\">\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>*[nmkab]*\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td class=\"xl110\" colspan=\"9\" height=\"17\">KECAMATAN</td>\n<td class=\"xl70\">:</td>\n<td class=\"xl71\" align=\"right\">&nbsp;</td>\n<td class=\"xl71\" align=\"right\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl94\" colspan=\"18\">\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>*[nmkec]*</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td class=\"xl110\" colspan=\"9\" height=\"17\">NAGARI</td>\n<td class=\"xl70\">:</td>\n<td class=\"xl72\" align=\"right\">&nbsp;</td>\n<td class=\"xl72\" align=\"right\">&nbsp;</td>\n<td class=\"xl71\" align=\"right\">&nbsp;</td>\n<td class=\"xl71\" align=\"right\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl97\" colspan=\"18\">\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>*[nmdesa]*</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td class=\"xl100\" colspan=\"5\" height=\"17\">PERMOHONAN KTP</td>\n<td class=\"xl71\">\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>&nbsp;</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"xl106\" colspan=\"5\">A. Baru</td>\n<td>&nbsp;</td>\n<td class=\"xl67\">&nbsp;\n<table border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>&nbsp;</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"xl106\" colspan=\"7\">B.Perpanjangan</td>\n<td>&nbsp;</td>\n<td class=\"xl67\">&nbsp;\n<table border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>&nbsp;</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"xl106\" colspan=\"7\">C.Penggantian</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td class=\"xl66\" height=\"17\">1.Nama Lengkap</td>\n<td class=\"xl65\">&nbsp;</td>\n<td class=\"xl101\" colspan=\"34\"><br />\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>*[nama]*</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td class=\"xl65\" height=\"3\">&nbsp;</td>\n<td class=\"xl65\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td class=\"xl66\" height=\"17\">2.No. KK</td>\n<td class=\"xl65\">&nbsp;</td>\n<td class=\"xl101\" colspan=\"20\">&nbsp;\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>*[nokk]*</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td class=\"xl65\" height=\"3\">&nbsp;</td>\n<td class=\"xl65\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td class=\"xl66\" height=\"17\">3.NIK</td>\n<td class=\"xl65\">&nbsp;</td>\n<td class=\"xl101\" colspan=\"20\">&nbsp;\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>*[nik]*</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td class=\"xl66\" height=\"16\">4.Pekerjaan</td>\n<td class=\"xl65\">&nbsp;</td>\n<td class=\"xl101\" colspan=\"20\">&nbsp;\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>*[pekerjaan]*</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td class=\"xl104\" colspan=\"4\">Gol.Darah</td>\n<td class=\"xl101\" colspan=\"4\">&nbsp;\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>*[gol_drh]*</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td class=\"xl66\" height=\"17\">4.Alamat</td>\n<td class=\"xl65\">&nbsp;</td>\n<td class=\"xl101\" colspan=\"34\">&nbsp;\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>*[alamat]*</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td height=\"2\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td class=\"xl101\" colspan=\"34\">&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td class=\"xl67\">R</td>\n<td class=\"xl67\">T</td>\n<td>&nbsp;</td>\n<td class=\"xl101\" colspan=\"3\">&nbsp;\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>&nbsp;</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>&nbsp;</td>\n<td class=\"xl67\">R</td>\n<td class=\"xl67\">W</td>\n<td>&nbsp;</td>\n<td class=\"xl119\" colspan=\"3\" width=\"57\">&nbsp;\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>&nbsp;</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td class=\"xl104\" colspan=\"4\">Kode Post</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl122\" colspan=\"5\">&nbsp;\n<table style=\"width: 100%;\" border=\"1\" align=\"left\">\n<tbody>\n<tr>\n<td>&nbsp;</td>\n</tr>\n</tbody>\n</table>\n</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td class=\"xl73\">&nbsp;</td>\n<td class=\"xl73\">&nbsp;</td>\n<td>&nbsp;</td>\n<td class=\"xl73\">&nbsp;</td>\n<td class=\"xl73\">&nbsp;</td>\n<td class=\"xl73\">&nbsp;</td>\n<td>&nbsp;</td>\n<td class=\"xl73\">&nbsp;</td>\n<td class=\"xl73\">&nbsp;</td>\n<td>&nbsp;</td>\n<td class=\"xl74\">&nbsp;</td>\n<td class=\"xl73\">&nbsp;</td>\n<td class=\"xl73\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td class=\"xl75\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td class=\"xl70\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td class=\"xl106\" colspan=\"6\" height=\"17\">Spesimen tanda Tanggan</td>\n<td class=\"xl106\" colspan=\"6\">Cap Jempol</td>\n<td class=\"xl106\" colspan=\"6\">Pas Photo</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td class=\"xl86\" rowspan=\"9\" colspan=\"6\" height=\"153\">&nbsp;</td>\n<td class=\"xl76\" rowspan=\"9\" colspan=\"6\">&nbsp;</td>\n<td class=\"xl76\" rowspan=\"9\" colspan=\"6\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td class=\"xl85\" colspan=\"15\">*[nmdesa]* , *[tglsrt]*</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td class=\"xl85\" colspan=\"10\">Pemohon</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td class=\"xl83\" colspan=\"10\">( *[nama]* )</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td class=\"xl85\" colspan=\"10\">Mengetahui Kepala Desa</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n<tr>\n<td height=\"17\">&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n<td class=\"xl83\" colspan=\"10\">( *[kpldesa]* )</td>\n<td>&nbsp;</td>\n</tr>\n</tbody>\n</table>","0","2","0","1");
INSERT INTO jns_sk VALUES("40","100/*0*/SK/NKTGG/","Surat Keterangan Janda / Duda","<p>\n\n</p>\n<p>&nbsp;<img src=\"img/logo/KOPS KOTO GADANG.jpg\" style=\"width:700px;height:122px\" alt=\"\" /><br style=\"cursor: default\" /><br style=\"cursor: default\" /></p><p class=\'MsoNormal\' align=\'center\' style=\'margin-bottom: 0.0001pt; text-align: center;line-height:115%\'><b><u><span style=\"font-size:14.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">SURAT KETERANGAN<o:p></o:p></span></u></b></p><p class=\'MsoNormal\' align=\'center\' style=\'margin-bottom: 0.0001pt; text-align: center;line-height:115%\'><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">Nomor\n: *[no_srt]*<o:p></o:p></span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify\'><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">&nbsp;</span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify; text-indent: 36pt\'><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">Yang bertanda tangan di bawah ini Kepala Desa *[nmdesa]* Kecamatan *[nmkec]* Kabupaten *[nmkab]*, dengan ini menerangkan bahwa :<o:p></o:p></span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify; text-indent: 36pt\'><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">&nbsp;</span></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'margin-left: 40.85pt; border-collapse: collapse\'>\n <tbody><tr>\n  <td width=\"151\" valign=\"top\" style=\"width:112.9pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">Nama<o:p></o:p></span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.7pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">:<o:p></o:p></span></p>\n  </td>\n  <td width=\"360\" valign=\"top\" style=\"width:269.85pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">*[nama]*<o:p></o:p></span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"151\" valign=\"top\" style=\"width:112.9pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">Tempat/Tgl.\n  Lahir<o:p></o:p></span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.7pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">:<o:p></o:p></span></p>\n  </td>\n  <td width=\"360\" valign=\"top\" style=\"width:269.85pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">*[tmp_lhr]*/*[tgl_lhr]*<o:p></o:p></span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"151\" valign=\"top\" style=\"width:112.9pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">Jenis\n  Kelamin<o:p></o:p></span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.7pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">:<o:p></o:p></span></p>\n  </td>\n  <td width=\"360\" valign=\"top\" style=\"width:269.85pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">*[jk]*<o:p></o:p></span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"151\" valign=\"top\" style=\"width:112.9pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">Status\n  Kawin<o:p></o:p></span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.7pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">:<o:p></o:p></span></p>\n  </td>\n  <td width=\"360\" valign=\"top\" style=\"width:269.85pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">*[status_kawin]*<o:p></o:p></span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"151\" valign=\"top\" style=\"width:112.9pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">Agama<o:p></o:p></span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.7pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">:<o:p></o:p></span></p>\n  </td>\n  <td width=\"360\" valign=\"top\" style=\"width:269.85pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">*[agama]*<o:p></o:p></span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"151\" valign=\"top\" style=\"width:112.9pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">Pekerjaan\n  Terakhir<o:p></o:p></span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.7pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">:<o:p></o:p></span></p>\n  </td>\n  <td width=\"360\" valign=\"top\" style=\"width:269.85pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">*[pekerjaan]*<o:p></o:p></span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"151\" valign=\"top\" style=\"width:112.9pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">Alamat<o:p></o:p></span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.7pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">:<o:p></o:p></span></p>\n  </td>\n  <td width=\"360\" valign=\"top\" style=\"width:269.85pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">*[alamat]*<o:p></o:p></span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"151\" valign=\"top\" style=\"width:112.9pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">NIK<o:p></o:p></span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.7pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">:<o:p></o:p></span></p>\n  </td>\n  <td width=\"360\" valign=\"top\" style=\"width:269.85pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">*[nik]*<o:p></o:p></span></p>\n  </td>\n </tr>\n</tbody></table><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify; text-indent: 36pt\'><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">&nbsp;</span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify; text-indent: 36pt\'><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">Sepanjang yang kami ketahui dan menurut data yang ada pada kami bahwa nama yang tersebut diatas benar - benar&nbsp;<b>*[janda_duda]*</b>\ndari seorang *[laki_perempuan]* bernama <b>*[nm_mantan]*</b>.<o:p></o:p></span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify; text-indent: 36pt\'><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">Demikian\nsurat keterangan ini kami berikan kepada yang bersangkutan untuk dipergunakan\nsebagaimana mestinya.<o:p></o:p></span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify; text-indent: 36pt\'><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\">&nbsp;</span></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'293\' style=\'width: 219.7pt; margin-left: 225.15pt; border-collapse: collapse\'>\n <tbody><tr>\n  <td width=\"293\" valign=\"top\" style=\"width:219.7pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p align=\"center\" style=\"margin:0cm;margin-bottom:.0001pt;text-align:center;line-height:115%\"><span style=\"font-family: Tahoma, sans-serif\">*[nmdesa]*,\n  *[tglsrt]*<br />\n  *[an]* Kepala Desa<br />\n  *[jabatan]*<o:p></o:p></span></p>\n  <p align=\"center\" style=\"margin:0cm;margin-bottom:.0001pt;text-align:center;line-height:115%\"><span style=\"font-family: Tahoma, sans-serif\">&nbsp;</span></p>\n  <p align=\"center\" style=\"margin:0cm;margin-bottom:.0001pt;text-align:center;line-height:115%\"><span style=\"font-family: Tahoma, sans-serif\">&nbsp;</span><br /><br />\n</p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;line-height:115%\"><span style=\"font-family: Tahoma, sans-serif\"><br />\n  <b><u>*[nm_ttd]*</u></b><br />\n  *[nip]*</span><span style=\"font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;\"><o:p></o:p></span></p>\n  </td>\n </tr>\n</tbody></table>","3","1","0","1");
INSERT INTO jns_sk VALUES("41","474/*0*/DS.2011/","Surat Ket Berpergian","<p align=\'center\' style=\'text-align:left\'>&nbsp;<img alt=\"\" src=\"/uploads/KOPS KOTO GADANG.jpg\" style=\"width:700px;height:100px\" /></p><p align=\'center\' style=\'text-align:left\'><span style=\"font-size:9px\">Kode Surat : 32.05.05.2011</span></p><p align=\'center\' style=\'text-align:center\'><span style=\"font-size:11.0pt;font-family:Arial Narrow,sans-serif\"><u><span style=\"font-size:18.0pt;font-family:Univers Condensed,sans-serif;letter-spacing:.4pt\">SURAT KETERANGAN BEPERGIAN</span></u></span><br /><span style=\"font-size:11.0pt;font-family:Arial Narrow,sans-serif\">Nomor : &nbsp;*[no_srt]*</span></p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'691\' style=\'border-collapse:collapse\'>\n <tbody><tr style=\"height:14.6pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">1.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:.85pt 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Nama Lengkap</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"305\" valign=\"top\" style=\"width: 228.55pt; padding: 0.85pt 5.4pt 0cm 2.85pt; height: 14.6pt\">\n  <p style=\"line-height:100%\"><b><span style=\"font-family:Helvetica-Narrow\">*[nama]*</span></b></p>\n  </td>\n  <td width=\"147\" rowspan=\"9\" style=\"width: 110.55pt; height: 14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><b>&nbsp;</b></p>\n  </td>\n </tr>\n <tr style=\"height:14.6pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">2.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:.85pt 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Nomor Induk Kependudukan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"305\" valign=\"top\" style=\"width: 228.55pt; padding: 0.85pt 5.4pt 0cm 2.85pt; height: 14.6pt\"> *[nik]*&nbsp;</td>\n </tr>\n <tr style=\"height:14.6pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">3.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:.85pt 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Nomor Kartu Keluarga</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"305\" valign=\"top\" style=\"width: 228.55pt; padding: 0.85pt 5.4pt 0cm 2.85pt; height: 14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">*[nokk]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.6pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">4.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:.85pt 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Jenis Kelamin</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"305\" valign=\"top\" style=\"width: 228.55pt; padding: 0.85pt 5.4pt 0cm 2.85pt; height: 14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">*[jk]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.6pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">5.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:.85pt 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Tempat Lahir</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"305\" valign=\"top\" style=\"width: 228.55pt; padding: 0.85pt 5.4pt 0cm 2.85pt; height: 14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">*[tmp_lhr]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.6pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">6.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:.85pt 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Tanggal Lahir</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"305\" valign=\"top\" style=\"width: 228.55pt; padding: 0.85pt 5.4pt 0cm 2.85pt; height: 14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">*[tgl_lhr]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.6pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">7.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:.85pt 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Kewarganegaraan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"305\" valign=\"top\" style=\"width: 228.55pt; padding: 0.85pt 5.4pt 0cm 2.85pt; height: 14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">*[wrg_ngr]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.6pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">8.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:.85pt 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Agama</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"305\" valign=\"top\" style=\"width: 228.55pt; padding: 0.85pt 5.4pt 0cm 2.85pt; height: 14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">*[agama]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.6pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">9.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:.85pt 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Status Perkawinan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"305\" valign=\"top\" style=\"width: 228.55pt; padding: 0.85pt 5.4pt 0cm 2.85pt; height: 14.6pt\">\n  *[status_kawin]*\n</td>\n </tr>\n <tr style=\"height:14.6pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">10.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:.85pt 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Pekerjaan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"147\" colspan=\"2\" valign=\"top\" style=\"width:110.55pt;padding:.85pt 5.4pt 0cm 2.85pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">*[pekerjaan]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:27.8pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:27.8pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">11.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:0cm 0cm 0cm 1.4pt; height:27.8pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Alamat Asal</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:27.8pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"147\" colspan=\"2\" valign=\"top\" style=\"width:110.55pt;padding:0cm 5.4pt 0cm 2.85pt; height:27.8pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">*[alamat]*</span></p>\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">RT: *[rt]*,&nbsp; RW: *[rw]*,&nbsp; KodePos: 44151</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.6pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">12.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:.85pt 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Bepergian ke</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"147\" colspan=\"2\" valign=\"top\" style=\"width:110.55pt;padding:.85pt 5.4pt 0cm 2.85pt; height:14.6pt\">\n  *[pergi_ke]*&nbsp;</td>\n </tr>\n <tr style=\"height:14.6pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">13.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:.85pt 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Berlaku dari tanggal</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"147\" colspan=\"2\" valign=\"top\" style=\"width:110.55pt;padding:.85pt 5.4pt 0cm 2.85pt; height:14.6pt\">\n  *[berlaku]*\n</td>\n </tr>\n <tr style=\"height:14.6pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">14.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:.85pt 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Sampai dengan tanggal</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"147\" colspan=\"2\" valign=\"top\" style=\"width:110.55pt;padding:.85pt 5.4pt 0cm 2.85pt; height:14.6pt\">\n  *[smp_dgn]*\n</td>\n </tr>\n <tr style=\"height:14.6pt\">\n  <td width=\"38\" valign=\"top\" style=\"width:28.65pt;padding:0cm 5.4pt 0cm 5.4pt; height:14.6pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">15.</span></p>\n  </td>\n  <td width=\"177\" valign=\"top\" style=\"width:132.4pt;padding:.85pt 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">Pengikut</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">:</span></p>\n  </td>\n  <td width=\"147\" colspan=\"2\" valign=\"top\" style=\"width:110.55pt;padding:.85pt 5.4pt 0cm 2.85pt; height:14.6pt\">\n  <p style=\"line-height:100%\"><span style=\"font-family:Helvetica-Narrow\">*[pengikut]* &nbsp;orang, yaitu:</span></p>\n  </td>\n </tr>\n</tbody></table><p></p><div align=\'center\'>\n\n\n</div><table border=\'1\' cellspacing=\'0\' cellpadding=\'0\' width=\'682\' style=\'margin-left: 1.4pt; border-collapse: collapse\'>\n <tbody><tr style=\"height:17.0pt\">\n  <td width=\"32\" rowspan=\"2\" style=\"width: 24.25pt; border: 1pt solid black; height: 17pt\">\n  <p align=\"center\" style=\"text-align:center\"><span style=\"font-size:11.0pt;font-family:Helvetica-Narrow\">No.</span></p>\n  </td>\n  <td width=\"194\" rowspan=\"2\" style=\"width: 145.15pt; height: 17pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:150%\"><span style=\"font-size:11.0pt;line-height:150%;font-family:Helvetica-Narrow\">Nama Lengkap</span></p>\n  </td>\n  <td width=\"56\" colspan=\"2\" style=\"width: 42.35pt; height: 17pt\">\n  <p align=\"center\" style=\"text-align:center\"><span style=\"font-size:11.0pt;font-family:Helvetica-Narrow\">Kelamin</span></p>\n  </td>\n  <td width=\"38\" rowspan=\"2\" style=\"width: 28.75pt; height: 17pt\">\n  <p align=\"center\" style=\"text-align:center\"><span style=\"font-size:11.0pt;font-family:Helvetica-Narrow\">Umur</span></p>\n  </td>\n  <td width=\"102\" rowspan=\"2\" style=\"width: 76.8pt; height: 17pt\">\n  <p align=\"center\" style=\"text-align:center\"><span style=\"font-size:11.0pt;font-family:Helvetica-Narrow\">Status Perkawinan</span></p>\n  </td>\n  <td width=\"192\" rowspan=\"2\" style=\"width: 143.95pt; height: 17pt\">\n  <p align=\"center\" style=\"text-align:center\"><span style=\"font-size:11.0pt;font-family:Helvetica-Narrow\">Hubungan Keluarga</span></p>\n  </td>\n  <td width=\"67\" rowspan=\"2\" style=\"width: 50.5pt; height: 17pt\">\n  <p align=\"center\" style=\"text-align:center\"><span style=\"font-size:11.0pt;font-family:Helvetica-Narrow\">Keterangan</span></p>\n  </td>\n </tr>\n <tr style=\"height:17.0pt\">\n  <td width=\"28\" style=\"width:21.2pt;padding:0cm 0cm 0cm 0cm;height:17.0pt\">\n  <p align=\"center\" style=\"text-align:center\"><span style=\"font-size:11.0pt;font-family:Helvetica-Narrow\">L</span></p>\n  </td>\n  <td width=\"28\" style=\"width:21.15pt;padding:0cm 0cm 0cm 0cm;height:17.0pt\">\n  <p align=\"center\" style=\"text-align:center\"><span style=\"font-size:11.0pt;font-family:Helvetica-Narrow\">P</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.75pt\">\n  <td width=\"32\" style=\"width: 24.25pt; height: 14.75pt\">\n  <p align=\"center\" style=\"text-align:center\"><span style=\"font-size:9.0pt;font-family:Helvetica-Narrow\">*[no1]*</span></p>\n  </td>\n  <td width=\"194\" style=\"width:145.15pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">\n  *[nm_lkp1]*\n</td>\n  <td width=\"28\" style=\"width:21.2pt;padding:0cm 1.4pt 0cm 1.4pt;height:14.75pt\">\n  <p align=\"center\" style=\"text-align:center\"><span style=\"font-size:9.0pt;font-family:Helvetica-Narrow\">*[l1]*</span></p>\n  </td>\n  <td width=\"28\" style=\"width:21.15pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">\n  *[p1]*&nbsp;</td>\n  <td width=\"38\" style=\"width:28.75pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">\n  <p align=\"center\" style=\"text-align:center\"><span style=\"font-size:9.0pt;font-family:Helvetica-Narrow\">*[umr1]*</span></p>\n  </td>\n  <td width=\"102\" style=\"width:76.8pt;padding:0cm 2.85pt 0cm 2.85pt;height:14.75pt\">\n  <p><span style=\"font-size:9.0pt;font-family:Helvetica-Narrow\">*[stskwn1]*</span></p>\n  </td>\n  <td width=\"192\" style=\"width:143.95pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">\n  <p><span style=\"font-size:9.0pt;font-family:Helvetica-Narrow\">*[hk1]*</span></p>\n  </td>\n  <td width=\"67\" style=\"width:50.5pt;padding:0cm 5.4pt 0cm 0cm;height:14.75pt\">\n  <p align=\"center\" style=\"text-align:center\"><span style=\"font-size:9.0pt;font-family:Helvetica-Narrow\">-</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.75pt\">\n  <td width=\"32\" style=\"width: 24.25pt; height: 14.75pt\">\n<span style=\'font-family: Helvetica-Narrow; font-size: 12px; text-align: center\'>*[no2]*</span></td>\n  <td width=\"194\" style=\"width:145.15pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;*[nm_lkp2]*</td>\n  <td width=\"28\" style=\"width:21.2pt;padding:0cm 1.4pt 0cm 1.4pt;height:14.75pt\">&nbsp;<span style=\'font-family: Helvetica-Narrow; font-size: 12px; text-align: center\'>*[l2]*</span></td>\n  <td width=\"28\" style=\"width:21.15pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;*[p2]*&nbsp;</td>\n  <td width=\"38\" style=\"width:28.75pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;<span style=\'font-family: Helvetica-Narrow; font-size: 12px; text-align: center\'>*[umr2]*</span></td>\n  <td width=\"102\" style=\"width:76.8pt;padding:0cm 2.85pt 0cm 2.85pt;height:14.75pt\">&nbsp;<span style=\'font-family: Helvetica-Narrow; font-size: 12px\'>*[stskwn2]*</span></td>\n  <td width=\"192\" style=\"width:143.95pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;<span style=\'font-family: Helvetica-Narrow; font-size: 12px\'>*[hk2]*</span></td>\n  <td width=\"67\" style=\"width:50.5pt;padding:0cm 5.4pt 0cm 0cm;height:14.75pt\">&nbsp;</td>\n </tr>\n <tr style=\"height:14.75pt\">\n  <td width=\"32\" style=\"width: 24.25pt; height: 14.75pt\">&nbsp;</td>\n  <td width=\"194\" style=\"width:145.15pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"28\" style=\"width:21.2pt;padding:0cm 1.4pt 0cm 1.4pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"28\" style=\"width:21.15pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;</td>\n  <td width=\"38\" style=\"width:28.75pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;</td>\n  <td width=\"102\" style=\"width:76.8pt;padding:0cm 2.85pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"192\" style=\"width:143.95pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"67\" style=\"width:50.5pt;padding:0cm 5.4pt 0cm 0cm;height:14.75pt\">&nbsp;</td>\n </tr>\n <tr style=\"height:14.75pt\">\n  <td width=\"32\" style=\"width: 24.25pt; height: 14.75pt\">&nbsp;</td>\n  <td width=\"194\" style=\"width:145.15pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"28\" style=\"width:21.2pt;padding:0cm 1.4pt 0cm 1.4pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"28\" style=\"width:21.15pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;</td>\n  <td width=\"38\" style=\"width:28.75pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;</td>\n  <td width=\"102\" style=\"width:76.8pt;padding:0cm 2.85pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"192\" style=\"width:143.95pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"67\" style=\"width:50.5pt;padding:0cm 5.4pt 0cm 0cm;height:14.75pt\">&nbsp;</td>\n </tr>\n <tr style=\"height:14.75pt\">\n  <td width=\"32\" style=\"width: 24.25pt; height: 14.75pt\">&nbsp;</td>\n  <td width=\"194\" style=\"width:145.15pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"28\" style=\"width:21.2pt;padding:0cm 1.4pt 0cm 1.4pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"28\" style=\"width:21.15pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;</td>\n  <td width=\"38\" style=\"width:28.75pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;</td>\n  <td width=\"102\" style=\"width:76.8pt;padding:0cm 2.85pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"192\" style=\"width:143.95pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"67\" style=\"width:50.5pt;padding:0cm 5.4pt 0cm 0cm;height:14.75pt\">&nbsp;</td>\n </tr>\n <tr style=\"height:14.75pt\">\n  <td width=\"32\" style=\"width: 24.25pt; height: 14.75pt\">&nbsp;</td>\n  <td width=\"194\" style=\"width:145.15pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"28\" style=\"width:21.2pt;padding:0cm 1.4pt 0cm 1.4pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"28\" style=\"width:21.15pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;</td>\n  <td width=\"38\" style=\"width:28.75pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;</td>\n  <td width=\"102\" style=\"width:76.8pt;padding:0cm 2.85pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"192\" style=\"width:143.95pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"67\" style=\"width:50.5pt;padding:0cm 5.4pt 0cm 0cm;height:14.75pt\">&nbsp;</td>\n </tr>\n <tr style=\"height:14.75pt\">\n  <td width=\"32\" style=\"width: 24.25pt; height: 14.75pt\">&nbsp;</td>\n  <td width=\"194\" style=\"width:145.15pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"28\" style=\"width:21.2pt;padding:0cm 1.4pt 0cm 1.4pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"28\" style=\"width:21.15pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;</td>\n  <td width=\"38\" style=\"width:28.75pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;</td>\n  <td width=\"102\" style=\"width:76.8pt;padding:0cm 2.85pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"192\" style=\"width:143.95pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"67\" style=\"width:50.5pt;padding:0cm 5.4pt 0cm 0cm;height:14.75pt\">&nbsp;</td>\n </tr>\n <tr style=\"height:14.75pt\">\n  <td width=\"32\" style=\"width: 24.25pt; height: 14.75pt\">&nbsp;</td>\n  <td width=\"194\" style=\"width:145.15pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"28\" style=\"width:21.2pt;padding:0cm 1.4pt 0cm 1.4pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"28\" style=\"width:21.15pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;</td>\n  <td width=\"38\" style=\"width:28.75pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;</td>\n  <td width=\"102\" style=\"width:76.8pt;padding:0cm 2.85pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"192\" style=\"width:143.95pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"67\" style=\"width:50.5pt;padding:0cm 5.4pt 0cm 0cm;height:14.75pt\">&nbsp;</td>\n </tr>\n <tr style=\"height:14.75pt\">\n  <td width=\"32\" style=\"width: 24.25pt; height: 14.75pt\">&nbsp;</td>\n  <td width=\"194\" style=\"width:145.15pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"28\" style=\"width:21.2pt;padding:0cm 1.4pt 0cm 1.4pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"28\" style=\"width:21.15pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;</td>\n  <td width=\"38\" style=\"width:28.75pt;padding:0cm 0cm 0cm 0cm;height:14.75pt\">&nbsp;</td>\n  <td width=\"102\" style=\"width:76.8pt;padding:0cm 2.85pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"192\" style=\"width:143.95pt;padding:0cm 1.4pt 0cm 2.85pt;height:14.75pt\">&nbsp;</td>\n  <td width=\"67\" style=\"width:50.5pt;padding:0cm 5.4pt 0cm 0cm;height:14.75pt\">&nbsp;</td>\n </tr>\n</tbody></table><p><b><span style=\"font-family:Helvetica-Narrow\">KETERANGAN : *[ket]*</span></b><br /></p><p>\n</p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'750\' style=\'border-collapse: collapse\'><tbody><tr><td width=\"233\" valign=\"top\" style=\"width: 174.6pt; padding: 2.85pt 0cm 0cm\"><p align=\"center\" style=\"text-align: center; line-height: 19.5px\"><span style=\"font-family: Helvetica-Narrow\">Tanda Tangan</span><br /><span style=\"font-family: Helvetica-Narrow\">Yang bersangkutan</span></p><p align=\"center\" style=\"text-align: center; line-height: 19.5px\">&nbsp;</p><p>&nbsp;</p><p align=\"center\" style=\"text-align: center; line-height: 19.5px\">&nbsp;*[nama]*</p></td><td width=\"246\" valign=\"top\" style=\"width: 184.5pt; padding: 2.85pt 0cm 0cm\">&nbsp;</td><td width=\"271\" valign=\"top\" style=\"width: 203.3pt; padding: 2.85pt 0cm 0cm\"><p align=\"center\" style=\"text-align: center\"><span style=\"font-family: Helvetica-Narrow\">Garut, *[tglsrt]*</span><br /><span style=\"font-family: Helvetica-Narrow\">*[an]* Kepala Desa Kersamenak</span><br />*[jabatan]*&nbsp;</p><p align=\"center\" style=\"text-align: center\">&nbsp;</p><p align=\"center\" style=\"text-align: center\">*[nm_ttd]*<br /><span style=\"font-family: Helvetica-Narrow\">NIP : *[nip]*</span></p></td></tr></tbody></table>","12","1","0","");
INSERT INTO jns_sk VALUES("42","474.3/*0*/DS.2011/","Formulir Pelaporan Kematian","<img alt=\"\" src=\"/uploads/KOPS KOTO GADANG.jpg\" style=\"width:700px;height:102px\" /><br /><p style=\'line-height: 19.5px\'><b><span style=\"font-size: 8pt; line-height: 16px; font-family: Helvetica-Narrow; letter-spacing: 0.4pt\">Kode Desa :&nbsp; 32.05.05.2011</span></b></p><p align=\'center\' style=\'text-align: center;line-height:150%\'><span style=\"font-family: &#39;Arial Narrow&#39;, sans-serif\"><u><span style=\"font-size: 18pt; font-family: &#39;Univers Condensed&#39;, sans-serif; letter-spacing: 0.4pt\">FORMULIR PELAPORAN KEMATIAN</span></u></span><br /><span style=\"font-size:12px;font-family:Arial\">Nomor :&nbsp;&nbsp;</span><span style=\"font-size:12px;font-family:Arial\">*[no_srt]*</span></p><p style=\'line-height:100%\'><span style=\"line-height: 26px;font-size:12px;font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"line-height: 26px;font-size:12px;font-family:Arial\">Yang bertanda-tangan di bawah ini :</span></p><div align=\'center\'><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"662\" style=\"border-collapse: collapse\"><tbody><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 0cm 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Nama Lengkap</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[nm_pelapor]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 0cm 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Nomor Induk Kependudukan</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[nik_pelapor]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 0cm 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Umur</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[umur_pelapor]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 0cm 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Pekerjaan</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[p_pelapor]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 0cm 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Alamat</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[alamat_pelapor]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 0cm 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Hubungan dengan yang mati</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[hub]*</span></p></td></tr></tbody></table></div><p style=\'line-height:100%\'><span style=\"line-height: 26px;font-size:12px;font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Melaporkan bahwa :</span></p><div align=\'center\'><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"662\" style=\"border-collapse: collapse\"><tbody><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 0cm 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Nama Lengkap</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[nama]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 0cm 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Nomor Induk Kependudukan</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[nik]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 0cm 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Jenis Kelamin</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[jk]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 0cm 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Tanggal Lahir</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[tgl_lhr]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 0cm 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Umur</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[umur_mngl]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 0cm 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Agama</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[agama]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 0cm 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Alamat</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[alamat]*</span><span style=\"font-size:12px;font-family:Arial\">, RW:&nbsp;</span><span style=\"font-size:12px;font-family:Arial\">*[rw]*</span><span style=\"font-size:12px;font-family:Arial\">, RT:&nbsp;</span><span style=\"font-size:12px;font-family:Arial\">*[rt]*</span></p></td></tr></tbody></table></div><p style=\'line-height:100%\'><span style=\"line-height: 26px;font-size:12px;font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Telah meninggal dunia pada :</span></p><div align=\'center\'><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"662\" style=\"border-collapse: collapse\"><tbody><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 5.4pt 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Hari</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[hari]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 5.4pt 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Tanggal</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[tgl_mati]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 5.4pt 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Pukul</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[pukul]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 5.4pt 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Bertempat di</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[di]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 5.4pt 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Penyebab Kematian</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[penyebab]*</span></p></td></tr><tr style=\"height: 17pt\"><td width=\"212\" valign=\"top\" style=\"width: 158.75pt; padding: 1.4pt 5.4pt 0cm 8.5pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Bukti Kematian</span></p></td><td width=\"16\" valign=\"top\" style=\"width: 12pt; padding: 1.4pt 1.4pt 0cm; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">:</span></p></td><td width=\"430\" valign=\"top\" style=\"width: 322.75pt; padding: 1.4pt 0cm 0cm 5.65pt; height: 17pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">*[bukti]*</span></p></td></tr></tbody></table><br /></div><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'border-collapse: collapse\'><tbody><tr><td width=\"442\" valign=\"top\" style=\"width: 331.55pt; padding: 2.85pt 0cm 0cm 8.5pt\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">Terlampir disertakan persyaratan-persyaratan sebagai berikut :</span></p><p style=\"margin-left: 18pt; text-indent: -18pt;line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">1.</span><span style=\"font-size:12px;font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size:12px;font-family:Arial\">Surat Kematian (visum) dari dokter / petugas kesehatan</span></p><p style=\"margin-left: 18pt; text-indent: -18pt;line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">2.</span><span style=\"font-size:12px;font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size:12px;font-family:Arial\">KTP dan Kartu Keluarga yang bersangkutan.</span></p><p style=\"margin-left: 18pt; text-indent: -18pt;line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">3.</span><span style=\"font-size:12px;font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size:12px;font-family:Arial\">Akta Kelahiran yang meninggal (bagi yang memiliki).</span></p><p style=\"margin-left: 18pt; text-indent: -18pt;line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">4.</span><span style=\"font-size:12px;font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-size:12px;font-family:Arial\">Data saksi-saksi (2 orang saksi).</span></p><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">5.&nbsp;&nbsp; </span></p></td><td width=\"216\" valign=\"top\" style=\"width: 162pt; padding: 1.4pt 0cm 0cm\"><span style=\"font-size:12px;font-family:Arial\">&nbsp;</span></td></tr></tbody></table><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\"><b>&nbsp;</b></span></p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'696\' style=\'border-collapse: collapse\'><tbody><tr><td width=\"103\" valign=\"top\" style=\"width: 77.4pt; padding: 0cm 5.4pt;height:242px\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\"><b>&nbsp;</b></span></p></td><td valign=\"top\" style=\"width:279px; padding: 0cm;height:242px\"><p align=\"center\" style=\"text-align: center;line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">MENGETAHUI</span><br /><span style=\"font-size:12px;font-family:Arial\">*[an]* Kepala Desa *[nmdesa]*</span><br /><span style=\"font-size:12px;font-family:Arial\">*[jabatan]*</span></p><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">&nbsp;</span></p><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">&nbsp;</span></p><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">&nbsp;</span></p><p align=\"center\" style=\"text-align: center;line-height:100%\"><span style=\"font-size:12px;font-family:Arial\"><b><u>*[nm_ttd]*</u></b></span><br /><span style=\"font-size:12px;font-family:Arial\">*[nip]*&nbsp;</span></p><p align=\"center\" style=\"text-align: center;line-height:100%\"><span style=\"font-size:12px;font-family:Arial\"><b>&nbsp;</b></span></p></td><td valign=\"top\" style=\"width: 210px; padding: 0cm 5.4pt;height:242px\"><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\"><b>&nbsp;</b></span></p></td><td valign=\"top\" style=\"width: 267px; padding: 0cm;height:242px\"><p align=\"center\" style=\"text-align: center;line-height:100%\"><span style=\"line-height: 26px;font-size:12px;font-family:Arial\">*[nmkab]*,&nbsp;</span><span style=\"font-size:12px;font-family:Arial\">*[tglsrt]*</span><br /><span style=\"font-size:12px;font-family:Arial\">Pelapor</span></p><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">&nbsp;</span></p><p style=\"line-height:100%\"><span style=\"font-size:12px;font-family:Arial\">&nbsp;</span><br /></p><p align=\"center\" style=\"text-align: center;line-height:100%\"><span style=\"font-size:12px;font-family:Arial\"><b><u>*[nm_pelapor]*</u></b></span></p></td></tr></tbody></table>","2","1","0","");
INSERT INTO jns_sk VALUES("44","550/*0*/55/55/","Surat Keterangan Catatan Desa","<p style=\'line-height:100%;font-family:Arial\'><img src=\"/uploads/KOPS KOTO GADANG.jpg\" style=\"width:700px;height:102px\" alt=\"\" /><br /><span lang=\"EN-US\" style=\"font-size:8.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kode\nDesa :&nbsp; 32.05.05.2011<o:p>\n</o:p></span></p><p class=\'MsoNormal\' align=\'center\' style=\'text-align:center;line-height:100%\'><span style=\"font-size:14px\"><b><u><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">SURAT KETERANGAN\nCATATAN DESA<o:p /></span></u></b></span><br /><span style=\"font-size:14px\">Nomor</span><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ansi-language:IN;font-size:14px\"> </span><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">:</span><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ansi-language:IN;font-size:14px\"> </span><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">*[no_srt]*</span></p><p class=\'MsoNormal\' align=\'center\' style=\'text-align:left;line-height:130%\'><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\"><o:p><span lang=\'EN-US\' style=\'font-size: 12pt; font-family: Arial, sans-serif\'>Yang bertanda-tangan di bawah ini, Kepala Desa *[nmdesa]* Kecamatan *[nmkec]* Kabupaten *[nmkab]*, menerangkan bahwa</span><span style=\'font-size: 12pt; font-family: Arial, sans-serif\'> :</span></o:p></span></p><table class=\'MsoNormalTable\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'564\' style=\'margin-left:53.5pt;border-collapse:collapse;mso-table-layout-alt:fixed;mso-yfti-tbllook:480;mso-padding-alt:0cm&amp;#32\'>\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;height:17.0pt;mso-height-rule:\n  exactly\">\n  <td width=\"233\" valign=\"top\" style=\"width:174.65pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">Nama\n  Lengkap<o:p /></span></p>\n  </td>\n  <td width=\"17\" valign=\"top\" style=\"width:12.75pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">:<o:p /></span></p>\n  </td>\n  <td width=\"314\" valign=\"top\" style=\"width:235.4pt;padding:.85pt 4.25pt 0cm 2.85pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">*[nama]*<o:p /></span></p>\n  </td>\n </tr>\n <tr style=\"mso-yfti-irow:1;height:17.0pt;mso-height-rule:exactly\">\n  <td width=\"233\" valign=\"top\" style=\"width:174.65pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">Nomor\n  Induk Kependudukan<o:p /></span></p>\n  </td>\n  <td width=\"17\" valign=\"top\" style=\"width:12.75pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">:<o:p /></span></p>\n  </td>\n  <td width=\"314\" valign=\"top\" style=\"width:235.4pt;padding:.85pt 4.25pt 0cm 2.85pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">*[nik]*<o:p /></span></p>\n  </td>\n </tr>\n <tr style=\"mso-yfti-irow:2;height:17.0pt;mso-height-rule:exactly\">\n  <td width=\"233\" valign=\"top\" style=\"width:174.65pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">Jenis\n  Kelamin<o:p /></span></p>\n  </td>\n  <td width=\"17\" valign=\"top\" style=\"width:12.75pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">:<o:p /></span></p>\n  </td>\n  <td width=\"314\" valign=\"top\" style=\"width:235.4pt;padding:.85pt 4.25pt 0cm 2.85pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">*[jk]*<o:p /></span></p>\n  </td>\n </tr>\n <tr style=\"mso-yfti-irow:3;height:17.0pt;mso-height-rule:exactly\">\n  <td width=\"233\" valign=\"top\" style=\"width:174.65pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">Tempat\n  Lahir dan Tanggal Lahir<o:p /></span></p>\n  </td>\n  <td width=\"17\" valign=\"top\" style=\"width:12.75pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">:<o:p /></span></p>\n  </td>\n  <td width=\"314\" valign=\"top\" style=\"width:235.4pt;padding:.85pt 4.25pt 0cm 2.85pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">*[tmp_lhr]*,\n  *[tgl_lhr]*<o:p /></span></p>\n  </td>\n </tr>\n <tr style=\"mso-yfti-irow:4;height:17.0pt;mso-height-rule:exactly\">\n  <td width=\"233\" valign=\"top\" style=\"width:174.65pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">Status\n  Perkawinan<o:p /></span></p>\n  </td>\n  <td width=\"17\" valign=\"top\" style=\"width:12.75pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">:<o:p /></span></p>\n  </td>\n  <td width=\"314\" valign=\"top\" style=\"width:235.4pt;padding:.85pt 4.25pt 0cm 2.85pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">*[status_kawin]*<o:p /></span></p>\n  </td>\n </tr>\n <tr style=\"mso-yfti-irow:5;height:17.0pt;mso-height-rule:exactly\">\n  <td width=\"233\" valign=\"top\" style=\"width:174.65pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">Pekerjaan<o:p /></span></p>\n  </td>\n  <td width=\"17\" valign=\"top\" style=\"width:12.75pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">:<o:p /></span></p>\n  </td>\n  <td width=\"314\" valign=\"top\" style=\"width:235.4pt;padding:.85pt 4.25pt 0cm 2.85pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">*[pekerjaan]*<o:p /></span></p>\n  </td>\n </tr>\n <tr style=\"mso-yfti-irow:6;height:17.0pt;mso-height-rule:exactly\">\n  <td width=\"233\" valign=\"top\" style=\"width:174.65pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">Agama<o:p /></span></p>\n  </td>\n  <td width=\"17\" valign=\"top\" style=\"width:12.75pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">:<o:p /></span></p>\n  </td>\n  <td width=\"314\" valign=\"top\" style=\"width:235.4pt;padding:.85pt 4.25pt 0cm 2.85pt;\n  height:17.0pt;mso-height-rule:exactly\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">*[agama]*<o:p /></span></p>\n  </td>\n </tr>\n <tr style=\"mso-yfti-irow:7;mso-yfti-lastrow:yes;height:19.85pt\">\n  <td width=\"233\" valign=\"top\" style=\"width:174.65pt;padding:0cm 0cm 0cm 8.5pt;\n  height:19.85pt\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">Alamat<o:p /></span></p>\n  </td>\n  <td width=\"17\" valign=\"top\" style=\"width:12.75pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:19.85pt\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">:<o:p /></span></p>\n  </td>\n  <td width=\"314\" valign=\"top\" style=\"width:235.4pt;padding:0cm 4.25pt 0cm 2.85pt;\n  height:19.85pt\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">*[alamat]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">RT: *[rt]*,&nbsp; RW: *[rw]*,&nbsp; Kode Pos: *[kode_pos]*<o:p /></span></p>\n  </td>\n </tr>\n</tbody></table><p class=\'MsoNormal\' style=\'text-align:justify;line-height:130%\'><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;; mso-ansi-language:IN;font-size:14px\">Dengan ini menerangkan, bahwa berdasarkan data dan catatan yang ada serta sepanjang sepengetahuan kami, orang tersebut di atas benar-benar warga / penduduk Desa *[nmdesa]* Kecamatan *[nmkec]* Kabupaten *[nmkab]*, yang berdomisili pada alamat seperti tersebut di atas dan orang tersebut mempunyai adat-istiadat yang baik.<o:p>\n</o:p></span><br /><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;; mso-ansi-language:IN;font-size:14px\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Surat Keterangan ini akan\ndipergunakan untuk *[tujuan_srt]*<o:p>\n</o:p></span><br /><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;; mso-ansi-language:IN;font-size:14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Surat Keterangan ini\nberlaku sampai dengan tanggal : *[masa_berlaku]*</span><br /><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;; mso-ansi-language:IN;font-size:14px\">Demikian Surat Keterangan ini dibuat dengan sebenarnya untuk dipergunakan sebagaimana mestinya.<o:p>\n</o:p></span></p><p class=\'MsoNormal\' style=\'text-align:justify;line-height:130%\'><br /></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'652\' style=\'width: 489.05pt; border-collapse: collapse\'>\n <tbody><tr>\n  <td width=\"293\" valign=\"top\" style=\"width:219.75pt;padding:0cm 0cm 0cm 0cm\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">Tanda-tangan<o:p /></span><br /><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">Pemegang<o:p /></span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">\n</span>\n</p>\n  <p>&nbsp;</p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">*[nama]*<o:p /></span></p>\n  </td>\n  <td width=\"76\" style=\"width:2.0cm;padding:0cm 0cm 0cm 0cm\">\n  <p class=\"MsoNormal\" style=\"line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">&nbsp;</span></p>\n  </td>\n  <td width=\"283\" valign=\"top\" style=\"width:212.6pt;padding:0cm 0cm 0cm 0cm\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">*[nmdesa]*, *[tglsrt]*<o:p /></span><br /><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">*[an]* Kepala Desa *[nmdesa]*<o:p /></span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;line-height:100%\">&nbsp;</p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">&nbsp;</span><br />\n</p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;line-height:100%\"><span lang=\"EN-US\" style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;font-size:14px\">*[nm_ttd]*</span><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ansi-language:IN;font-size:14px\"><o:p /></span></p>\n  </td>\n </tr>\n</tbody></table>","3","1","0","");
INSERT INTO jns_sk VALUES("45","15/*0*/25/25/","Surat Keterangan Izin Orang Tua","<img alt=\"\" src=\"/uploads/KOPS KOTO GADANG.jpg\" style=\"width:700px;height:102px\" /><p><span style=\"font-size:8.0pt;font-family:Arial,sans-serif\">Kode\nDesa :&nbsp; 32.05.05.2011</span></p><p align=\'center\' style=\'text-align:center;line-height:130%\'><b><u><span style=\"font-family:Arial,sans-serif\">SURAT KETERANGAN IZIN ORANG-TUA / WALI</span></u></b><br />Nomor : *[no_srt]*</p><p style=\'line-height:130%\'><span style=\"font-family:Arial,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Yang\nbertanda-tangan di bawah ini :</span></p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'564\' style=\'margin-left:47.85pt;border-collapse:collapse\'>\n <tbody><tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">1.</span></p>\n  </td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Nama Lengkap</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" valign=\"top\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[nama1]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:14.2pt\">&nbsp;</td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Nomor Induk Kependudukan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" valign=\"top\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[nik1]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:14.2pt\">&nbsp;</td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Nomor Kartu Keluarga</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" valign=\"top\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[nokk]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:14.2pt\">&nbsp;</td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Jenis Kelamin</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" valign=\"top\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[jk1]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:14.2pt\">&nbsp;</td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Tempat dan Tanggal Lahir</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" valign=\"top\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[tmp_lhr1]*, *[tgl_lhr1]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:14.2pt\">&nbsp;</td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Status Perkawinan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" valign=\"top\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[status_kawin1]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:14.2pt\">&nbsp;</td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Pekerjaan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" valign=\"top\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[pekerjaan1]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:.85pt 2.85pt 0cm 2.85pt;\n  height:14.2pt\">&nbsp;</td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Tempat tinggal</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:.85pt 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[alamat]*</span> <span style=\"font-family:Arial,sans-serif\">RT: *[rt]*,&nbsp; RW: *[rw]*,&nbsp;\n  Kode Pos: *[kode_pos]*</span></p>\n  </td>\n </tr>\n</tbody></table><p style=\'line-height:130%\'><span style=\"font-family:Arial,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><br /><span style=\"font-family:Arial,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dengan ini memberikan ijin\nkepada anak saya :</span></p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'564\' style=\'margin-left:47.85pt;border-collapse:collapse\'>\n <tbody><tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">2.</span></p>\n  </td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Nama Lengkap</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" valign=\"top\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[nama]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:14.2pt\">&nbsp;</td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Nomor Induk Kependudukan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" valign=\"top\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[nik]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:14.2pt\">&nbsp;</td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Jenis Kelamin</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" valign=\"top\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[jk]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:14.2pt\">&nbsp;</td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Tempat dan Tanggal Lahir</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" valign=\"top\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[tmp_lhr]*, *[tgl_lhr]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:14.2pt\">&nbsp;</td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Status Perkawinan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" valign=\"top\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[status_kawin]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:0cm 2.85pt 0cm 2.85pt;\n  height:14.2pt\">&nbsp;</td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Pekerjaan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" valign=\"top\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[pekerjaan]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.2pt\">\n  <td width=\"28\" valign=\"top\" style=\"width:20.8pt;padding:.85pt 2.85pt 0cm 2.85pt;\n  height:14.2pt\">&nbsp;</td>\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">Tempat tinggal</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:.85pt 0cm 0cm 1.4pt;\n  height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">:</span></p>\n  </td>\n  <td width=\"284\" style=\"width:213.2pt;padding:.85pt 5.4pt 0cm 7.1pt;height:14.2pt\">\n  <p style=\"line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[alamat]*</span> <span style=\"font-family:Arial,sans-serif\">RT: *[rt]*,&nbsp; RW: *[rw]*,&nbsp;\n  Kode Pos: *[kode_pos]*</span></p>\n  </td>\n </tr>\n</tbody></table><p style=\'line-height:130%\'><span style=\"font-family:Arial,sans-serif\">\n</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family:Arial,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Surat keterangan ini akan dipergunakan\nuntuk <b>*[tujuan_srt]*</b>.</span><br /><span style=\"font-family:Arial,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Surat keterangan ini berlaku sampai dengan tanggal :&nbsp;<b>*[masa_berlaku]*</b></span><br /><span style=\"font-family:Arial,sans-serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Demikian surat keterangan ini dibuat dengan sebenarnya untuk dipergunakan sebagaimana mestinya.</span></p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'652\' style=\'width:489.05pt;margin-left:5.4pt;border-collapse:collapse\'>\n <tbody><tr>\n  <td width=\"198\" valign=\"top\" style=\"width:148.85pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  \n  <p align=\"center\" style=\"text-align:center;line-height:130%\"><br /><span style=\"font-family:Arial,sans-serif\">Yang diberi ijin,</span><br /><br /><br /><br /><br /><br /><span style=\"font-family:Arial,sans-serif\">*[nama]*</span></p>\n  \n  \n  \n  \n  \n  </td>\n  <td width=\"198\" valign=\"top\" style=\"width:148.85pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  \n  <p align=\"center\" style=\"text-align:center;line-height:130%\"><br /><span style=\"font-family:Arial,sans-serif\">Yang Memberi ijin</span><br /><br /><br /><br /><br /><br /><span style=\"font-family:Arial,sans-serif\">*[nama1]*</span></p>\n  \n  \n  \n  \n  \n  </td>\n  <td width=\"255\" valign=\"top\" style=\"width:191.35pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:130%\"><span style=\"font-family:Arial,sans-serif\">*[nmdesa]*, *[tglsrt]*</span><br /><span style=\"font-family:Arial,sans-serif\">*[an]* Kepala Desa *[nmdesa]*</span><br /><br /><br /><br /><br /><br /><span style=\"font-family:Arial,sans-serif\"><u><span style=\"font-family:Arial,sans-serif\">*[nm_ttd]*</span></u></span><br /><span style=\"font-family:Arial,sans-serif\">NIP :&nbsp; *[nip]*</span></p>\n  </td>\n </tr>\n</tbody></table>","2","1","0","");
INSERT INTO jns_sk VALUES("48","15/*0*/225/5656/","Surat Keterangan Miskin","<img alt=\"\" src=\"/uploads/KOPS KOTO GADANG.jpg\" style=\"width:700px;height:102px\" /><span style=\"font-family:Arial\">\n</span><br /><span style=\"font-family:Arial\"></span><p style=\'line-height:150%\'><b><span style=\"font-size:8.0pt;line-height:150%; letter-spacing:.4pt;font-family:Arial\">Kode Desa :&nbsp;\n32.05.05.2011</span></b></p><p align=\'center\' style=\'text-align:center\'><b><u><span style=\"font-size:14.0pt; letter-spacing:.4pt;font-family:Arial\">SURAT KETERANGAN TIDAK MAMPU</span></u></b><br /><span style=\"font-family:Arial\">Nomor</span><span style=\"font-family:Arial\"> </span><span style=\"font-family:Arial\">: *[no_srt]*</span></p><p style=\'text-align:justify;margin:0cm 23.9pt .0001pt 27.0pt\'><span style=\"font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:Arial\">Yang bertanda-tangan di bawah ini, Kepala Desa *[nmdesa]*</span><span style=\"font-family:Arial\"> Kecamatan </span><span style=\"font-family:Arial\">*[nmkec]*</span><span style=\"font-family:Arial\"> Kabupaten </span><span style=\"font-family:Arial\">*[nmkab]*</span><span style=\"font-family:Arial\">, menerangkan bahwa.</span><br /><span style=\"font-family:Arial\">\n</span></p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'602\' style=\'margin-left:53.5pt;border-collapse:collapse\'>\n <tbody><tr style=\"height:14.15pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:0cm 0cm 0cm 8.5pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">Nama\n  Lengkap</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"350\" valign=\"top\" style=\"width:262.15pt;padding:0cm 5.4pt 0cm 2.85pt;\n  height:14.15pt\">\n  *[nama]*&nbsp;</td>\n </tr>\n <tr style=\"height:14.15pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">Nomor\n  Induk Kependudukan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"350\" valign=\"top\" style=\"width:262.15pt;padding:0cm 5.4pt 0cm 2.85pt;\n  height:14.15pt\">\n  *[nik]*</td>\n </tr>\n <tr style=\"height:14.15pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">Jenis\n  Kelamin</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"350\" valign=\"top\" style=\"width:262.15pt;padding:0cm 5.4pt 0cm 2.85pt;\n  height:14.15pt\">\n  *[jk]*</td>\n </tr>\n <tr style=\"height:14.15pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">Tempat\n  &nbsp;dan Tanggal Lahir</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"350\" valign=\"top\" style=\"width:262.15pt;padding:0cm 5.4pt 0cm 2.85pt;\n  height:14.15pt\">\n  *[tmp_lhr]*, *[tgl_lhr]*</td>\n </tr>\n <tr style=\"height:14.15pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">Status\n  Perkawinan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"350\" valign=\"top\" style=\"width:262.15pt;padding:0cm 5.4pt 0cm 2.85pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">*[status_kawin]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.15pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">Pekerjaan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"350\" valign=\"top\" style=\"width:262.15pt;padding:0cm 5.4pt 0cm 2.85pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">*[pekerjaan]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.15pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">Agama</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"350\" valign=\"top\" style=\"width:262.15pt;padding:0cm 5.4pt 0cm 2.85pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">*[agama]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.15pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:0cm 0cm 0cm 8.5pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">Alamat</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"350\" valign=\"top\" style=\"width:262.15pt;padding:0cm 5.4pt 0cm 2.85pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">*[alamat]* </span><span style=\"font-family:Arial\">RT:\n  </span><span style=\"font-family:Arial\">*[rt]*</span><span style=\"font-family:Arial\">, RW: </span><span style=\"font-family:Arial\">*[rw]*</span></p>\n  <p><span style=\"font-family:Arial\">D</span><span style=\"font-family:Arial\">s</span><span style=\"font-family:Arial\">. </span><span style=\"font-family:Arial\">*[nmdesa]*</span><span style=\"font-family:Arial\">,&nbsp; KodePos: </span><span style=\"font-family:Arial\">*[kode_pos]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:14.15pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:0cm 0cm 0cm 8.5pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">Orangtua\n  dari</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"350\" valign=\"top\" style=\"width:262.15pt;padding:0cm 5.4pt 0cm 2.85pt;\n  height:14.15pt\">\n  <p><span style=\"font-family:Arial\"><b>*[nama_anak]*</b></span></p>\n  </td>\n </tr>\n</tbody></table><p style=\'text-align:justify;margin:0cm 23.8pt .0001pt 27.0pt;line-height:130%\'><span style=\"font-family:Arial\"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></span><br /><span style=\"font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:Arial\">Orang\ntersebut di atas betul warga / penduduk Desa </span><span style=\"font-family:Arial\">*[nmdesa]*</span><span style=\"font-family:Arial\"> Kecamatan </span><span style=\"font-family:Arial\">*[nmkec]*</span><span style=\"font-family:Arial\"> Kabupaten </span><span style=\"font-family:Arial\">*[nmkab]*</span><span style=\"font-family:Arial\"> yang menurut pengakuan\nserta data yang ada pada kami, orang tersebut pada saat ini mempunyai\npenghasilan sangat minim dan termasuk kategori keluarga tidak mampu.</span></p><p style=\'text-align:justify;margin:0cm 23.9pt .0001pt 27.0pt;line-height:130%\'><span style=\"font-family:Arial\"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></span><span style=\"font-family:Arial\">Surat\nketerangan ini akan dipergunakan untuk : </span><span style=\"font-family:Arial\"><b>*[tujuan_surat]*</b></span></p><p style=\'text-align:justify;margin:0cm 23.9pt .0001pt 27.0pt;line-height:130%\'><span style=\"font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Surat keterangan ini berlaku sampai dengan tanggal :&nbsp;</span><span style=\"font-family:Arial\"><b>*[masa_berlaku]*</b></span></p><p style=\'text-align:justify;margin:0cm 23.8pt .0001pt 27.0pt;line-height:130%\'><span style=\"font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Demikian Surat Keterangan ini dibuat dengan sebenarnya untuk dipergunakan sebagaimana mestinya.</span></p><p><span style=\"font-family:Arial\">&nbsp;</span></p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'331\' style=\'width:248.05pt;margin-left:246.4pt;border-collapse:collapse\'>\n <tbody><tr>\n  <td width=\"331\" valign=\"top\" style=\"width:248.05pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p align=\"center\" style=\"text-align:center\"><span style=\"font-family:Arial\">*[nmdesa]*</span><span style=\"font-family:Arial\">, </span><span style=\"font-family:Arial\">*[tglsrt]*</span><br /><span style=\"font-family:Arial\">*[an]* </span><span style=\"font-family:Arial\">Kepala Desa </span><span style=\"font-family:Arial\">*[nmdesa]*</span><br /><br /><br /><br /><br /><br /><span style=\"font-family:Arial\"><u>*[nm_ttd]*</u></span><br /><span style=\"font-family:Arial\">Nip. *[nip]*</span></p>\n  </td>\n </tr>\n</tbody></table><br /><br /><br /><div class=\"printpagebreak\" title=\"Print Page Break\" style=\"font-size:1px;page-break-before:always;\"><span style=\"font-family:Arial\">&nbsp;</span></div><img alt=\"\" src=\"/uploads/KOPS KOTO GADANG.jpg\" style=\"width:700px;height:102px\" /><span style=\"font-family:Arial\">\n</span><br /><span style=\"font-family:Arial\"><b><span style=\"font-size:8.0pt;line-height:150%; letter-spacing:.4pt;font-family:Arial\">Kode Desa :&nbsp;\n32.05.05.2011</span></b></span><p align=\'center\' style=\'text-align:center\'><strong><u><span style=\"letter-spacing:.4pt;font-family:Arial\">SURAT\nKETERANGAN TIDAK MAMPU</span></u></strong><br /><span style=\"font-family:Arial\">Nomor:&nbsp; </span><span style=\"font-size:11.0pt;font-family:Arial\">*[no_srt]*</span></p><p style=\'text-align:justify;line-height:&lt;br/&gt;150%;margin:0cm 23.9pt .0001pt 27.0pt\'><span style=\"font-size:11.0pt; line-height:150%;font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Yang bertanda-tangan di bawah ini, Kepala Desa&nbsp;</span><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">*[nmdesa]*</span><span style=\"font-size:11.0pt; line-height:150%;font-family:Arial\"> Kecamatan </span><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">*[nmkec]*</span><span style=\"font-size:11.0pt; line-height:150%;font-family:Arial\"> Kabupaten </span><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">*[nmkab]*</span><span style=\"font-size:11.0pt; line-height:150%;font-family:Arial\">, menerangkan bahwa.</span><br />\n</p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'600\' style=\'margin-left:53.5pt;border-collapse:collapse\'>\n <tbody><tr style=\"height:20.7pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:0cm 0cm 0cm 8.5pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">Nama\n  Lengkap</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"348\" valign=\"top\" style=\"width:261.0pt;padding:0cm 5.4pt 0cm 2.85pt; height:20.7pt\">\n  <p><b><span style=\"font-size:11.0pt;font-family:Arial\">*[nama]*</span></b></p>\n  </td>\n </tr>\n <tr style=\"height:20.7pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">Nomor\n  Induk Kependudukan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"348\" valign=\"top\" style=\"width:261.0pt;padding:0cm 5.4pt 0cm 2.85pt; height:20.7pt\">\n  <p><b><span style=\"font-size:11.0pt;font-family:Arial\">*[nik]*</span></b></p>\n  </td>\n </tr>\n <tr style=\"height:20.7pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">Jenis\n  Kelamin</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"348\" valign=\"top\" style=\"width:261.0pt;padding:0cm 5.4pt 0cm 2.85pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">*[jk]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:20.7pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">Tempat\n  Lahir dan Tanggal Lahir</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"348\" valign=\"top\" style=\"width:261.0pt;padding:0cm 5.4pt 0cm 2.85pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">*[tmp_lhr]*</span><span style=\"font-size: 11.0pt;font-family:Arial\">, </span><span style=\"font-size: 11.0pt;font-family:Arial\">*[tgl_lhr]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:20.7pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">Status\n  Perkawinan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"348\" valign=\"top\" style=\"width:261.0pt;padding:0cm 5.4pt 0cm 2.85pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">*[status_kawin]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:20.7pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">Pekerjaan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"348\" valign=\"top\" style=\"width:261.0pt;padding:0cm 5.4pt 0cm 2.85pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">*[pekerjaan]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:20.7pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:.85pt 0cm 0cm 8.5pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">Agama</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"348\" valign=\"top\" style=\"width:261.0pt;padding:0cm 5.4pt 0cm 2.85pt; height:20.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">*[agama]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:22.7pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:0cm 0cm 0cm 8.5pt;\n  height:22.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">Alamat</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:22.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"348\" valign=\"top\" style=\"width:261.0pt;padding:0cm 5.4pt 0cm 2.85pt;\n  height:22.7pt\">\n  <p style=\"line-height:150%\"><span style=\"font-size:11.0pt; line-height:150%;font-family:Arial\">*[alamat]*&nbsp;RT:\n  </span><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">*[rt]*</span><span style=\"font-size:11.0pt; line-height:150%;font-family:Arial\">, RW: </span><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">*[rw]*</span><span style=\"font-size:11.0pt; line-height:150%;font-family:Arial\">,&nbsp; KodePos: </span><span style=\"font-size: 11.0pt;line-height:150%;font-family:Arial\">*[kode_pos]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:22.7pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:0cm 0cm 0cm 8.5pt;\n  height:22.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">Anak\n  dari Pasangan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:22.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"348\" valign=\"top\" style=\"width:261.0pt;padding:0cm 5.4pt 0cm 2.85pt;\n  height:22.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">*[nama1]*&nbsp;</span><span style=\"font-size:11.0pt;font-family:Arial\">dan </span><span style=\"font-size:11.0pt;font-family:Arial\">*[nama2]*</span></p>\n  </td>\n </tr>\n <tr style=\"height:22.7pt\">\n  <td width=\"236\" valign=\"top\" style=\"width:177.2pt;padding:0cm 0cm 0cm 8.5pt;\n  height:22.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">Sekolah/Jurusan</span></p>\n  </td>\n  <td width=\"16\" valign=\"top\" style=\"width:11.8pt;padding:0cm 0cm 0cm 1.4pt;\n  height:22.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">:</span></p>\n  </td>\n  <td width=\"348\" valign=\"top\" style=\"width:261.0pt;padding:0cm 5.4pt 0cm 2.85pt;\n  height:22.7pt\">\n  <p><span style=\"font-size:11.0pt;font-family:Arial\">*[nama_sekolah]*</span></p>\n  </td>\n </tr>\n</tbody></table><p style=\'text-align:justify;line-height:&lt;br/&gt;150%;margin:0cm 23.8pt .0001pt 27.0pt\'><b><span style=\"font-size:11.0pt; line-height:150%;font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></b></p><p style=\'text-align:justify;line-height:&lt;br/&gt;150%;margin:0cm 23.8pt .0001pt 27.0pt\'><span style=\"font-size:11.0pt; line-height:150%;font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Orang tersebut di atas betul\nwarga / penduduk Desa </span><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">*[nmdesa]*</span><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">\nKecamatan </span><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">*[nmkec]*</span><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">\nKabupaten </span><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">*[nmkab]* </span><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">yang\nmenurut pengakuan serta data yang ada pada kami, orang tersebut pada saat ini\nmempunyai penghasilan sangat minim dan termasuk kategori keluarga tidak mampu.</span></p><p style=\'text-align:justify;margin:0cm 23.8pt .0001pt 27.0pt\'><span style=\"font-family:Arial\"><b>&nbsp;</b></span></p><p style=\'text-align:justify;line-height:&lt;br/&gt;150%;margin:0cm 23.9pt .0001pt 27.0pt\'><b><span style=\"font-size:11.0pt; line-height:150%;font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></b><span style=\"font-size:11.0pt; line-height:150%;font-family:Arial\">Surat keterangan ini akan\ndipergunakan untuk </span><b><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">*[tujuan_surat]*</span></b><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">.</span></p><p style=\'text-align:justify;line-height:&lt;br/&gt;150%;margin:0cm 23.9pt .0001pt 27.0pt\'><span style=\"font-size:11.0pt; line-height:150%;font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Surat keterangan ini berlaku sampai dengan tanggal : </span><b><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">*[masa_berlaku]*</span></b></p><p style=\'text-align:justify;line-height:&lt;br/&gt;150%;margin:0cm 23.8pt .0001pt 27.0pt\'><span style=\"font-size:11.0pt; line-height:150%;font-family:Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Demikian Surat Keterangan ini dibuat dengan sebenarnya untuk\ndipergunakan sebagaimana mestinya.</span><br /><span style=\"font-family:Arial\">\n</span></p><p>&nbsp;</p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'636\' style=\'width:477.0pt;margin-left:32.4pt;border-collapse:collapse\'>\n <tbody><tr>\n  <td width=\"151\" style=\"width: 113.5pt; border: 1pt solid windowtext\"><span style=\"font-family:Arial\">&nbsp;</span></td>\n  <td width=\"100\" valign=\"top\" style=\"width: 74.75pt\"><span style=\"font-family:Arial\">&nbsp;</span></td>\n  <td width=\"385\" valign=\"top\" style=\"width:288.75pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p align=\"center\" style=\"text-align:center;line-height:150%\"><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">*[nmdesa]*</span><span style=\"font-size: 11.0pt;line-height:150%;font-family:Arial\">, </span><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">*[tglsrt]*</span><br /><span style=\"font-size:11.0pt;line-height:150%;font-family:Arial\">*[an]* </span><span style=\"font-size:11.0pt;font-family:Arial\">Kepala\n  Desa </span><span style=\"font-size:11.0pt;font-family:Arial\">*[nmdesa]*</span><br /><br /><br /><br /><br /><span style=\"font-size:11.0pt;font-family:Arial\"><u><span style=\"font-size:11.0pt\">*[nm_ttd]*</span></u></span><br /><span style=\"font-size:11.0pt;font-family:Arial\">NIP :&nbsp; </span><span style=\"font-size:11.0pt;font-family:Arial\">*[nip]*</span></p>\n  </td>\n </tr>\n</tbody></table>","3","1","0","");
INSERT INTO jns_sk VALUES("51","474/*0*/DS. 2011/","Surat Keterangan Tanggungan Keluarga","<p class=\'MsoHeader\' style=\'line-height:150%;tab-stops:9.0pt&#32;center&#32;216.0pt&#32;right&#32;432.0pt\'><img alt=\"\" src=\"/uploads/KOPS KOTO GADANG.jpg\" style=\"width:700px;height:102px\" /><br /><span style=\"font-family:Arial;font-size:14px\"><b><span lang=\"EN-US\" style=\"line-height:150%; letter-spacing:.4pt;font-size:10px\">Kode Desa :&nbsp;\n32.05.05.2011<o:p>\n</o:p></span></b></span></p><p class=\'MsoNormal\' align=\'center\' style=\'text-align:center\'><span style=\"font-family:Arial;font-size:14px\"><b><u><span lang=\"EN-US\">SURAT KETERANGAN\nTANGGUNGAN KELUARGA<o:p /></span></u></b></span><br /><span style=\"font-family:Arial;font-size:14px\">Nomor : </span><span style=\"mso-ansi-language: IN;font-family:Arial;font-size:14px\">*[no_srt]*</span><br /><span style=\"mso-ansi-language: IN;font-family:Arial;font-size:14px\"><o:p>\n</o:p></span></p><p class=\'MsoNormal\' style=\'text-align:justify;line-height:150%;tab-stops:36.0pt;margin:0cm 14.9pt .0001pt 9.0pt\'><span lang=\"EN-US\" style=\"line-height: 150%;font-family:Arial;font-size:14px\">Yang bertanda-tangan di bawah ini, Kepala Desa&nbsp;</span><span style=\"line-height:150%;mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[nmdesa]*\n</span><span lang=\"EN-US\" style=\"line-height:150%;font-family:Arial;font-size:14px\">Kecamatan </span><span style=\"line-height:150%;mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[nmkec]*</span><span style=\"line-height:150%;font-family:Arial;font-size:14px\"> <span lang=\"EN-US\">Kabupaten </span></span><span style=\"line-height: 150%;mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[nmkab]*</span><span lang=\"EN-US\" style=\"line-height:150%;font-family:Arial;font-size:14px\">, menerangkan bahwa :<o:p /><o:p>\n</o:p></span><br /><br /></p><table class=\'MsoNormalTable\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'584\' style=\'margin-left:35.5pt;border-collapse:collapse;mso-table-layout-alt:fixed;mso-yfti-tbllook:480;mso-padding-alt:0cm&amp;#32\'>\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;height:17.0pt\">\n  <td width=\"176\" valign=\"top\" style=\"width:132.15pt;padding:0cm 0cm 0cm 5.65pt;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">Nama\n  Lengkap<o:p /></span></p>\n  </td>\n  <td width=\"18\" valign=\"top\" style=\"width:13.5pt;padding:0cm 0cm 0cm 0cm;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">:<o:p /></span></p>\n  </td>\n  <td width=\"390\" valign=\"top\" style=\"width:292.3pt;padding:0cm 0cm 0cm 2.85pt;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-family:Arial;font-size:14px\"><b><span style=\"mso-ansi-language:IN\">*[nama]*<o:p /></span></b></span></p>\n  </td>\n </tr>\n <tr style=\"mso-yfti-irow:1;height:17.0pt\">\n  <td width=\"176\" valign=\"top\" style=\"width:132.15pt;padding:0cm 0cm 0cm 5.65pt;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">Nomor\n  KTP / NIK<o:p /></span></p>\n  </td>\n  <td width=\"18\" valign=\"top\" style=\"width:13.5pt;padding:0cm 0cm 0cm 0cm;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">:<o:p /></span></p>\n  </td>\n  <td width=\"390\" valign=\"top\" style=\"width:292.3pt;padding:0cm 0cm 0cm 2.85pt;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"font-family:Arial;font-size:14px\"><b><span style=\"mso-ansi-language:IN\">*[nik]*<o:p /></span></b></span></p>\n  </td>\n </tr>\n <tr style=\"mso-yfti-irow:2;height:17.0pt\">\n  <td width=\"176\" valign=\"top\" style=\"width:132.15pt;padding:0cm 0cm 0cm 5.65pt;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">Jenis\n  Kelamin<o:p /></span></p>\n  </td>\n  <td width=\"18\" valign=\"top\" style=\"width:13.5pt;padding:0cm 0cm 0cm 0cm;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">:<o:p /></span></p>\n  </td>\n  <td width=\"390\" valign=\"top\" style=\"width:292.3pt;padding:0cm 0cm 0cm 2.85pt;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[jk]*<o:p /></span></p>\n  </td>\n </tr>\n <tr style=\"mso-yfti-irow:3;height:17.0pt\">\n  <td width=\"176\" valign=\"top\" style=\"width:132.15pt;padding:0cm 0cm 0cm 5.65pt;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">Tempat\n  / Tanggal Lahir<o:p /></span></p>\n  </td>\n  <td width=\"18\" valign=\"top\" style=\"width:13.5pt;padding:0cm 0cm 0cm 0cm;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">:<o:p /></span></p>\n  </td>\n  <td width=\"390\" valign=\"top\" style=\"width:292.3pt;padding:0cm 0cm 0cm 2.85pt;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[tmp_lhr]*</span><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">, </span><span style=\"mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[tgl_lhr]*</span><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\"><o:p /></span></p>\n  </td>\n </tr>\n <tr style=\"mso-yfti-irow:4;height:17.0pt\">\n  <td width=\"176\" valign=\"top\" style=\"width:132.15pt;padding:0cm 0cm 0cm 5.65pt;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">Pekerjaan<o:p /></span></p>\n  </td>\n  <td width=\"18\" valign=\"top\" style=\"width:13.5pt;padding:0cm 0cm 0cm 0cm;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">:<o:p /></span></p>\n  </td>\n  <td width=\"390\" valign=\"top\" style=\"width:292.3pt;padding:0cm 0cm 0cm 2.85pt;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[pekerjaan]*</span><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\"><o:p /></span></p>\n  </td>\n </tr>\n <tr style=\"mso-yfti-irow:5;mso-yfti-lastrow:yes;height:17.0pt\">\n  <td width=\"176\" valign=\"top\" style=\"width:132.15pt;padding:0cm 0cm 0cm 5.65pt;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">Tempat\n  tinggal<o:p /></span></p>\n  </td>\n  <td width=\"18\" valign=\"top\" style=\"width:13.5pt;padding:0cm 0cm 0cm 0cm;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">:<o:p /></span></p>\n  </td>\n  <td width=\"390\" valign=\"top\" style=\"width:292.3pt;padding:0cm 0cm 0cm 2.85pt;\n  height:17.0pt\">\n  <p class=\"MsoNormal\" style=\"line-height:150%\"><span style=\"mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[alamat]* </span><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">RT: </span><span style=\"mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[rt]*</span><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">,&nbsp; RW: </span><span style=\"mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[rw]*</span><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">,&nbsp; KodePos: </span><span style=\"mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[kode_pos]*</span><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\"><o:p /></span></p>\n  </td>\n </tr>\n</tbody></table><p class=\'MsoNormal\' style=\'text-align:justify;line-height:150%;tab-stops:36.0pt;margin:0cm 14.9pt .0001pt 9.0pt\'><br /><span style=\"font-family:Arial;font-size:14px\">Bahwa berdasarkan data dan catatan yang ada serta sepanjang sepengetahuan kami, orang tersebut di atas benar-benar masih menjadi tanggungan orangtua / keluarganya.</span></p><p class=\'MsoNormal\' style=\'text-align:justify;line-height:150%;tab-stops:36.0pt;margin:0cm 14.9pt .0001pt 9.0pt\'><br /><span style=\"font-family:Arial;font-size:14px\">Surat\nketerangan ini akan dipergunakan untuk </span><b><span style=\"line-height:150%; mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[tujuan_surat]*</span></b><span lang=\"EN-US\" style=\"line-height:150%;font-family:Arial;font-size:14px\">.<b><o:p /></b></span></p><p class=\'MsoNormal\' style=\'text-align:justify;line-height:150%;tab-stops:36.0pt;margin:0cm 14.9pt .0001pt 9.0pt\'><br /><span lang=\"EN-US\" style=\"line-height: 150%;font-family:Arial;font-size:14px\">Surat keterangan ini berlaku sampai dengan tanggal :&nbsp;</span><b><span style=\"line-height:150%; mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[masa_berlaku]*</span></b><span lang=\"EN-US\" style=\"line-height:150%;font-family:Arial;font-size:14px\"><o:p /></span></p><p class=\'MsoNormal\' style=\'text-align:justify;tab-stops:36.0pt;margin:0cm 14.9pt .0001pt 9.0pt;line-height:150%\'><br /><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">Demikian untuk\nmenjadi maklum dan periksa bagi yang berkepentingan.<o:p /></span></p><p class=\'MsoNormal\' style=\'text-align:justify;tab-stops:54.0pt;margin:0cm 23.8pt .0001pt 9.0pt\'><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">&nbsp;</span></p><p class=\'MsoNormal\' style=\'text-align:justify;tab-stops:54.0pt;margin:0cm 23.8pt .0001pt 9.0pt\'><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">&nbsp;</span></p><div align=\'right\'>\n\n<table class=\"MsoNormalTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"340\" style=\"width:9.0cm;margin-left:-28.6pt;border-collapse:collapse;mso-yfti-tbllook:\n 160;mso-padding-alt:0cm 5.4pt 0cm 5.4pt\">\n <tbody><tr>\n  <td width=\"340\" valign=\"top\" style=\"width:9.0cm;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"text-align:center;line-height:150%\"><span style=\"line-height:150%; mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[nmdesa]*</span><span lang=\"EN-US\" style=\"line-height:150%;font-family:Arial;font-size:14px\">, </span><span style=\"line-height:150%; mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[tglsrt]*</span><br /><span style=\"line-height:150%; mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[an]* </span><span lang=\"EN-US\" style=\"line-height:150%;font-family:Arial;font-size:14px\"><o:p /></span><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">Kepala\n  Desa </span><span style=\"mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[nmdesa]*</span><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\"><o:p /></span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><b><u><span style=\"mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[nm_ttd]*</span></u></b><br /><span style=\"font-family:Arial;font-size:14px\">NIP :&nbsp; </span><u><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\"><o:p /></span></u><span style=\"mso-ansi-language:IN;font-family:Arial;font-size:14px\">*[nip]*</span><span lang=\"EN-US\" style=\"font-family:Arial;font-size:14px\"><o:p /></span></p>\n  </td>\n </tr>\n</tbody></table>\n\n</div>","0","1","0","");
INSERT INTO jns_sk VALUES("53","141/*0*/ Pemdes/","SURAT PERNYATAAN KEHILANGAN","<p>\n<img alt=\"\" src=\"/uploads/KOP CIMENGA KUNINGAN.jpg\" /></p><p>&nbsp;</p><p align=\'center\' style=\'margin-bottom: 0.0001pt; text-align: center\'><b><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">SURAT\nPERNYATAAN KEHILANGAN</span></b></p><p align=\'center\' style=\'margin-bottom: 0.0001pt; text-align: center\'><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Nomor : *[no_srt]*</span><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\"><br />\n</span></p><p style=\'margin-bottom: 0.0001pt; text-align: justify\'>&nbsp;</p><p style=\'margin-bottom: 0.0001pt; text-align: justify\'><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Yang bertanda tangan dibawah ini Kepala Desa\nCimenga Kecamatan Darma Kabupaten Kuningan menerangkan bahwa :</span></p><p style=\'margin-bottom: 0.0001pt; text-align: justify\'><br /></p><div align=\'center\'>\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse: collapse\">\n <tbody><tr>\n  <td width=\"169\" valign=\"top\" style=\"width:127.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Nama</span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  </td>\n  <td width=\"373\" valign=\"top\" style=\"width:280.0pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[nama]*</span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"169\" valign=\"top\" style=\"width:127.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">NIK</span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  </td>\n  <td width=\"373\" valign=\"top\" style=\"width:280.0pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[nik]*</span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"169\" valign=\"top\" style=\"width:127.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Tempat, Tgl Lahir</span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  </td>\n  <td width=\"373\" valign=\"top\" style=\"width:280.0pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[tmp_lhr]*, *[tgl_lhr]*</span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"169\" valign=\"top\" style=\"width:127.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Jenis Kelamin</span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  </td>\n  <td width=\"373\" valign=\"top\" style=\"width:280.0pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[jk]*</span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"169\" valign=\"top\" style=\"width:127.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Agama</span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  </td>\n  <td width=\"373\" valign=\"top\" style=\"width:280.0pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[agama]*</span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"169\" valign=\"top\" style=\"width:127.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Kewarganegaraan</span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  </td>\n  <td width=\"373\" valign=\"top\" style=\"width:280.0pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[wrg_ngr]*</span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"169\" valign=\"top\" style=\"width:127.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Pekerjaan</span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  </td>\n  <td width=\"373\" valign=\"top\" style=\"width:280.0pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[pekerjaan]*</span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"169\" valign=\"top\" style=\"width:127.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Status</span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  </td>\n  <td width=\"373\" valign=\"top\" style=\"width:280.0pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[status_kawin]*</span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"169\" valign=\"top\" style=\"width:127.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Alamat</span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  </td>\n  <td width=\"373\" valign=\"top\" style=\"width:280.0pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[alamat]* RT *[rt]* , RW *[rw]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Desa Cimenga, Kecamatan Darma</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Kabupaten Kuningan</span></p>\n  </td>\n </tr>\n</tbody></table>\n\n</div><p style=\'margin-bottom: 0.0001pt; text-align: justify\'><br /></p><p style=\'margin-bottom: 0.0001pt; text-align: justify\'><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Nama tersebut diatas benar adalah warga kami Desa\nCimenga Kecamatan Darma dan saat ini melaporkan kehilangan dokumen Kependudukan\nsebagai berikut&nbsp; :</span></p><p align=\'center\' style=\'margin-bottom: 0.0001pt; text-align: center\'><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">&nbsp;--- <b><i>*[dok_hilang]*</i></b> ---</span></p><p style=\'margin-bottom: 0.0001pt; text-align: justify\'><br /><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Demikian Surat Pernyataan ini kami buat dengan\nsebenarnya untuk digunakan seperlunya.</span></p><p>&nbsp;</p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'border-collapse: collapse\'>\n <tbody><tr>\n  <td width=\"308\" valign=\"top\" style=\"width:231.05pt;padding:0cm 5.4pt 0cm 5.4pt\">&nbsp;</td>\n  <td width=\"308\" valign=\"top\" style=\"width:231.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Cimenga, *[tglsrt]*</span></p>\n  <p align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[an]*\n  Kepala Desa Cimenga</span></p>\n  \n  \n  \n  <p>&nbsp;</p>\n  \n  \n  \n  <p>&nbsp;</p>\n  \n  \n  \n  <p>&nbsp;</p>\n  \n  \n  \n  <p align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><u><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[nm_ttd]*</span></u></b></p>\n  </td>\n </tr>\n</tbody></table>","3","1","0","");
INSERT INTO jns_sk VALUES("54","141/*0*/ Pemdes/","SURAT KETERANGAN USIA LANJUT","<p>&nbsp;<img alt=\"\" src=\"/uploads/KOP CIMENGA KUNINGAN.jpg\" /></p><p>&nbsp;</p><p class=\'MsoNormal\' align=\'center\' style=\'margin-bottom: 0.0001pt; text-align: center\'><b><u><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:&quot;Times New Roman&quot;\">SURAT KETERANGAN USIA LANJUT</span></u></b><br /><span lang=\"IN\" style=\"font-size:12.0pt;\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;\"><u><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:&quot;Times New Roman&quot;\"><o:p>\n</o:p></span></u>Nomor\n: </span><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-ansi-language:EN-US\">*[no_srt]*</span></p><p>&nbsp;</p><p style=\"text-align:justify\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Yang bertandatangan dibawah ini Kepala Desa Cimenga Kecamatan Darma Kabupaten Kuningan, dengan ini menerangkan&nbsp; :</span><br /><span style=\"font-size:12.0pt;\nline-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:\nEN-US\"><o:p>\n</o:p></span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-ansi-language:EN-US\">&nbsp;</span></p><div align=\'center\'>\n\n<table class=\"MsoTableGrid\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse: collapse\">\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;\n  page-break-inside:avoid;height:126.75pt\">\n  <td width=\"169\" valign=\"top\" style=\"width:127.1pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:126.75pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">Nama<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">NIK<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">Tempat, Tgl Lahir<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">Jenis Kelamin<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">Pekerjaan<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">Kewarganegaraan<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">Alamat<o:p /></span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:126.75pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">:</span><span lang=\"IN\"><o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">:</span><span lang=\"IN\"><o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">:</span><span lang=\"IN\"><o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">:</span><span lang=\"IN\"><o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">:</span><span lang=\"IN\"><o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">:</span><span lang=\"IN\"><o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">:</span><span lang=\"IN\"><o:p /></span></p>\n  </td>\n  <td width=\"373\" valign=\"top\" style=\"width:280.0pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:126.75pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">*[nama]* <o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">*[nik]* <o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">*[tmp_lhr]*, *[tgl_lhr]* <o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">*[jk]* <o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">*[pekerjaan]* <o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">*[wrg_ngr]* <o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">*[alamat]* RT *[rt]* , RW *[rw]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">Desa Cimenga, Kecamatan Darma<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">Kabupaten Kuningan<o:p /></span></p>\n  </td>\n </tr>\n</tbody></table>\n\n</div><p>&nbsp;</p><p style=\"text-align:justify\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Bahwa Orang tersebut diatas,&nbsp;<b><i>masih hidup namun tidak\nmemungkinkan untuk bepergian keluar rumah dikarenakan usia yang sudah lanjut</i></b>.</span></p><p style=\"text-align:justify\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Demikian surat keterangan ini kami buat dengan\nsesungguhnya agar menjadi tahu dan maklum adanya.<o:p /></span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify\'><span style=\"font-family:&quot;Book Antiqua&quot;,&quot;serif&quot;;\nmso-ansi-language:EN-US\">&nbsp;</span></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'border-collapse: collapse\'>\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;\n  page-break-inside:avoid\">\n  <td width=\"308\" valign=\"top\" style=\"width:231.05pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">&nbsp;</span></p>\n  </td>\n  <td width=\"308\" valign=\"top\" style=\"width:231.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">Cimenga,\n  *[tglsrt]*<o:p /></span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">*[an]*\n  Kepala Desa Cimenga<o:p /></span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><u><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:\n  EN-US\">*[nm_ttd]*<o:p /></span></u></b></p>\n  </td>\n </tr>\n</tbody></table>","1","1","0","");
INSERT INTO jns_sk VALUES("55","141/*0*/ Pemdes/","SURAT KETERANGAN TIDAK MAMPU ","<p>&nbsp;<img alt=\"\" src=\"/uploads/KOP CIMENGA KUNINGAN.jpg\" /></p><p>&nbsp;</p><p align=\'center\' style=\'margin-bottom: 0.0001pt; text-align: center\'><b><u><span style=\"font-size:12.0pt;line-height:115%;font-family:Bookman Old Style,serif\">SURAT KETERANGAN </span></u></b><b><u><span style=\"font-size:12.0pt; line-height:115%;font-family:Bookman Old Style,serif\">TIDAK MAMPU</span></u></b><br />\n<span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Nomor\n: </span><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[no_srt]*</span></p><p>&nbsp;</p><p style=\"text-align:justify\"><span style=\"font-size:12.0pt;line-height: 115%;font-family:Bookman Old Style,serif\">Yang bertandatangan dibawah ini\nKepala Desa Cimenga Kecamatan Darma Kabupaten Kuningan, dengan ini\nmenerangkan&nbsp; :</span></p><div align=\'center\'>\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse: collapse\">\n <tbody><tr style=\"page-break-inside:avoid;height:126.75pt\">\n  <td width=\"169\" valign=\"top\" style=\"width:127.1pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:126.75pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Nama</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">NIK</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Tempat, Tgl Lahir</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Jenis Kelamin</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Warga Negara</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Agama</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Status</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Pekerjaan</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Nama Orang Tua</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Alamat</span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:126.75pt\">\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  </td>\n  <td width=\"373\" valign=\"top\" style=\"width:280.0pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:126.75pt\">\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[nama]* </span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[nik]* </span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[tmp_lhr]*, *[tgl_lhr]* </span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[jk]* </span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[wrg_ngr]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[agama]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[status_kawin]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[pekerjaan]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Ayah : *[nama1]*&nbsp;\n  Ibu : *[nama2]* </span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[alamat]* RT *[rt]* , RW *[rw]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Desa Cimenga, Kecamatan Darma</span></p>\n  <p style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Kabupaten Kuningan</span></p>\n  </td>\n </tr>\n</tbody></table>\n\n</div><p>&nbsp;</p><p style=\"text-align:justify\"><span style=\"font-size:12.0pt;line-height: 115%;font-family:Bookman Old Style,serif\">Nama\ntersebut di atas benar adalah warga kami Desa Cimenga Kecamatan Darma Kabupaten\nKuningan yang pada saat ini diketahui kehidupan ekonominya <b><i><u>KURANG MAMPU</u></i></b>.</span></p><p>&nbsp;</p><p style=\"text-align:justify\"><span style=\"font-size:12.0pt;line-height: 115%;font-family:Bookman Old Style,serif\">Demikian\nketerangan ini kami buat dengan sebenarnya untuk digunakan seperlunya.</span></p><p>&nbsp;</p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'border-collapse: collapse\'>\n <tbody><tr style=\"page-break-inside:avoid\">\n  <td width=\"308\" valign=\"top\" style=\"width:231.05pt;padding:0cm 5.4pt 0cm 5.4pt\">&nbsp;</td>\n  <td width=\"308\" valign=\"top\" style=\"width:231.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Cimenga,\n  *[tglsrt]*</span></p>\n  <p align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[an]*\n  Kepala Desa Cimenga</span></p>\n  \n  \n  \n  <p>&nbsp;</p>\n  \n  \n  \n  <p>&nbsp;</p>\n  \n  \n  \n  <p>&nbsp;</p>\n  \n  \n  \n  <p align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><u><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[nm_ttd]*</span></u></b></p>\n  </td>\n </tr>\n</tbody></table>","1","1","0","");
INSERT INTO jns_sk VALUES("56","..../*0*/Pemdes/","SURAT KETERANGAN KELAHIRAN","<p>&nbsp;<img alt=\"\" src=\"/uploads/KOP CIMENGA KUNINGAN.jpg\" /></p><p style=\"text-align:center\">&nbsp;</p><p style=\"text-align:center\">&nbsp;<b style=\'text-align: center\'><u><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">SURAT\nKETERANGAN KELAHIRAN</span></u></b><br /><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Nomor : </span><span style=\"font-size:\n12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:\nEN-US\">*[no_srt]*<o:p /></span></p><p class=\'MsoNormal\' style=\'margin-bottom:0cm;margin-bottom:.0001pt\'><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">\n</span></p><p style=\"text-align:justify\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Yang bertanda tangan dibawah ini Kepala Desa\nCimenga Kecamatan Darma Kabupaten Kuningan, menerangkan dengan sebenarnya bahwa\n: <o:p /></span></p><p class=\'MsoNormal\' style=\'margin-bottom:0cm;margin-bottom:.0001pt\'><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;</span></p><div align=\'center\'>\n\n<table class=\"MsoNormalTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-left:1.4pt;border-collapse:collapse;mso-padding-alt:0cm 5.4pt 0cm 5.4pt\">\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;\n  height:85.85pt\">\n  <td width=\"193\" valign=\"top\" style=\"width:144.75pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:85.85pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Nama<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Tempat,\n  Tanggal lahir<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Hari\n  / Pukul<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Jenis\n  Kelamin<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Agama<o:p /></span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:85.85pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">:<o:p /></span></p>\n  </td>\n  <td width=\"311\" valign=\"top\" style=\"width:233.45pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:85.85pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">*[nmanak]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">*[ttl]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">*[hari]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">*[jkanak]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">*[agamaanak]*<o:p /></span></p>\n  </td>\n </tr>\n</tbody></table>\n\n<br />\n</div><p style=\"text-align:center\"><b><u><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:&quot;Times New Roman&quot;\">Anak ke : </span></u></b><b><u><span style=\"font-size:12.0pt;\nline-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:\n&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">*[anakke]*</span></u></b><b><u><span style=\"font-size:12.0pt;\nline-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:\n&quot;Times New Roman&quot;\"> <span lang=\"IN\">dari</span></span></u></b><br /></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'margin-left: 33.75pt; border-collapse: collapse\'>\n <tbody><tr>\n  <td width=\"189\" valign=\"top\" style=\"width:5.0cm;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">Ibu<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">NIK<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">Bapak<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">NIK<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">Alamat<o:p /></span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">:<o:p /></span></p>\n  </td>\n  <td width=\"331\" valign=\"top\" style=\"width:248.35pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\"><o:p>*[nama]*&nbsp;</o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">*[nik]*</span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">*[nama1]*</span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">*[nik1]*</span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">*[alamat]* </span><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:\n  EN-US\">RT *[rt]* , RW *[rw]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">Desa Cimenga, Kecamatan Darma<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">Kabupaten Kuningan</span><span style=\"font-size:\n  12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\n  mso-ansi-language:EN-US\"><o:p /></span></p>\n  </td>\n </tr>\n</tbody></table><p class=\'MsoNormal\' style=\'text-align:justify\'><span style=\"font-size:12.0pt;\nline-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:\n&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p><p class=\'MsoNormal\' style=\'text-align:justify\'><span lang=\"IN\" style=\"font-size:\n12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:\n&quot;Times New Roman&quot;\">Nama-nama tersebut di atas benar adalah warga kami Desa\nCimenga Kecamatan Darma Kabupaten Kuningan.<o:p /></span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify\'><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;\">Demikian\nketerangan ini kami buat dengan sebenarnya untuk digunakan seperlunya.</span><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:\n&quot;Times New Roman&quot;;mso-ansi-language:EN-US\"><o:p /></span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify\'><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify\'><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify\'><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'border-collapse: collapse\'>\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;\n  page-break-inside:avoid\">\n  <td width=\"308\" valign=\"top\" style=\"width:231.05pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">&nbsp;</span></p>\n  </td>\n  <td width=\"308\" valign=\"top\" style=\"width:231.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">Cimenga,\n  *[tglsrt]*<o:p /></span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">*[an]*\n  Kepala Desa Cimenga<o:p /></span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><u><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:\n  EN-US\">*[nm_ttd]*<o:p /></span></u></b></p>\n  </td>\n </tr>\n</tbody></table>","7","1","0","");
INSERT INTO jns_sk VALUES("57","471/*0*/Pemdes/","SURAT KETERANGAN KEMATIAN","<p>&nbsp;<img alt=\"\" src=\"/uploads/KOP CIMENGA KUNINGAN.jpg\" />\n</p><p style=\"text-align:center\"><br /><b style=\'text-align: center\'><span lang=\"IN\" style=\"font-size:13.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">SURAT\nKETERANGAN KEMATIAN</span></b><br /><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Nomor : </span><span style=\"font-size:\n12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:\nEN-US\">*[no_srt]*</span></p><p><br /><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Saya yang bertanda tangan dibawah ini Kepala Desa\nCimenga Kecamatan Darma Kabupaten Kuningan menerangkan bahwa :</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-ansi-language:EN-US\"><o:p /></span></p><table class=\'MsoNormalTable\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'margin-left:33.75pt;border-collapse:collapse;mso-padding-alt:0cm&#32;5.4pt&#32;0cm&#32;5.4pt\'>\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;\n  height:85.85pt\">\n  <td width=\"193\" valign=\"top\" style=\"width:144.75pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:85.85pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Nama<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Tempat,\n  Tanggal lahir<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">Pekerjaan<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">Alamat<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">&nbsp;</span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:85.85pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">&nbsp;</span></p>\n  </td>\n  <td valign=\"top\" style=\"width:403px;padding:0cm 5.4pt 0cm 5.4pt; height:85.85pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\"><o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">*[nama]*</span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">*[tmp_lhr]*. *[tgl_lhr]*</span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">*[pekerjaan]*</span></p>\n  <p class=\'MsoNormal\' style=\'margin-bottom:0cm;margin-bottom:.0001pt\'><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Dusun *[alamat]* RT *[rt]* RW *[rw]*</span></p><p class=\'MsoNormal\' style=\'margin-bottom:0cm;margin-bottom:.0001pt\'><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-ansi-language:EN-US\">Desa Cimenga Kecamatan Darma</span></p><p class=\'MsoNormal\' style=\'margin-bottom:0cm;margin-bottom:.0001pt\'><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-ansi-language:EN-US\"><o:p>Kabupaten Kuningan Jawa Barat&nbsp;</o:p></span></p></td>\n </tr>\n</tbody></table><br /><p style=\"text-align:center\"><b><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">TELAH\nMENINGGAL DUNIA</span></b></p><table class=\'MsoNormalTable\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'margin-left:33.75pt;border-collapse:collapse;mso-padding-alt:0cm&#32;5.4pt&#32;0cm&#32;5.4pt\'>\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;\n  height:85.85pt\">\n  <td width=\"193\" valign=\"top\" style=\"width:144.75pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:85.85pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">Pada Hari, Tanggal<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">Dimakamkan<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">&nbsp;</span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:85.85pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><o:p>\n</o:p><o:p>\n</o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">&nbsp;</span></p>\n  </td>\n  <td width=\"311\" valign=\"top\" style=\"width:233.45pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:85.85pt\">\n  \n<p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt\'><span style=\"font-size: 12pt; line-height: 18.4px; font-family: &quot;Bookman Old Style&quot;, serif\">*[pdhtgl]*</span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt\'><span style=\"font-size: 12pt; line-height: 18.4px; font-family: &quot;Bookman Old Style&quot;, serif\">*[dimakamkan]*</span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt\'><span style=\"font-size: 12pt; line-height: 18.4px; font-family: &quot;Bookman Old Style&quot;, serif\">Dusun *[dusun]*</span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt\'><span style=\"font-size: 12pt; line-height: 18.4px; font-family: &quot;Bookman Old Style&quot;, serif\">Desa Cimenga Kecamatan Darma</span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt\'><span style=\"font-size: 12pt; line-height: 18.4px; font-family: &quot;Bookman Old Style&quot;, serif\">Kabupaten Kuningan Jawa Barat</span></p><p>&nbsp;</p></td>\n </tr>\n</tbody></table><p class=\'MsoNormal\' style=\'margin-bottom:0cm;margin-bottom:.0001pt\'><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-ansi-language:EN-US\">Demikian Surat Keterangan Kematian ini dibuat\ndengan sebenar-benarnya agar dapat dipergunakan sebagaimana mestinya.</span></p><p class=\'MsoNormal\' style=\'margin-bottom:0cm;margin-bottom:.0001pt\'><br /><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-ansi-language:EN-US\"><o:p></o:p></span></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'border-collapse: collapse\'>\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;\n  page-break-inside:avoid\">\n  <td width=\"308\" valign=\"top\" style=\"width:231.05pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">&nbsp;</span></p>\n  </td>\n  <td width=\"308\" valign=\"top\" style=\"width:231.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">Cimenga, *[tglsrt]*<o:p /></span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">*[an]*\n  Kepala Desa Cimenga<o:p /></span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><u><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:\n  EN-US\">*[nm_ttd]*<o:p /></span></u></b></p>\n  </td>\n </tr>\n</tbody></table>","5","1","0","");
INSERT INTO jns_sk VALUES("58",".../*0*/Linmas/","SURAT KETERANGAN IJIN KERAMAIAN","<p>&nbsp;<img alt=\"\" src=\"/uploads/KOP CIMENGA KUNINGAN.jpg\" /></p><p class=\'MsoNormal\' align=\'center\' style=\'margin-bottom: 0.0001pt; text-align: center\'><b><u><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:&quot;Times New Roman&quot;\">SURAT KETERANGAN IJIN KERAMAIAN</span></u></b><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:&quot;Times New Roman&quot;\"><o:p /></span></p><p class=\'MsoNormal\' align=\'center\' style=\'margin: 0cm 0cm 0.0001pt 4cm; text-align: center; text-indent: -4cm\'><span lang=\"IN\" style=\"font-size:12.0pt;\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;\">Nomor : *[no_srt]*<o:p>\n</o:p></span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify\'><br /><span lang=\"IN\" style=\"font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:&quot;Times New Roman&quot;\">Pemerintah Desa Cimenga Kecamatan\nDarma, Kabupaten Kuningan dalam rangka memenuhi permohonan : Permohonan ijin\nmengadakan Keramaian dari Permohonan :</span><br /><br /></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify\'><xml rtecc=\'1\' /></p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'margin-left:33.75pt;border-collapse:collapse\'>\n <tbody><tr style=\"height:85.85pt\">\n  <td width=\"193\" valign=\"top\" style=\"width:144.75pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:85.85pt\">\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">Nama</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">Tempat, Tanggal lahir</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">Pekerjaan</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">Alamat</span></p>\n  \n  \n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\">&nbsp;</p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\">&nbsp;</p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">Hari\n  / Tanggal</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">Waktu</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">Kegiatan</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">Acara</span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:85.85pt\">\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">:</span></p>\n  \n  \n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\">&nbsp;</p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\">&nbsp;</p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">:</span></p>\n  </td>\n  <td width=\"311\" valign=\"top\" style=\"width:233.45pt;padding:0cm 5.4pt 0cm 5.4pt;\n  height:85.85pt\">\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">*[nama]*</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">*[tmp_lhr]*,\n  *[tgl_lhr]*</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">*[pekerjaan]*</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">*[alamat]*\n  RT *[rt]* RW *[rw]*</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">Desa\n  Cimenga Kecamatan Darma</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">Kabupaten\n  Kuningan Jawa Barat </span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">*[htglacara]*</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">*[waktu]*</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">*[keg]*</span></p>\n  <p style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><span style=\"font-family:Bookman Old Style,serif\">*[acara]*</span></p>\n  </td>\n </tr>\n</tbody></table><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify\'><br /><span lang=\"IN\" style=\"font-family: &quot;Bookman Old Style&quot;, serif\">Dengan ini menerangkan bahwa pada prinsipnya tidak keberatan atas permohonan yang bersangkutan dengan ketentuan sebagai berikut :</span></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'border-collapse: collapse\'><tbody><tr><td width=\"26\" valign=\"top\" style=\"width: 19.6pt; padding: 0cm 5.4pt; height: 161px\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif; text-align: justify\">1.</span><br /><span style=\"font-family: &quot;Bookman Old Style&quot;, serif; text-align: justify\">2.</span><br /><br /><br /><br /><span style=\"font-family: &quot;Bookman Old Style&quot;, serif; text-align: justify\">3.&nbsp;</span><br /><br /><span style=\"font-family: &quot;Bookman Old Style&quot;, serif; text-align: justify\">4.</span></td><td valign=\"top\" style=\"width: 625px; padding: 0cm 5.4pt; height: 161px\"><p class=\"MsoListParagraphCxSpFirst\" style=\"margin: 0cm 0cm 0.0001pt 1.7pt; text-align: justify\"><span lang=\"IN\" style=\"font-family: &quot;Bookman Old Style&quot;, serif\">Waktu dan tanggal pelaksanaan kegiatan keramaian harus sesuai dengan permohonan<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin: 0cm 0cm 0.0001pt 1.7pt; text-align: justify\"><span lang=\"IN\" style=\"font-family: &quot;Bookman Old Style&quot;, serif\">Pada saat pelaksanaan kegiatan keramaian harus memperhatikan terciptanya ketentraman dan ketertiban umum dalam lingkungannya, baik hubungan dengan tetangga dan masyarakat, waktu-waktu ibadah, kerukunan umat beragama dan kebersihan lingkungan setelah selesai keramaian;<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin: 0cm 0cm 0.0001pt 1.7pt; text-align: justify\"><span lang=\"IN\" style=\"font-family: &quot;Bookman Old Style&quot;, serif\">Pada waktu dilaksanakan kegiatan keramaian tidak dibenarkan / dilarang melakukan hal-hal yang bertentangan dengan ketentuan perundang-undangan dan adat istiadat.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-family: &quot;Bookman Old Style&quot;, serif\">Membuat pernyataan dari yang bersangkutan dan Ketua Pemuda</span></p></td></tr></tbody></table><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify\'><span lang=\"IN\" style=\"font-family: &quot;Bookman Old Style&quot;, serif\">Demikian surat keterangan ini diberikan untuk dipergunakan sebagaimana mestinya.<o:p></o:p></span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify\'><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">&nbsp;</span></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'border-collapse: collapse\'><tbody><tr style=\"break-inside: avoid\"><td width=\"308\" valign=\"top\" style=\"width: 231.05pt; padding: 0cm 5.4pt\"><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">Tanggal : &nbsp;__________________________</span><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\"><br />Nomor&nbsp;&nbsp; : &nbsp;<o:p></o:p></span><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">__________________________</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">Mengetahui :<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">CAMAT DARMA<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">&nbsp;</span></p><p>&nbsp;</p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">_______________________________<o:p></o:p></span></p></td><td width=\"308\" valign=\"top\" style=\"width: 231.1pt; padding: 0cm 5.4pt\"><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">Cimenga, *[tglsrt]*<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">*[an]* Kepala Desa Cimenga<o:p></o:p></span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">&nbsp;</span><br /></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><u><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">*[nm_ttd]*<o:p></o:p></span></u></b></p></td></tr></tbody></table><p class=\'MsoNormal\' align=\'center\' style=\'margin-bottom: 0.0001pt; text-align: center\'><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">Mengetahui :<o:p></o:p></span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify; text-indent: 36pt\'><span lang=\"IN\" style=\"font-family: &quot;Bookman Old Style&quot;, serif\">&nbsp;</span></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'border-collapse: collapse\'><tbody><tr style=\"break-inside: avoid\"><td width=\"308\" valign=\"top\" style=\"width: 231.05pt; padding: 0cm 5.4pt\"><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span lang=\"IN\" style=\"font-family: &quot;Bookman Old Style&quot;, serif\">DANRAMIL KEC. DARMA</span><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">_______________________________<o:p></o:p></span></p></td><td width=\"308\" valign=\"top\" style=\"width: 231.1pt; padding: 0cm 5.4pt\"><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span lang=\"IN\" style=\"font-family: &quot;Bookman Old Style&quot;, serif\">KA. POLSEK KEC. DARMA</span><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif\">_______________________________<b><u><o:p></o:p></u></b></span></p></td></tr></tbody></table>","2","1","0","");
INSERT INTO jns_sk VALUES("59","141/*0*/ Pemdes/","SURAT KETERANGAN DOMISILI","<p><img alt=\"\" src=\"/uploads/KOP CIMENGA KUNINGAN.jpg\" />&nbsp;</p><p style=\"text-align:center\"><br /><b><u><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:Arial\">SURAT KETERANGAN DOMISILI</span></u></b><br /><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">Nomor : *[no_srt]*</span></p><p><p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\njustify\"><br /><span style=\"font-size:12.0pt;line-height:115%;font-family:Bookman Old Style,serif\">Yang bertanda tangan\ndibawah ini Kepala Desa Cimenga Kecamatan Darma Kabupaten Kuningan, dengan ini\nmenerangkan bahwa :</span></p>\n\n\n\n<p>&nbsp;</p>\n\n\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"612\" style=\"width: 459pt;left:15px\" align=\"center\">\n <tbody><tr>\n  <td width=\"187\" valign=\"top\" style=\"width:140.55pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Nama </span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">NIK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Tempat,\n  tgl lahir</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Jenis\n  Kelamin</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Warga\n  Negara</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Agama</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Status</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Pekerjaan</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Alamat</span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">:</span></p>\n  </td>\n  <td width=\"405\" valign=\"top\" style=\"width:303.8pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[nama]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[nik]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[tmp_lhr]*, *[tgl_lhr]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[jk]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[wrg_ngr]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[agama]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[status_kawin]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[pekerjaan]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Dusun *[alamat]* RT *[rt]* RW *[rw]*</span></p>\n  <p style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Desa Cimenga Kecamatan Darma Kabupaten Kuningan Jawa Barat&nbsp;</span></p>\n  </td>\n </tr>\n</tbody></table>\n\n\n\n<p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\njustify\">&nbsp;</p>\n\n\n\n<p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\njustify\"><span style=\"font-size:12.0pt;line-height:115%;font-family:Bookman Old Style,serif\">Nama tersebut di atas\nbenar adalah warga kami Desa Cimenga Kecamatan Darma Kabupaten Kuningan yang\npada saat ini berdomisili sesuai alamat tersebut diatas, saat ini Kartu Tanda\nPenduduk (KTP) yang bersangkutan masih dalam proses/ belum selesai.</span></p>\n\n\n\n<p style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify\"><br /><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Demikian keterangan ini\nkami buat dengan sebenarnya untuk digunakan seperlunya.</span></p>\n\n\n\n<p>&nbsp;</p>\n\n\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n <tbody><tr style=\"page-break-inside:avoid\">\n  <td width=\"308\" valign=\"top\" style=\"width:231.05pt;padding:0cm 5.4pt 0cm 5.4pt\">&nbsp;</td>\n  <td width=\"308\" valign=\"top\" style=\"width:231.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">Cimenga,\n  *[tglsrt]*</span></p>\n  <p align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[an]*\n  Kepala Desa Cimenga</span></p>\n  \n  \n  \n  \n  <p>&nbsp;</p>\n  \n  \n  \n  \n  <p>&nbsp;</p>\n  \n  \n  \n  \n  <p align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><u><span style=\"font-size:12.0pt;font-family:Bookman Old Style,serif\">*[nm_ttd]*</span></u></b></p>\n  </td>\n </tr>\n</tbody></table>&nbsp;</p>","2","1","0","");
INSERT INTO jns_sk VALUES("60","141/*0*/ Pemdes/","SURAT KETERANGAN BEDA NAMA","<p><img alt=\"\" src=\"/uploads/KOP CIMENGA KUNINGAN.jpg\" />&nbsp;</p><p style=\"text-align:center\"><b style=\'text-align: center\'><u><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:Arial\">SURAT KETERANGAN BEDA NAMA</span></u></b><br />\n<span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">Nomor : *[no_srt]*</span></p><p style=\"text-align:justify\"><br /><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">Yang bertanda tangan\ndibawah ini Kepala Desa Cimenga Kecamatan Darma Kabupaten Kuningan, dengan ini\nmenerangkan sebenarnya bahwa :</span><span style=\"font-size:12.0pt;line-height:\n115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\nmso-ansi-language:EN-US\"><o:p /></span></p><div align=\'center\'>\n\n<table class=\"MsoTableGrid\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"555\" style=\"width: 416.5pt; border-collapse: collapse\">\n <tbody><tr>\n  <td width=\"158\" valign=\"top\" style=\"width:118.8pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Nama </span><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:\n  Arial;mso-ansi-language:EN-US\"><o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">NIK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Tempat, tgl lahir</span><span style=\"font-size:\n  12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\"><o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Jenis Kelamin</span><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\"><o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Warga Negara</span><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\"><o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Agama<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Status<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Pekerjaan<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">Alamat</span><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:\n  Arial;mso-ansi-language:EN-US\"><o:p /></span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p /></span></p>\n  </td>\n  <td width=\"377\" valign=\"top\" style=\"width:283.05pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[nama]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[nik]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[tmp_lhr]*, *[tgl_lhr]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[jk]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[wrg_ngr]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[agama]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[status_kawin]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[pekerjaan]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">Dusun *[alamat]* RT *[rt]* RW *[rw]*</span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">Desa Cimenga Kecamatan Darma Kabupaten Kuningan Jawa Barat&nbsp;<o:p /></span></p>\n  </td>\n </tr>\n</tbody></table>\n\n</div><p class=\'MsoNormal\' style=\"text-align:justify\"><br /><span lang=\"IN\" style=\"font-size:\n12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:\nArial\">Bahwa nama tersebut di atas berbeda antara yang tercantum di *[tercantum1]* tertera dengan nama *[namadi1]*&nbsp;dan yang tercantum&nbsp; di *[tercantum2]* tertera dengan nama *[namadi2]*<b><i>,\n</i></b>meskipun ada perbedaan nama&nbsp; orangnya tetap satu orang (orang yang sama).<o:p>\n</o:p></span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt\'><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">Demikian keterangan ini\nkami buat dengan sebenarnya untuk digunakan seperlunya.</span><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:\nArial;mso-ansi-language:EN-US\"><o:p /></span></p><p class=\'MsoNormal\' style=\'margin-bottom: 0.0001pt; text-align: justify\'><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:Arial;mso-ansi-language:EN-US\">&nbsp;</span></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'border-collapse: collapse\'>\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;\n  page-break-inside:avoid\">\n  <td width=\"308\" valign=\"top\" style=\"width:231.05pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">&nbsp;</span></p>\n  </td>\n  <td width=\"308\" valign=\"top\" style=\"width:231.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">Cimenga,\n  *[tglsrt]*<o:p /></span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">*[an]*\n  Kepala Desa Cimenga<o:p /></span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><u><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:\n  EN-US\">*[nm_ttd]*<o:p /></span></u></b></p>\n  </td>\n </tr>\n</tbody></table>","1","1","0","");
INSERT INTO jns_sk VALUES("61","..../*0*/Pemdes/","SURAT KETERANGAN USAHA","<p><img alt=\"\" src=\"/uploads/KOP CIMENGA KUNINGAN.jpg\" />&nbsp;</p><p>&nbsp;</p><p style=\"text-align:center\"><b><u><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:Arial\">SURAT KETERANGAN USAHA (DALAM DAERAH)</span></u></b><br />\n<span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">Nomor : *[no_srt]*<br />\n<br /></span></p><p style=\"text-align:justify;line-height:180%\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">Yang bertanda tangan\ndibawah ini Kepala Desa Cimenga Kecamatan Darma Kabupaten Kuningan, dengan ini\nmenerangkan bahwa :</span><span style=\"font-size:12.0pt;line-height:115%;\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;mso-ansi-language:\nEN-US\"><o:p /></span></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'border-collapse: collapse\'>\n <tbody><tr>\n  <td width=\"29\" valign=\"top\" style=\"width:22.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">1.<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">2.<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">3.<o:p /></span></p>\n  </td>\n  <td width=\"167\" valign=\"top\" style=\"width:125.05pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">Nama<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">Tempat Tgl Lahir<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">Alamat<o:p /></span></p>\n  </td>\n  <td width=\"19\" valign=\"top\" style=\"width:14.2pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">:<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">:<o:p /></span></p>\n  </td>\n  <td width=\"401\" valign=\"top\" style=\"width:300.8pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">*[nama]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">*[tmp_lhr]*, *[tgl_lhr]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">Dusun *[alamat]* RT *[rt]* RW *[rw]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">Desa Cimenga Kecamatan Darma<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">Kabupaten Kuningan<o:p /></span></p>\n  </td>\n </tr>\n</tbody></table><p style=\"line-height:180%\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><br /><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp; &nbsp; &nbsp; &nbsp;Adalah Penduduk Tetap Desa Cimenga</span><span style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;mso-ansi-language:EN-US\"><o:p /></span></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'border-collapse: collapse\'>\n <tbody><tr>\n  <td width=\"29\" valign=\"top\" style=\"width:22.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">4.<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span style=\"font-size:12.0pt;line-height:115%;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\">5.<o:p /></span></p>\n  </td>\n  <td width=\"587\" valign=\"top\" style=\"width:440.05pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:\n  115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">Yang\n  bersangkutan mempunyai pekerjaan tetap sebagai</span><span style=\"font-size:\n  12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:\n  Arial;mso-ansi-language:EN-US\"> *[sebagai]*<o:p /></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align: justify;line-height:180%\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:\n  115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">Sepanjang\n  penelitian kami baik sifat maupun tempat usahanya tidak menganggu ketertiban\n  umum dan tidak bertentangan dengan peraturan Pemerintah Setempat.</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\"><o:p /></span></p>\n  </td>\n </tr>\n</tbody></table><p style=\"line-height:180%\">&nbsp;</p><p style=\"line-height:180%\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">Demikian keterangan ini\nkami buat dengan sebenarnya untuk digunakan seperlunya.</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:Arial;mso-ansi-language:EN-US\"><o:p /></span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:Arial;mso-ansi-language:EN-US\">&nbsp;</span></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'border-collapse: collapse\'>\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;\n  page-break-inside:avoid\">\n  <td width=\"308\" valign=\"top\" style=\"width:231.05pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">&nbsp;</span></p>\n  </td>\n  <td width=\"308\" valign=\"top\" style=\"width:231.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center;line-height:160%\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">Dikeluarkan\n  di Desa Cimenga</span><br /><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">Tanggal,&nbsp; *[tglsrt]*</span><br /><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">*[an]*\n  Kepala Desa Cimenga<o:p /></span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><u><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:\n  EN-US\">*[nm_ttd]*<o:p /></span></u></b></p>\n  </td>\n </tr>\n</tbody></table>","0","1","0","");
INSERT INTO jns_sk VALUES("62","141/*0*/ Pemdes/","SURAT JALAN HASIL HUTAN","<p><img alt=\"\" src=\"/uploads/KOP CIMENGA KUNINGAN.jpg\" />&nbsp;</p><p style=\"text-align:center\"><b><u><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:Arial\">SURAT JALAN </span></u></b><br /><span lang=\"IN\" style=\"font-size:10.0pt;line-height:115%;\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\"><u><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:Arial\"><o:p></o:p></span></u></span><span lang=\"IN\" style=\"line-height:115%; font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;font-size:13px\">Nomor : *[no_srt]*</span></p><p style=\"text-align:justify\"><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">Yang bertanda tangan\ndibawah ini Kepala Desa Cimenga Kecamatan Darma Kabupaten Kuningan, dengan ini\nmenerangkan bahwa :</span><span style=\"font-size:12.0pt;line-height:115%;\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;mso-ansi-language:\nEN-US\"><o:p></o:p></span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:Arial;mso-ansi-language:EN-US\">&nbsp;</span></p><div align=\'center\'>\n\n<table class=\"MsoTableGrid\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"555\" style=\"width: 416.5pt; border-collapse: collapse\">\n <tbody><tr>\n  <td width=\"158\" valign=\"top\" style=\"width:118.8pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Nama </span><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:\n  Arial;mso-ansi-language:EN-US\"><o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">NIK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Tempat, tgl lahir</span><span style=\"font-size:\n  12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial;\n  mso-ansi-language:EN-US\"><o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Agama<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">Jenis Kelamin<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Pekerjaan<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">Status<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">Alamat<o:p></o:p></span></p>\n  </td>\n  <td width=\"20\" valign=\"top\" style=\"width:14.65pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">:<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  </td>\n  <td width=\"377\" valign=\"top\" style=\"width:283.05pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[nama]*<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[nik]*<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[tmp_lhr]*, *[tgl_lhr]*<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[agama]*<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[jk]*<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[pekerjaan]*<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">*[status_kawin]*<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">Dusun *[alamat]* Rt\n  *[rt]* Rw *[rw]* <o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">Desa Cimenga Kecamatan\n  Darma <o:p></o:p></span></p>\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">Kabupaten Kuningan <o:p></o:p></span></p>\n  </td>\n </tr>\n</tbody></table>\n\n</div><p style=\"text-align:justify\"><br /><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">Orang tersebut di atas\nakan membawa/ mengirim kayu dengan perincian sebagai berikut :<o:p></o:p></span></p><table class=\'MsoTableGrid\' border=\'1\' cellspacing=\'0\' cellpadding=\'0\' style=\'margin-left: 21.6pt; border-collapse: collapse\'>\n <tbody><tr>\n  <td width=\"35\" rowspan=\"2\" style=\"width: 26.4pt; border: 1pt solid windowtext; padding: 0cm 5.4pt\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><span lang=\"IN\" style=\"font-size:10.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">No<o:p></o:p></span></b></p>\n  </td>\n  <td width=\"170\" rowspan=\"2\" style=\"width: 127.5pt; border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-style: solid solid solid none; border-top-color: windowtext; border-right-color: windowtext; border-bottom-color: windowtext; padding: 0cm 5.4pt\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><span lang=\"IN\" style=\"font-size:10.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Nama Kayu<o:p></o:p></span></b></p>\n  </td>\n  <td width=\"208\" colspan=\"2\" valign=\"top\" style=\"width: 155.95pt; border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-style: solid solid solid none; border-top-color: windowtext; border-right-color: windowtext; border-bottom-color: windowtext; padding: 0cm 5.4pt\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><span lang=\"IN\" style=\"font-size:10.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Sebanyak<o:p></o:p></span></b></p>\n  </td>\n  <td width=\"132\" rowspan=\"2\" style=\"width: 98.8pt; border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-style: solid solid solid none; border-top-color: windowtext; border-right-color: windowtext; border-bottom-color: windowtext; padding: 0cm 5.4pt\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><span lang=\"IN\" style=\"font-size:10.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Keterangan<o:p></o:p></span></b></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"109\" valign=\"top\" style=\"width:81.55pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><span lang=\"IN\" style=\"font-size:10.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Meter3 (M3)<o:p></o:p></span></b></p>\n  </td>\n  <td width=\"99\" valign=\"top\" style=\"width:74.4pt; border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><span lang=\"IN\" style=\"font-size:10.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial\">Batang<o:p></o:p></span></b></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"35\" valign=\"top\" style=\"width: 26.4pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-style: none solid solid; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; padding: 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:10.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">&nbsp;*[1]*</span></p>\n  </td>\n  <td width=\"170\" valign=\"top\" style=\"width:127.5pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;*[kayu1]*</span></p>\n  </td>\n  <td width=\"109\" valign=\"top\" style=\"width:81.55pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;*[m1]*</span></p>\n  </td>\n  <td width=\"99\" valign=\"top\" style=\"width:74.4pt; border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">*[btng1]*&nbsp;</span></p>\n  </td>\n  <td width=\"132\" valign=\"top\" style=\"width:98.8pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">*[ket1]*&nbsp;</span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"35\" valign=\"top\" style=\"width: 26.4pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-style: none solid solid; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; padding: 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:10.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">&nbsp;*[2]*</span></p>\n  </td>\n  <td width=\"170\" valign=\"top\" style=\"width:127.5pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;*[kayu2]*</span></p>\n  </td>\n  <td width=\"109\" valign=\"top\" style=\"width:81.55pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;*[m2]*</span></p>\n  </td>\n  <td width=\"99\" valign=\"top\" style=\"width:74.4pt; border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">*[btng2]*</span></p>\n  </td>\n  <td width=\"132\" valign=\"top\" style=\"width:98.8pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">*[ket2]*&nbsp;</span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"35\" valign=\"top\" style=\"width: 26.4pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-style: none solid solid; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; padding: 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:10.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">&nbsp;*[3]*</span></p>\n  </td>\n  <td width=\"170\" valign=\"top\" style=\"width:127.5pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;*[kayu3]*</span></p>\n  </td>\n  <td width=\"109\" valign=\"top\" style=\"width:81.55pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;*[m3]*</span></p>\n  </td>\n  <td width=\"99\" valign=\"top\" style=\"width:74.4pt; border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">*[btng3]*&nbsp;</span></p>\n  </td>\n  <td width=\"132\" valign=\"top\" style=\"width:98.8pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">*[ket3]*&nbsp;</span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"35\" valign=\"top\" style=\"width: 26.4pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-style: none solid solid; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; padding: 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:10.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  </td>\n  <td width=\"170\" valign=\"top\" style=\"width:127.5pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;</span></p>\n  </td>\n  <td width=\"109\" valign=\"top\" style=\"width:81.55pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;</span></p>\n  </td>\n  <td width=\"99\" valign=\"top\" style=\"width:74.4pt; border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;</span></p>\n  </td>\n  <td width=\"132\" valign=\"top\" style=\"width:98.8pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;</span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"35\" valign=\"top\" style=\"width: 26.4pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-style: none solid solid; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; padding: 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:10.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-bidi-font-family:Arial;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  </td>\n  <td width=\"170\" valign=\"top\" style=\"width:127.5pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;</span></p>\n  </td>\n  <td width=\"109\" valign=\"top\" style=\"width:81.55pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;</span></p>\n  </td>\n  <td width=\"99\" valign=\"top\" style=\"width:74.4pt; border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;</span></p>\n  </td>\n  <td width=\"132\" valign=\"top\" style=\"width:98.8pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;</span></p>\n  </td>\n </tr>\n <tr>\n  <td width=\"35\" valign=\"top\" style=\"width: 26.4pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-style: none solid solid; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; padding: 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;</span></p>\n  </td>\n  <td width=\"170\" valign=\"top\" style=\"width:127.5pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;</span></p>\n  </td>\n  <td width=\"109\" valign=\"top\" style=\"width:81.55pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;</span></p>\n  </td>\n  <td width=\"99\" valign=\"top\" style=\"width:74.4pt; border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;</span></p>\n  </td>\n  <td width=\"132\" valign=\"top\" style=\"width:98.8pt;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt; mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span lang=\"IN\" style=\"font-size:12.0pt;font-family:\n  &quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">&nbsp;</span></p>\n  </td>\n </tr>\n</tbody></table><p style=\"text-align:justify\"><br /><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">dari Cimenga, Kec Darma tujuan pengiriman ke &nbsp;*[ke]*, Kayu tersebut hasil tebang dari tanah masyarakat setempat. Adapun angkutan yang akan membawanya *[mbl]* dengan No. Pol *[nopol]* dengan sopir yang bernama *[supir]*</span></p><p style=\"text-align:justify\"><span style=\"font-size:12.0pt;\nline-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:\nArial;mso-ansi-language:EN-US\"><o:p></o:p></span><span lang=\"IN\" style=\"font-size:12.0pt;line-height:115%;font-family:\n&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-bidi-font-family:Arial\">Demikian keterangan ini\nkami buat dengan sebenarnya untuk digunakan seperlunya.</span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:Arial;mso-ansi-language:EN-US\"><o:p></o:p></span><span style=\"font-size:12.0pt;line-height:115%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\nmso-bidi-font-family:Arial;mso-ansi-language:EN-US\">&nbsp;</span></p><table class=\'MsoTableGrid\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' style=\'border-collapse: collapse\'>\n <tbody><tr style=\"mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;\n  page-break-inside:avoid\">\n  <td width=\"308\" valign=\"top\" style=\"width:231.05pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\n  mso-ansi-language:EN-US\">&nbsp;</span></p>\n  </td>\n  <td width=\"308\" valign=\"top\" style=\"width:231.1pt;padding:0cm 5.4pt 0cm 5.4pt\">\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">Cimenga,\n  *[tglsrt]*<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">*[an]*\n  Kepala Desa Cimenga<o:p></o:p></span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><span style=\"font-size:12.0pt;\n  font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:EN-US\">&nbsp;</span></p>\n  <p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center\"><b><u><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-ansi-language:\n  EN-US\">*[nm_ttd]*<o:p></o:p></span></u></b></p>\n  </td>\n </tr>\n</tbody></table>","2","1","0","");
INSERT INTO jns_sk VALUES("64","900/ *0* /DISPORA/2017","atsdtsdg","<p style=\"text-align:center\"><u><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">SURAT KETERANGAN HIBAH</span></u></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"margin-left:36.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Saya yang bertanda tangan di bawah ini :</span></p>\n\n<p><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Nama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : PARLIS Dt Rj DIACEH</span></p>\n\n<p><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Umur&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 52 Tahun</span></p>\n\n<p><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Suku&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Sei Napa</span></p>\n\n<p><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Pekerjaan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Swasta</span></p>\n\n<p><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Alamat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Jr Lj Kt Tinggi Kt Gaek Ggk</span></p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Dengan ini menyatakan sebenarnya,bahwa saya ada mempunyai sebidang tanah pertanian (sawah) yang belum terdaftar,tanah milik adat yang di perdapat secara turun temurun yang terletak di Rawang Tujuah Jorong Linjuang koto Tinggi Nagari Koto Gaek Guguak Kec Gunung Talang Kab.Solok seluas...........M2 yang berbatas sepadan Sbb :</span></p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Utara dengan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Tanah LE,EH</span></p>\n\n<p><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Selatan dengan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Tanah LE,EH</span></p>\n\n<p><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Timur dengan &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Tanah kawan itu juga</span></p>\n\n<p><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Barat dengan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Tanah ML BASA</span></p>\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Bahwa tanah tersebut di atas sampai saat ini masih saya kuasai dengan baik dan tidak ada pihak lain yang berhak (di sewakan,di boroghkan atau jaminan hutang) dll.</span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Adapun tanah tersebut di atas, atas kesepakatan kaum dan waris saya yang turut bertanda tangan di bawah ini setuju tanah tersebut di atas di HIBAHKAN &nbsp;kepada :</span></p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Nama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : YUSNA HARNITAS</span></p>\n\n<p><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Umur&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 33 Tahun</span></p>\n\n<p><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Suku&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Tanjuang</span></p>\n\n<p><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Pekerjaan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Wiraswasta</span></p>\n\n<p><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Alamat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Linjuang Koto Tinggi Kt Gaek Ggk</span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">HIBAH ini berlaku untuk selama-lamanya,berlaku selama air masih mengalir dan selama burung Gagak masih berwarna hitam</span></p>\n\n<p>&nbsp;</p>\n\n<p style=\"text-align:justify\"><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Demikianlah surat HIBAH ini di buat dengan sebenarnya,guna untuk di jadikan pedoman dan untuk menghindari silang selisih di kemudian hari</span></p>\n\n<p>&nbsp;</p>\n\n<p style=\"margin-left:252.0pt\"><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Koto Gaek Ggk, 27 Oktober&nbsp; 2008 </span></p>\n\n<p>&nbsp;</p>\n\n<table cellspacing=\"0\" class=\"Table\" style=\"border-collapse:collapse; border:undefined; margin-left:5.4pt\">\n	<tbody>\n		<tr>\n			<td style=\"width:270.0pt\">\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Di ketahui oleh :</span></p>\n\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Mamak Kepala Waris</span></p>\n\n			<p style=\"text-align:center\">&nbsp;</p>\n\n			<p style=\"text-align:center\">&nbsp;</p>\n\n			<p style=\"text-align:center\"><u><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">KHAIDIR Dt Rj DILIE</span></u></p>\n			</td>\n			<td style=\"width:174.0pt\">\n			<p style=\"text-align:center\"><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">Saya yang menyatakan</span></p>\n\n			<p style=\"text-align:center\">&nbsp;</p>\n\n			<p style=\"text-align:center\">&nbsp;</p>\n\n			<p style=\"text-align:center\">&nbsp;</p>\n\n			<p style=\"text-align:center\"><u><span style=\"font-family:&quot;Arial Narrow&quot;,&quot;sans-serif&quot;\">PARLIS Dt Rj DIACEH</span></u></p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n","3","1","0","2");



DROP TABLE kabupaten;

CREATE TABLE `kabupaten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `logo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO kabupaten VALUES("1","KUNINGAN","7998961469321346.jpg");



DROP TABLE keberadaan;

CREATE TABLE `keberadaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO keberadaan VALUES("1","HIDUP");
INSERT INTO keberadaan VALUES("2","MATI");
INSERT INTO keberadaan VALUES("3","PINDAH");
INSERT INTO keberadaan VALUES("4","MISKIN");



DROP TABLE kecamatan;

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `id_kab` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO kecamatan VALUES("11","1","Darma");



DROP TABLE kk;

CREATE TABLE `kk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_desa` varchar(100) NOT NULL,
  `no_kk` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `rt` int(11) NOT NULL,
  `rw` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=868 DEFAULT CHARSET=latin1;

INSERT INTO kk VALUES("1","3208010001","3208170302065712","CIMENGA","0","0");
INSERT INTO kk VALUES("2","3208010001","3208170712070002","CIMENGA","0","0");
INSERT INTO kk VALUES("3","3208010001","3208171503110006","CIMENGA","0","0");
INSERT INTO kk VALUES("4","3208010001","3208171606080006","CIMENGA","0","0");
INSERT INTO kk VALUES("5","3208010001","3208172011060004","JL CIPASUNG SUBANG","0","0");
INSERT INTO kk VALUES("6","3208010001","3208170109060001","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("7","3208010001","3208170302063630","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("8","3208010001","3208170302063631","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("9","3208010001","3208170302063633","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("10","3208010001","3208170302063634","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("11","3208010001","3208170302063635","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("12","3208010001","3208170302063636","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("13","3208010001","3208170302063638","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("14","3208010001","3208170302063639","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("15","3208010001","3208170302063640","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("16","3208010001","3208170302063641","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("17","3208010001","3208170302063642","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("18","3208010001","3208170302063646","JL DESA","1","1");
INSERT INTO kk VALUES("19","3208010001","3208170302063647","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("20","3208010001","3208170302063648","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("21","3208010001","3208170302063649","JL DESA","1","1");
INSERT INTO kk VALUES("22","3208010001","3208170302063651","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("23","3208010001","3208170302063652","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("24","3208010001","3208170302063653","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("25","3208010001","3208170302064318","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("26","3208010001","3208170302064320","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("27","3208010001","3208170302064322","KP CIMENGA","1","1");
INSERT INTO kk VALUES("28","3208010001","3208170302064323","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("29","3208010001","3208170302064325","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("30","3208010001","3208170302064326","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("31","3208010001","3208170302064328","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("32","3208010001","3208170302064332","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("33","3208010001","3208170403090003","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("34","3208010001","3208170411100001","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("35","3208010001","3208170502070004","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("36","3208010001","3208170810080005","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("37","3208010001","3208170911120007","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("38","3208010001","3208170911120009","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("39","3208010001","3208170911120011","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("40","3208010001","3208171107070022","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("41","3208010001","3208171205110004","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("42","3208010001","3208171207120008","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("43","3208010001","3208171211120002","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("44","3208010001","3208171504080005","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("45","3208010001","3208171506120004","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("46","3208010001","3208171606080004","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("47","3208010001","3208172012110003","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("48","3208010001","3208172211100002","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("49","3208010001","3208172211130002","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("50","3208010001","3208172603110013","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("51","3208010001","3602093005110014","DUSUN CIMENGA","1","1");
INSERT INTO kk VALUES("52","3208010001","3208170302063625","DUSUN CIMENGA ","2","1");
INSERT INTO kk VALUES("53","3208010001","3208170302063626","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("54","3208010001","3208170302063627","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("55","3208010001","3208170302063628","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("56","3208010001","3208170302064304","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("57","3208010001","3208170302064305","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("58","3208010001","3208170302064306","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("59","3208010001","3208170302064308","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("60","3208010001","3208170302064309","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("61","3208010001","3208170302064310","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("62","3208010001","3208170302064311","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("63","3208010001","3208170302064319","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("64","3208010001","3208170302064327","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("65","3208010001","3208170302064330","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("66","3208010001","3208170302064334","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("67","3208010001","3208170302064335","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("68","3208010001","3208170302064336","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("69","3208010001","3208170302064337","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("70","3208010001","3208170302064338","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("71","3208010001","3208170302064339","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("72","3208010001","3208170302064360","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("73","3208010001","3208170302064362","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("74","3208010001","3208170508100010","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("75","3208010001","3208170701140001","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("76","3208010001","3208170804100001","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("77","3208010001","3208170911120010","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("78","3208010001","3208170911120013","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("79","3208010001","3208171010080005","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("80","3208010001","3208171207070015","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("81","3208010001","3208171307070007","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("82","3208010001","3208171308150002","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("83","3208010001","3208171903110006","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("84","3208010001","3208171909100003","DESA CIMENGA","2","1");
INSERT INTO kk VALUES("85","3208010001","3208172210080018","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("86","3208010001","3208173103110006","DUSUN CIMENGA","2","1");
INSERT INTO kk VALUES("87","3208010001","3208170111070009","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("88","3208010001","3208170302063702","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("89","3208010001","3208170302063703","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("90","3208010001","3208170302063707","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("91","3208010001","3208170302063708","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("92","3208010001","3208170302063709","DS CIMENGA","3","1");
INSERT INTO kk VALUES("93","3208010001","3208170302063710","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("94","3208010001","3208170302063711","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("95","3208010001","3208170302064275","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("96","3208010001","3208170302064297","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("97","3208010001","3208170302064313","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("98","3208010001","3208170302064314","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("99","3208010001","3208170302064315","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("100","3208010001","3208170302064317","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("101","3208010001","3208170302064364","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("102","3208010001","3208170302064365","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("103","3208010001","3208170302064367","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("104","3208010001","3208170302064368","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("105","3208010001","3208170302064369","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("106","3208010001","3208170302064370","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("107","3208010001","3208170509110001","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("108","3208010001","3208170510150013","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("109","3208010001","3208170708150004","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("110","3208010001","3208170911120014","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("111","3208010001","3208171208110001","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("112","3208010001","3208172307090006","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("113","3208010001","3208172402140001","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("114","3208010001","3208172502140005","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("115","3208010001","3208172606070017","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("116","3208010001","3208172611130001","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("117","3208010001","3208172803110013","DUSUN CIMENGA","3","1");
INSERT INTO kk VALUES("118","3208010001","3208170203090003","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("119","3208010001","3208170302064278","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("120","3208010001","3208170302064279","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("121","3208010001","3208170302064280","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("122","3208010001","3208170302064283","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("123","3208010001","3208170302064284","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("124","3208010001","3208170302064285","DS CIMENGA","4","1");
INSERT INTO kk VALUES("125","3208010001","3208170302064286","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("126","3208010001","3208170302064287","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("127","3208010001","3208170302064288","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("128","3208010001","3208170302064289","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("129","3208010001","3208170302064290","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("130","3208010001","3208170302064291","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("131","3208010001","3208170302064293","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("132","3208010001","3208170302064294","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("133","3208010001","3208170302064295","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("134","3208010001","3208170302064296","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("135","3208010001","3208170302064298","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("136","3208010001","3208170302064299","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("137","3208010001","3208170302064300","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("138","3208010001","3208170302064302","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("139","3208010001","3208170302064303","KP CIMENGA","4","1");
INSERT INTO kk VALUES("140","3208010001","3208170302065026","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("141","3208010001","3208170302066349","DUSUN CIAWITALI","4","1");
INSERT INTO kk VALUES("142","3208010001","3208170406070007","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("143","3208010001","3208170809140001","DUSUN CIMENGA ","4","1");
INSERT INTO kk VALUES("144","3208010001","3208170902100002","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("145","3208010001","3208170909150003","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("146","3208010001","3208171107070021","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("147","3208010001","3208171111080002","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("148","3208010001","3208171211080004","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("149","3208010001","3208171211120003","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("150","3208010001","3208171301110024","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("151","3208010001","3208171301110026","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("152","3208010001","3208171903110008","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("153","3208010001","3208172104080003","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("154","3208010001","3208172105070004","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("155","3208010001","3208172107090015","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("156","3208010001","3208172207080007","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("157","3208010001","3208173011070001","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("158","3208010001","3213241104062534","DUSUN CIMENGA","4","1");
INSERT INTO kk VALUES("159","3208010001","3208170302063623","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("160","3208010001","3208170302063673","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("161","3208010001","3208170302064329","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("162","3208010001","3208170302064340","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("163","3208010001","3208170302064342","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("164","3208010001","3208170302064346","KP CIMENGA","5","1");
INSERT INTO kk VALUES("165","3208010001","3208170302064347","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("166","3208010001","3208170302064350","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("167","3208010001","3208170302064352","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("168","3208010001","3208170302064353","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("169","3208010001","3208170302064356","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("170","3208010001","3208170302064357","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("171","3208010001","3208170302065027","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("172","3208010001","3208170302120005","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("173","3208010001","3208170603090002","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("174","3208010001","3208170603110001","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("175","3208010001","3208170603110003","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("176","3208010001","3208170806150009","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("177","3208010001","3208170911120008","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("178","3208010001","3208171102080003","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("179","3208010001","3208171211120005","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("180","3208010001","3208171310150001","BLOK CIMENGA","5","1");
INSERT INTO kk VALUES("181","3208010001","3208171610120003","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("182","3208010001","3208171701140001","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("183","3208010001","3208171903110009","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("184","3208010001","3208172011130007","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("185","3208010001","3208172212080003","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("186","3208010001","3208172606070013","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("187","3208010001","3208172804100011","DUSUN CIMENGA","5","1");
INSERT INTO kk VALUES("188","3208010001","3208172808140001","BLOK BOJONG","5","1");
INSERT INTO kk VALUES("189","3208010001","3208170212080008","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("190","3208010001","3208170302064389","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("191","3208010001","3208170302064391","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("192","3208010001","3208170302065021","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("193","3208010001","3208170302065022","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("194","3208010001","3208170302065023","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("195","3208010001","3208170302065024","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("196","3208010001","3208170302065025","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("197","3208010001","3208170302065029","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("198","3208010001","3208170302065031","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("199","3208010001","3208170302065033","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("200","3208010001","3208170302065034","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("201","3208010001","3208170302065035","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("202","3208010001","3208170302065036","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("203","3208010001","3208170302065038","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("204","3208010001","3208170302065039","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("205","3208010001","3208170309120004","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("206","3208010001","3208170412080003","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("207","3208010001","3208170801080005","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("208","3208010001","3208171005100001","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("209","3208010001","3208171712070006","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("210","3208010001","3208171811130003","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("211","3208010001","3208172201150005","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("212","3208010001","3208172202100002","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("213","3208010001","3208172511080001","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("214","3208010001","3208172907150007","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("215","3208010001","3208172912100001","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("216","3208010001","3208173107060007","DUSUN CIMENGA","6","1");
INSERT INTO kk VALUES("217","3208010001","3208170302064381","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("218","3208010001","3208170302064382","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("219","3208010001","3208170302064383","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("220","3208010001","3208170302064384","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("221","3208010001","3208170302064385","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("222","3208010001","3208170302064386","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("223","3208010001","3208170302064387","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("224","3208010001","3208170302064390","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("225","3208010001","3208170302064392","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("226","3208010001","3208170302064966","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("227","3208010001","3208170302064967","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("228","3208010001","3208170302064970","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("229","3208010001","3208170302064973","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("230","3208010001","3208170302064975","DUUNS CIMENGA","7","1");
INSERT INTO kk VALUES("231","3208010001","3208170302064976","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("232","3208010001","3208170302064977","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("233","3208010001","3208170302064978","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("234","3208010001","3208170302065040","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("235","3208010001","3208170302065041","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("236","3208010001","3208170302065080","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("237","3208010001","3208170302065656","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("238","3208010001","3208170302065657","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("239","3208010001","3208170302065658","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("240","3208010001","3208170302065659","JL CIPASUNG SUBANG","7","1");
INSERT INTO kk VALUES("241","3208010001","3208170405120005","DUSUN CEMENGA","7","1");
INSERT INTO kk VALUES("242","3208010001","3208170504110004","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("243","3208010001","3208170810150009","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("244","3208010001","3208170911120015","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("245","3208010001","3208171112130003","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("246","3208010001","3208171405130004","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("247","3208010001","3208171412060001","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("248","3208010001","3208171502100001","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("249","3208010001","3208171609110003","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("250","3208010001","3208171710130005","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("251","3208010001","3208171911080001","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("252","3208010001","3208172205070012","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("253","3208010001","3208172306100009","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("254","3208010001","3208172410120003","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("255","3208010001","3208172410120004","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("256","3208010001","3208172504120007","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("257","3208010001","3208172609080001","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("258","3208010001","3208172611080010","DUSUN CIMENGA","7","1");
INSERT INTO kk VALUES("259","3208010001","1502061010110014","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("260","3208010001","3207101809070111","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("261","3208010001","3208170102110002","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("262","3208010001","3208170106150003","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("263","3208010001","3208170302064378","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("264","3208010001","3208170302064380","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("265","3208010001","3208170302064999","JL KAMPUNG","8","1");
INSERT INTO kk VALUES("266","3208010001","3208170302065020","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("267","3208010001","3208170302065044","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("268","3208010001","3208170302065045","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("269","3208010001","3208170302065046","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("270","3208010001","3208170302065051","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("271","3208010001","3208170302065056","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("272","3208010001","3208170302065064","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("273","3208010001","3208170302065066","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("274","3208010001","3208170302065070","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("275","3208010001","3208170302065071","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("276","3208010001","3208170302065076","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("277","3208010001","3208170502070005","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("278","3208010001","3208170504110007","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("279","3208010001","3208170610100001","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("280","3208010001","3208170704090002","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("281","3208010001","3208170911120012","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("282","3208010001","3208171211120004","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("283","3208010001","3208171211120016","DUDUN CIMENGA","8","1");
INSERT INTO kk VALUES("284","3208010001","3208171212120003","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("285","3208010001","3208171302100008","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("286","3208010001","3208171503110005","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("287","3208010001","3208171503110008","DU SUN CIMENGA","8","1");
INSERT INTO kk VALUES("288","3208010001","3208172503080015","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("289","3208010001","3208172607130001","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("290","3208010001","3208173005110003","DUSUN CIMENGA","8","1");
INSERT INTO kk VALUES("291","3208010001","3208170302064376","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("292","3208010001","3208170302064979","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("293","3208010001","3208170302064983","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("294","3208010001","3208170302064984","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("295","3208010001","3208170302064986","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("296","3208010001","3208170302064987","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("297","3208010001","3208170302064988","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("298","3208010001","3208170302064990","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("299","3208010001","3208170302064991","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("300","3208010001","3208170302064992","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("301","3208010001","3208170302064993","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("302","3208010001","3208170302064994","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("303","3208010001","3208170302064995","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("304","3208010001","3208170302064997","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("305","3208010001","3208170302064998","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("306","3208010001","3208170302065000","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("307","3208010001","3208170302065001","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("308","3208010001","3208170302065015","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("309","3208010001","3208170302065019","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("310","3208010001","3208170302065042","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("311","3208010001","3208170302065047","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("312","3208010001","3208170302065048","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("313","3208010001","3208170302065049","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("314","3208010001","3208170302065052","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("315","3208010001","3208170302065053","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("316","3208010001","3208170302065054","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("317","3208010001","3208170302065057","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("318","3208010001","3208170302065058","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("319","3208010001","3208170302065060","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("320","3208010001","3208170302065061","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("321","3208010001","3208170302065062","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("322","3208010001","3208170904070008","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("323","3208010001","3208171209110001","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("324","3208010001","3208171307070012","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("325","3208010001","3208171307070013","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("326","3208010001","3208171501150002","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("327","3208010001","3208172511080011","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("328","3208010001","3208172606070010","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("329","3208010001","3208173004140005","DUSUN CIMENGA","9","1");
INSERT INTO kk VALUES("330","3208010001","3208170212110004","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("331","3208010001","3208170302063655","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("332","3208010001","3208170302063656","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("333","3208010001","3208170302063657","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("334","3208010001","3208170302063658","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("335","3208010001","3208170302063659","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("336","3208010001","3208170302064301","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("337","3208010001","3208170302064980","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("338","3208010001","3208170302064981","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("339","3208010001","3208170302064982","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("340","3208010001","3208170302065005","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("341","3208010001","3208170302065008","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("342","3208010001","3208170302065009","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("343","3208010001","3208170302065010","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("344","3208010001","3208170302065011","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("345","3208010001","3208170302065012","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("346","3208010001","3208170302065013","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("347","3208010001","3208170302065014","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("348","3208010001","3208170302065016","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("349","3208010001","3208170302065017","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("350","3208010001","3208170302065018","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("351","3208010001","3208170302065059","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("352","3208010001","3208170302065077","DESA CIMENGA","10","1");
INSERT INTO kk VALUES("353","3208010001","3208170302140002","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("354","3208010001","3208170609110003","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("355","3208010001","3208171207070016","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("356","3208010001","3208171211120001","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("357","3208010001","3208171406130002","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("358","3208010001","3208171909130003","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("359","3208010001","3208172003120001","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("360","3208010001","3208172003120002","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("361","3208010001","3208172211060040","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("362","3208010001","3208172611080001","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("363","3208010001","3208173003150001","DUSUN CIMENGA","10","1");
INSERT INTO kk VALUES("364","3208010001","3208170203150001","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("365","3208010001","3208170302063608","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("366","3208010001","3208170302063609","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("367","3208010001","3208170302063610","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("368","3208010001","3208170302063611","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("369","3208010001","3208170302063612","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("370","3208010001","3208170302063615","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("371","3208010001","3208170302063616","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("372","3208010001","3208170302063617","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("373","3208010001","3208170302063618","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("374","3208010001","3208170302063619","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("375","3208010001","3208170302063621","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("376","3208010001","3208170302063622","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("377","3208010001","3208170302063632","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("378","3208010001","3208170302063660","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("379","3208010001","3208170302063662","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("380","3208010001","3208170302063663","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("381","3208010001","3208170302063664","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("382","3208010001","3208170302063666","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("383","3208010001","3208170302063667","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("384","3208010001","3208170302063668","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("385","3208010001","3208170302063669","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("386","3208010001","3208170302063671","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("387","3208010001","3208170302063672","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("388","3208010001","3208170302063674","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("389","3208010001","3208170302063675","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("390","3208010001","3208170302063676","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("391","3208010001","3208170302063678","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("392","3208010001","3208170302063681","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("393","3208010001","3208170302063699","DESA CIMENGA","11","1");
INSERT INTO kk VALUES("394","3208010001","3208170302064371","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("395","3208010001","3208170302065050","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("396","3208010001","3208170303110003","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("397","3208010001","3208170409150005","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("398","3208010001","3208170504100004","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("399","3208010001","3208170508140005","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("400","3208010001","3208170705080003","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("401","3208010001","3208171109060007","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("402","3208010001","3208171207070008","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("403","3208010001","3208171302130001","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("404","3208010001","3208171405120003","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("405","3208010001","3208171903110007","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("406","3208010001","3208172201150004","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("407","3208010001","3208172303110003","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("408","3208010001","3208172305080005","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("409","3208010001","3208172403110003","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("410","3208010001","3208172505150001","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("411","3208010001","3208172603110017","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("412","3208010001","3208172901100001","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("413","3208010001","3208172906070004","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("414","3208010001","3208173007150001","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("415","3208010001","3302161302059602","DUSUN CIMENGA","11","1");
INSERT INTO kk VALUES("416","3208010001","3208101007060006","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("417","3208010001","3208170207070001","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("418","3208010001","3208170302063597","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("419","3208010001","3208170302063598","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("420","3208010001","3208170302063599","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("421","3208010001","3208170302063602","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("422","3208010001","3208170302063603","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("423","3208010001","3208170302063604","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("424","3208010001","3208170302063605","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("425","3208010001","3208170302063606","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("426","3208010001","3208170302063654","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("427","3208010001","3208170302063682","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("428","3208010001","3208170302063683","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("429","3208010001","3208170302063684","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("430","3208010001","3208170302063686","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("431","3208010001","3208170302063687","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("432","3208010001","3208170302063688","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("433","3208010001","3208170302063689","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("434","3208010001","3208170302063694","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("435","3208010001","3208170302063696","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("436","3208010001","3208170302063698","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("437","3208010001","3208170302064281","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("438","3208010001","3208170310120005","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("439","3208010001","3208170402061608","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("440","3208010001","3208170603110002","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("441","3208010001","3208170605100004","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("442","3208010001","3208170705150002","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("443","3208010001","3208171004120001","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("444","3208010001","3208171202100004","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("445","3208010001","3208171302130002","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("446","3208010001","3208171307070005","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("447","3208010001","3208171606070006","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("448","3208010001","3208171903110010","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("449","3208010001","3208171911120016","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("450","3208010001","3208172004100006","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("451","3208010001","3208172012110002","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("452","3208010001","3208172103110001","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("453","3208010001","3208172111120001","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("454","3208010001","3208172410080009","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("455","3208010001","3208173004100002","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("456","3208010001","3208173103110002","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("457","3208010001","3208173103110004","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("458","3208010001","3208173103110005","DUSUN CIMENGA","12","1");
INSERT INTO kk VALUES("459","3208010001","3208170302064351","DUSUN CIMENGA","15","1");
INSERT INTO kk VALUES("460","3208010001","3208170107080008","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("461","3208010001","3208170108120006","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("462","3208010001","3208170207090001","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("463","3208010001","3208170302065693","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("464","3208010001","3208170302065694","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("465","3208010001","3208170302065696","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("466","3208010001","3208170302065698","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("467","3208010001","3208170302065699","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("468","3208010001","3208170302065700","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("469","3208010001","3208170302065701","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("470","3208010001","3208170302065703","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("471","3208010001","3208170302065708","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("472","3208010001","3208170302065710","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("473","3208010001","3208170302065713","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("474","3208010001","3208170302065714","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("475","3208010001","3208170302065715","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("476","3208010001","3208170302065717","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("477","3208010001","3208170308110005","BLOK SINDANGASIH","1","2");
INSERT INTO kk VALUES("478","3208010001","3208170405100020","BLOK SINDANG ASIH DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("479","3208010001","3208170808060004","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("480","3208010001","3208171207100001","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("481","3208010001","3208171303140003","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("482","3208010001","3208171911120014","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("483","3208010001","3208172011080006","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("484","3208010001","3208172104080008","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("485","3208010001","3208172408150009","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("486","3208010001","3208173012100010","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("487","3208010001","3208173012100013","DUSUN CIAWITALI","1","2");
INSERT INTO kk VALUES("488","3208010001","3208170107100005","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("489","3208010001","3208170302064968","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("490","3208010001","3208170302065079","DESA CIMENGA","2","2");
INSERT INTO kk VALUES("491","3208010001","3208170302065660","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("492","3208010001","3208170302065663","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("493","3208010001","3208170302065664","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("494","3208010001","3208170302065665","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("495","3208010001","3208170302065666","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("496","3208010001","3208170302065667","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("497","3208010001","3208170302065669","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("498","3208010001","3208170302065671","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("499","3208010001","3208170302065672","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("500","3208010001","3208170302065673","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("501","3208010001","3208170302065674","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("502","3208010001","3208170302065675","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("503","3208010001","3208170302065677","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("504","3208010001","3208170302065678","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("505","3208010001","3208170302065679","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("506","3208010001","3208170302065680","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("507","3208010001","3208170302065681","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("508","3208010001","3208170302065684","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("509","3208010001","3208170302065691","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("510","3208010001","3208170302065695","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("511","3208010001","3208170302065720","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("512","3208010001","3208170302065721","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("513","3208010001","3208170302066418","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("514","3208010001","3208170302150007","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("515","3208010001","3208170504070002","DUSUN CIAWTALI","2","2");
INSERT INTO kk VALUES("516","3208010001","3208170807080006","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("517","3208010001","3208170809060001","DUSUN CIMENGA","2","2");
INSERT INTO kk VALUES("518","3208010001","3208170905080004","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("519","3208010001","3208171003140001","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("520","3208010001","3208171010080010","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("521","3208010001","3208171503110010","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("522","3208010001","3208171906070005","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("523","3208010001","3208172104150005","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("524","3208010001","3208172201150003","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("525","3208010001","3208172304070009","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("526","3208010001","3208172308060009","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("527","3208010001","3208172611080009","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("528","3208010001","3208172612080002","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("529","3208010001","3208172808120002","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("530","3208010001","3208172903110006","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("531","3208010001","3208173006090002","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("532","3208010001","3208173008120001","DUSUN CIAWITALI","2","2");
INSERT INTO kk VALUES("533","3208010001","3208170209140002","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("534","3208010001","3208170302063624","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("535","3208010001","3208170302065685","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("536","3208010001","3208170302065688","JL CIPASUNG SUBANG","3","2");
INSERT INTO kk VALUES("537","3208010001","3208170302065690","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("538","3208010001","3208170302065716","DUSUN CIMENGA","3","2");
INSERT INTO kk VALUES("539","3208010001","3208170302065719","JL CIPASUNG SUBANG NO 201","3","2");
INSERT INTO kk VALUES("540","3208010001","3208170302065722","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("541","3208010001","3208170302065723","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("542","3208010001","3208170302065724","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("543","3208010001","3208170302065725","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("544","3208010001","3208170302065726","JL CIPASUNG SUBANG NO 201","3","2");
INSERT INTO kk VALUES("545","3208010001","3208170302065728","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("546","3208010001","3208170302065729","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("547","3208010001","3208170302065730","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("548","3208010001","3208170302065731","JL CIPASUNG SUBANG NO 201","3","2");
INSERT INTO kk VALUES("549","3208010001","3208170302065733","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("550","3208010001","3208170302065734","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("551","3208010001","3208170302065735","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("552","3208010001","3208170302065737","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("553","3208010001","3208170302065738","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("554","3208010001","3208170302065739","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("555","3208010001","3208170302065741","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("556","3208010001","3208170302065742","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("557","3208010001","3208170302066406","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("558","3208010001","3208170310110002","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("559","3208010001","3208170402060023","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("560","3208010001","3208170809100004","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("561","3208010001","3208171304070001","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("562","3208010001","3208171606070001","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("563","3208010001","3208171606070007","CIAWITALI","3","2");
INSERT INTO kk VALUES("564","3208010001","3208171606070014","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("565","3208010001","3208172405100001","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("566","3208010001","3208172706070005","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("567","3208010001","3208172707150002","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("568","3208010001","3208172710150001","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("569","3208010001","3208173005140002","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("570","3208010001","3208173010130003","DUSUN CIAWITALI","3","2");
INSERT INTO kk VALUES("571","3208010001","3208170203090001","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("572","3208010001","3208170206120001","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("573","3208010001","3208170302065745","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("574","3208010001","3208170302065746","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("575","3208010001","3208170302065747","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("576","3208010001","3208170302065748","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("577","3208010001","3208170302065749","KP CIAWITALI","4","2");
INSERT INTO kk VALUES("578","3208010001","3208170302065750","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("579","3208010001","3208170302065752","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("580","3208010001","3208170302065753","DUSUN  CIAWITALI","4","2");
INSERT INTO kk VALUES("581","3208010001","3208170302065756","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("582","3208010001","3208170302066346","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("583","3208010001","3208170302066348","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("584","3208010001","3208170302066350","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("585","3208010001","3208170302066351","DUSUN CIMENGA","4","2");
INSERT INTO kk VALUES("586","3208010001","3208170302066352","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("587","3208010001","3208170302066353","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("588","3208010001","3208170402060010","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("589","3208010001","3208170402060011","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("590","3208010001","3208170402060014","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("591","3208010001","3208170402060015","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("592","3208010001","3208170402060017","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("593","3208010001","3208170912130006","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("594","3208010001","3208171211140004","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("595","3208010001","3208171909120007","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("596","3208010001","3208172309100002","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("597","3208010001","3208172311120002","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("598","3208010001","3208172410080001","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("599","3208010001","3208172706070001","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("600","3208010001","3208172907060001","DUSUN CIAWITALI","4","2");
INSERT INTO kk VALUES("601","3208010001","3208170302064373","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("602","3208010001","3208170302065743","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("603","3208010001","3208170302065751","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("604","3208010001","3208170302066410","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("605","3208010001","3208170302066413","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("606","3208010001","3208170302066414","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("607","3208010001","3208170302066417","KP CIAWITALI","5","2");
INSERT INTO kk VALUES("608","3208010001","3208170302066420","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("609","3208010001","3208170302066422","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("610","3208010001","3208170302066423","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("611","3208010001","3208170302066424","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("612","3208010001","3208170302066425","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("613","3208010001","3208170302066426","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("614","3208010001","3208170302066427","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("615","3208010001","3208170302066430","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("616","3208010001","3208170302066433","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("617","3208010001","3208170302066434","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("618","3208010001","3208170402060016","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("619","3208010001","3208170402060100","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("620","3208010001","3208170902090004","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("621","3208010001","3208171901150005","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("622","3208010001","3208172311120003","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("623","3208010001","3208172602150004","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("624","3208010001","3208172602150005","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("625","3208010001","3208172603080003","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("626","3208010001","3208172606070003","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("627","3208010001","3208172610110001","DUSUN CIAWI TALI","5","2");
INSERT INTO kk VALUES("628","3208010001","3208172708120003","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("629","3208010001","3208172810080009","DUSUN CIAWITALI","5","2");
INSERT INTO kk VALUES("630","3208010001","3175103007131010","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("631","3208010001","3208170207150008","JL CIPASUNG SUBANG","6","2");
INSERT INTO kk VALUES("632","3208010001","3208170302066358","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("633","3208010001","3208170302066399","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("634","3208010001","3208170302066431","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("635","3208010001","3208170302066437","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("636","3208010001","3208170302066438","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("637","3208010001","3208170302066439","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("638","3208010001","3208170302066440","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("639","3208010001","3208170302066442","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("640","3208010001","3208170302066444","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("641","3208010001","3208170302066445","KP CIAWITALI","6","2");
INSERT INTO kk VALUES("642","3208010001","3208170302066446","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("643","3208010001","3208170302066447","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("644","3208010001","3208170302066448","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("645","3208010001","3208170302066449","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("646","3208010001","3208170302066450","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("647","3208010001","3208170402060002","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("648","3208010001","3208170402060003","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("649","3208010001","3208170402060006","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("650","3208010001","3208171003080006","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("651","3208010001","3208171106150002","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("652","3208010001","3208171301110010","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("653","3208010001","3208171303070004","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("654","3208010001","3208171310150003","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("655","3208010001","3208171310150007","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("656","3208010001","3208171410080007","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("657","3208010001","3208172310080004","DUSUN CIMENGA","6","2");
INSERT INTO kk VALUES("658","3208010001","3208172506100001","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("659","3208010001","3208172606070012","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("660","3208010001","3208172610110002","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("661","3208010001","3208172711120005","DUSUN CIAWITALI","6","2");
INSERT INTO kk VALUES("662","3208010001","3208170302066357","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("663","3208010001","3208170302066360","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("664","3208010001","3208170302066363","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("665","3208010001","3208170302066364","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("666","3208010001","3208170302066366","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("667","3208010001","3208170302066367","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("668","3208010001","3208170302066378","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("669","3208010001","3208170302066385","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("670","3208010001","3208170302066453","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("671","3208010001","3208170302066458","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("672","3208010001","3208170402060008","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("673","3208010001","3208170402060009","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("674","3208010001","3208170808060005","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("675","3208010001","3208171803140003","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("676","3208010001","3208172006120024","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("677","3208010001","3208172211120004","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("678","3208010001","3208172407080003","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("679","3208010001","3208172812100006","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("680","3208010001","3208172906120006","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("681","3208010001","3208172911100002","DUSUN CIAWITALI","7","2");
INSERT INTO kk VALUES("682","3208010001","3204121507080005","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("683","3208010001","3208170302066368","KP CIAWITALI","8","2");
INSERT INTO kk VALUES("684","3208010001","3208170302066369","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("685","3208010001","3208170302066371","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("686","3208010001","3208170302066372","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("687","3208010001","3208170302066373","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("688","3208010001","3208170302066374","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("689","3208010001","3208170302066376","KP CIAWITALI","8","2");
INSERT INTO kk VALUES("690","3208010001","3208170302066377","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("691","3208010001","3208170302066380","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("692","3208010001","3208170302066381","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("693","3208010001","3208170302066382","DUSUN CIAWITALI ","8","2");
INSERT INTO kk VALUES("694","3208010001","3208170302066384","DUDUN CIAWITALI","8","2");
INSERT INTO kk VALUES("695","3208010001","3208170302066389","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("696","3208010001","3208170302066390","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("697","3208010001","3208170302066391","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("698","3208010001","3208170310110003","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("699","3208010001","3208170402060111","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("700","3208010001","3208170803110001","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("701","3208010001","3208170909140005","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("702","3208010001","3208171001110010","DUSUN CIMENGA","8","2");
INSERT INTO kk VALUES("703","3208010001","3208172011120001","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("704","3208010001","3208172104150010","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("705","3208010001","3208172311120004","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("706","3208010001","3208172410080008","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("707","3208010001","3208172611080012","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("708","3208010001","3208172704110004","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("709","3208010001","3208172711120009","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("710","3208010001","3208173105090002","DUSUN CIAWITALI","8","2");
INSERT INTO kk VALUES("711","3208010001","3208031311140002","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("712","3208010001","3208170109080007","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("713","3208010001","3208170111110008","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("714","3208010001","3208170302066362","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("715","3208010001","3208170302066393","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("716","3208010001","3208170302066398","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("717","3208010001","3208170302066432","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("718","3208010001","3208170302066457","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("719","3208010001","3208170402060077","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("720","3208010001","3208170402060084","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("721","3208010001","3208170402060088","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("722","3208010001","3208170402060096","KP CIAWITALI","9","2");
INSERT INTO kk VALUES("723","3208010001","3208170402060097","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("724","3208010001","3208170402060098","KP CIAWITALI","9","2");
INSERT INTO kk VALUES("725","3208010001","3208170402060099","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("726","3208010001","3208170402060102","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("727","3208010001","3208170402060105","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("728","3208010001","3208170402060108","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("729","3208010001","3208170402060109","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("730","3208010001","3208170512080008","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("731","3208010001","3208170705100001","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("732","3208010001","3208171202070001","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("733","3208010001","3208171204100008","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("734","3208010001","3208171502100012","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("735","3208010001","3208171507080004","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("736","3208010001","3208171507080007","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("737","3208010001","3208171507110005","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("738","3208010001","3208171612080006","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("739","3208010001","3208171909110007","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("740","3208010001","3208172603120004","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("741","3208010001","3208172611120004","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("742","3208010001","3208172708120001","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("743","3208010001","3208172812100005","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("744","3208010001","3208172911110002","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("745","3208010001","3208173010150004","DUSUN CIAWITALI","9","2");
INSERT INTO kk VALUES("746","3208010001","3208170402060066","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("747","3208010001","3208170402060072","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("748","3208010001","3208170402060073","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("749","3208010001","3208170402060074","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("750","3208010001","3208170402060075","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("751","3208010001","3208170402060076","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("752","3208010001","3208170402060078","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("753","3208010001","3208170402060081","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("754","3208010001","3208170402060082","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("755","3208010001","3208170402060086","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("756","3208010001","3208170402060089","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("757","3208010001","3208170402060090","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("758","3208010001","3208170402060092","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("759","3208010001","3208170402060094","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("760","3208010001","3208170402060095","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("761","3208010001","3208170402060104","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("762","3208010001","3208170402060107","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("763","3208010001","3208170411080001","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("764","3208010001","3208170411080002","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("765","3208010001","3208170705070005","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("766","3208010001","3208170801080003","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("767","3208010001","3208170909150004","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("768","3208010001","3208171210150002","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("769","3208010001","3208171602090003","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("770","3208010001","3208172104150004","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("771","3208010001","3208172407120003","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("772","3208010001","3208172503140008","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("773","3208010001","3208173108150001","DUSUN CIAWITALI","10","2");
INSERT INTO kk VALUES("774","3208010001","3208170302063680","DUSUN CIMENGA","11","2");
INSERT INTO kk VALUES("775","3208010001","3208170302066375","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("776","3208010001","3208170302066387","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("777","3208010001","3208170302066397","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("778","3208010001","3208170302066401","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("779","3208010001","3208170302066402","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("780","3208010001","3208170302066403","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("781","3208010001","3208170402060063","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("782","3208010001","3208170402060067","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("783","3208010001","3208170402060068","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("784","3208010001","3208170402060069","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("785","3208010001","3208170402060071","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("786","3208010001","3208170402060079","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("787","3208010001","3208170809100003","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("788","3208010001","3208171112120004","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("789","3208010001","3208171612080005","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("790","3208010001","3208171701120002","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("791","3208010001","3208171807110004","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("792","3208010001","3208172012100002","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("793","3208010001","3208172410080005","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("794","3208010001","3208172610110003","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("795","3208010001","3208172611080011","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("796","3208010001","3208172611120005","DUSUN CIMENGA","11","2");
INSERT INTO kk VALUES("797","3208010001","3208172807080004","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("798","3208010001","3208172810080007","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("799","3208010001","3208173011120001","DUSUN CIAWITALI","11","2");
INSERT INTO kk VALUES("800","3208010001","3208170302065711","JL CIPASUNG SUBANG NO 201","12","2");
INSERT INTO kk VALUES("801","3208010001","3208170402060004","KP CIAWITALI","12","2");
INSERT INTO kk VALUES("802","3208010001","3208170402060036","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("803","3208010001","3208170402060040","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("804","3208010001","3208170402060041","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("805","3208010001","3208170402060042","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("806","3208010001","3208170402060043","KP CIAWITALI","12","2");
INSERT INTO kk VALUES("807","3208010001","3208170402060045","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("808","3208010001","3208170402060046","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("809","3208010001","3208170402060048","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("810","3208010001","3208170402060049","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("811","3208010001","3208170402060051","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("812","3208010001","3208170402060052","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("813","3208010001","3208170402060053","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("814","3208010001","3208171304090001","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("815","3208010001","3208171511100001","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("816","3208010001","3208171701140002","DUSUN CIMENGA","12","2");
INSERT INTO kk VALUES("817","3208010001","3208171701140003","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("818","3208010001","3208172101140005","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("819","3208010001","3208172104150009","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("820","3208010001","3208172111120006","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("821","3208010001","3208172310080003","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("822","3208010001","3208172503140006","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("823","3208010001","3208172606070009","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("824","3208010001","3208172606070016","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("825","3208010001","3208172810080006","DUSUN CIAWITALI","12","2");
INSERT INTO kk VALUES("826","3208010001","3208170302065682","JL CIPASUNG SUBANG","13","2");
INSERT INTO kk VALUES("827","3208010001","3208170302065683","JL CIPASUNG SUBANG","13","2");
INSERT INTO kk VALUES("828","3208010001","3208170402060019","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("829","3208010001","3208170402060020","KP CIAWITALI","13","2");
INSERT INTO kk VALUES("830","3208010001","3208170402060021","KP CIAWITALI","13","2");
INSERT INTO kk VALUES("831","3208010001","3208170402060026","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("832","3208010001","3208170402060027","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("833","3208010001","3208170402060028","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("834","3208010001","3208170402060029","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("835","3208010001","3208170402060030","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("836","3208010001","3208170402060031","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("837","3208010001","3208170402060032","KP CIAWITALI","13","2");
INSERT INTO kk VALUES("838","3208010001","3208170402060035","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("839","3208010001","3208170402060059","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("840","3208010001","3208170402060112","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("841","3208010001","3208170805130001","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("842","3208010001","3208170806150010","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("843","3208010001","3208171207110002","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("844","3208010001","3208171802080004","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("845","3208010001","3208172104080004","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("846","3208010001","3208172211100003","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("847","3208010001","3208172211120005","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("848","3208010001","3208172706070004","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("849","3208010001","3208172803110017","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("850","3208010001","3208172907060002","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("851","3208010001","3208173005110004","DUSUN CIAWITALI","13","2");
INSERT INTO kk VALUES("852","3208010001","3208170302065687","JL CIPASUNG SUBANG","14","2");
INSERT INTO kk VALUES("853","3208010001","3208170302066407","KP CIAWITALI","17","2");
INSERT INTO kk VALUES("854","3208010001","3208170302066451","DUSUN CIAWITALI","17","2");
INSERT INTO kk VALUES("855","3208010001","3208170302066452","KP CIAWITALI","17","2");
INSERT INTO kk VALUES("856","3208010001","3208170302066455","DUSUN CIAWITALI","17","2");
INSERT INTO kk VALUES("857","3208010001","3208172211120002","KP CIAWITALI","17","2");
INSERT INTO kk VALUES("858","3208010001","3208170402060087","KP CIAWITALI","20","2");
INSERT INTO kk VALUES("859","3208010001","3208172508110005","DUSUN CIAWITALI","20","2");
INSERT INTO kk VALUES("860","3208010001","3208170402060037","KP CIAWITALI","21","2");
INSERT INTO kk VALUES("861","3208010001","3208170402060038","KP CIAWITALI","21","2");
INSERT INTO kk VALUES("862","3208010001","3208170402060065","KP CIAWITALI","21","2");
INSERT INTO kk VALUES("863","3208010001","3208170402060080","DUSUN CIAWITALI","21","2");
INSERT INTO kk VALUES("864","3208010001","3208170402060022","DUSUN CIAWITALI","22","2");
INSERT INTO kk VALUES("865","3208010001","3208170302066394","KP CIAWITALI","8","3");
INSERT INTO kk VALUES("866","3208010001","3208171003140002","DUSUN CIAWITALI","11","3");
INSERT INTO kk VALUES("867","3208010001","3208170402060103","DUSUN CIAWITALI","2","9");



DROP TABLE pekerjaan;

CREATE TABLE `pekerjaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

INSERT INTO pekerjaan VALUES("1","Belum/Tidak Bekerja");
INSERT INTO pekerjaan VALUES("2","Mengurus Rumah Tangga");
INSERT INTO pekerjaan VALUES("3","Pelajar/Mahasiswa");
INSERT INTO pekerjaan VALUES("4","Pensiunan");
INSERT INTO pekerjaan VALUES("5","Pegawai Negeri Sipil");
INSERT INTO pekerjaan VALUES("6","Tentara Nasional Indonesia");
INSERT INTO pekerjaan VALUES("7","Kepolisian RI");
INSERT INTO pekerjaan VALUES("8","Perdagangan");
INSERT INTO pekerjaan VALUES("9","Petani/Pekebun");
INSERT INTO pekerjaan VALUES("10","Peternak");
INSERT INTO pekerjaan VALUES("11","Nelayan/Perikanan");
INSERT INTO pekerjaan VALUES("12","Industri");
INSERT INTO pekerjaan VALUES("13","Kontruksi");
INSERT INTO pekerjaan VALUES("14","Transportasi");
INSERT INTO pekerjaan VALUES("15","Karyawan Swasta");
INSERT INTO pekerjaan VALUES("16","Karyawan BUMN");
INSERT INTO pekerjaan VALUES("17","Karyawan BUMD");
INSERT INTO pekerjaan VALUES("18","Karyawan Honorer");
INSERT INTO pekerjaan VALUES("19","Buruh Harian Lepas");
INSERT INTO pekerjaan VALUES("20","Buruh Tani/Perkebunan");
INSERT INTO pekerjaan VALUES("21","Buruh Nelayan/Perikanan");
INSERT INTO pekerjaan VALUES("22","Buruh Perternakan");
INSERT INTO pekerjaan VALUES("23","Pembantu Rumah Tangga");
INSERT INTO pekerjaan VALUES("24","Tukang Cukur");
INSERT INTO pekerjaan VALUES("25","Tukang Listrik");
INSERT INTO pekerjaan VALUES("26","Tukang Batu");
INSERT INTO pekerjaan VALUES("27","Tukang Kayu");
INSERT INTO pekerjaan VALUES("28","Tukang Sol Sepatu");
INSERT INTO pekerjaan VALUES("29","Tukang Las/Pandai Besi");
INSERT INTO pekerjaan VALUES("30","Tukang Jahit");
INSERT INTO pekerjaan VALUES("31","Penata Rambut");
INSERT INTO pekerjaan VALUES("32","Penata Rias");
INSERT INTO pekerjaan VALUES("33","Penata Busana");
INSERT INTO pekerjaan VALUES("34","Mekanik");
INSERT INTO pekerjaan VALUES("35","Tukang Gigi");
INSERT INTO pekerjaan VALUES("36","Seniman");
INSERT INTO pekerjaan VALUES("37","Tabib");
INSERT INTO pekerjaan VALUES("38","Paraji");
INSERT INTO pekerjaan VALUES("39","Perancang Busana");
INSERT INTO pekerjaan VALUES("40","Penterjamah");
INSERT INTO pekerjaan VALUES("41","Iman Masjid");
INSERT INTO pekerjaan VALUES("42","Pendeta");
INSERT INTO pekerjaan VALUES("43","Pastur");
INSERT INTO pekerjaan VALUES("44","Wartawan");
INSERT INTO pekerjaan VALUES("45","Ustadz/Mubaligh");
INSERT INTO pekerjaan VALUES("46","Juru Masak");
INSERT INTO pekerjaan VALUES("47","Promotor Acara");
INSERT INTO pekerjaan VALUES("48","Anggota DPR-RI");
INSERT INTO pekerjaan VALUES("49","Anggota DPD");
INSERT INTO pekerjaan VALUES("50","Anggota BPK");
INSERT INTO pekerjaan VALUES("51","Presiden");
INSERT INTO pekerjaan VALUES("52","Wakil Presiden");
INSERT INTO pekerjaan VALUES("53","Anggota Mahkamah");
INSERT INTO pekerjaan VALUES("54","Konstitusi");
INSERT INTO pekerjaan VALUES("55","Anggota kabinet/kementrian");
INSERT INTO pekerjaan VALUES("56","Duta Besar");
INSERT INTO pekerjaan VALUES("57","gubernur");
INSERT INTO pekerjaan VALUES("58","Wakil Gubernur");
INSERT INTO pekerjaan VALUES("59","Bupati");
INSERT INTO pekerjaan VALUES("60","Wakil Bupati");
INSERT INTO pekerjaan VALUES("61","Wali Kota");
INSERT INTO pekerjaan VALUES("62","Wakil Walikota");
INSERT INTO pekerjaan VALUES("63","Anggota DPRD ");
INSERT INTO pekerjaan VALUES("64","Dosen");
INSERT INTO pekerjaan VALUES("65","Guru");
INSERT INTO pekerjaan VALUES("66","Pilot");
INSERT INTO pekerjaan VALUES("67","Pengacara");
INSERT INTO pekerjaan VALUES("68","Notaris");
INSERT INTO pekerjaan VALUES("69","Arsitek");
INSERT INTO pekerjaan VALUES("70","Akuntan");
INSERT INTO pekerjaan VALUES("71","Konsultan");
INSERT INTO pekerjaan VALUES("72","Dokter");
INSERT INTO pekerjaan VALUES("73","Bidan");
INSERT INTO pekerjaan VALUES("74","Perawat");
INSERT INTO pekerjaan VALUES("75","Apoteker");
INSERT INTO pekerjaan VALUES("76","Psikater/psikolog");
INSERT INTO pekerjaan VALUES("77","Penyiar Televisi");
INSERT INTO pekerjaan VALUES("78","Penyiar Radio");
INSERT INTO pekerjaan VALUES("79","Pelaut");
INSERT INTO pekerjaan VALUES("80","Peneliti");
INSERT INTO pekerjaan VALUES("81","Sopir");
INSERT INTO pekerjaan VALUES("82","Pialang");
INSERT INTO pekerjaan VALUES("83","Paranormal");
INSERT INTO pekerjaan VALUES("84","Pedagang");
INSERT INTO pekerjaan VALUES("85","Perangkat desa");
INSERT INTO pekerjaan VALUES("86","Kepala Desa");
INSERT INTO pekerjaan VALUES("87","Biarawati");
INSERT INTO pekerjaan VALUES("88","Wiraswasta");
INSERT INTO pekerjaan VALUES("89","Lainnya");



DROP TABLE pendidikan;

CREATE TABLE `pendidikan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO pendidikan VALUES("1","Tidak/Belum Sekolah");
INSERT INTO pendidikan VALUES("2","Tidak Tamat SD/Tidak Sekolah");
INSERT INTO pendidikan VALUES("3","Tamat SD/Sederajat");
INSERT INTO pendidikan VALUES("4","SLTP/Sederajat");
INSERT INTO pendidikan VALUES("5","SLTA/Sederajat");
INSERT INTO pendidikan VALUES("6","Diploma I/II");
INSERT INTO pendidikan VALUES("7","Akademi/Diploma");
INSERT INTO pendidikan VALUES("8","Diploma IV/Strata I");
INSERT INTO pendidikan VALUES("9","Strata II");
INSERT INTO pendidikan VALUES("10","Strata III");



DROP TABLE penduduk;

CREATE TABLE `penduduk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kk` int(11) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tmp_lhr` varchar(30) NOT NULL,
  `tgl_lhr` varchar(45) NOT NULL,
  `no_akta` varchar(200) NOT NULL,
  `jk` int(11) NOT NULL,
  `gol_drh` int(11) NOT NULL,
  `agama` int(11) NOT NULL,
  `status_kawin` int(11) NOT NULL,
  `surat_nikah` varchar(200) NOT NULL,
  `pendidikan` int(11) NOT NULL,
  `pekerjaan` int(11) NOT NULL,
  `hub_klg` int(11) NOT NULL,
  `wrg_ngr` int(11) NOT NULL,
  `ayah` varchar(50) NOT NULL,
  `ibu` varchar(50) NOT NULL,
  `keberadaan` int(11) NOT NULL,
  `foto` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2657 DEFAULT CHARSET=latin1;

INSERT INTO penduduk VALUES("1","1","3208170107661055","DARYONO","KUNINGAN","1966 -01-07","","1","11","1","2","","3","9","1","1","SUHANI","NAPTI","1","907291484546890.jpg");
INSERT INTO penduduk VALUES("2","2","3208174304650004","NANI ROSNANI","KUNINGAN","1970 -03-04","","2","11","1","2","","3","2","1","1","TISNAs","ARTI","1","2246711484546923.");
INSERT INTO penduduk VALUES("3","3","3208176012410001","UMINAH","KUNINGAN","1941 -20-12","","2","11","1","2","","3","2","1","1","KARNA","-fsdf","1","845651484547040.jpg");
INSERT INTO penduduk VALUES("4","3","3208174910640001","EDAH","KUNINGAN","1964 -09-10","","2","11","1","2","","3","2","4","1","WINARDI","UMINAH","1","");
INSERT INTO penduduk VALUES("5","3","3208170303780007","TARYANA","KUNINGAN","1978 -03-03","","1","11","1","1","","3","84","4","1","WINARDI","UMINAH","1","");
INSERT INTO penduduk VALUES("6","3","3208170305590003","KUSNARI","KUNINGAN","1959 -03-05","","1","11","1","2","","3","9","4","1","-","DARYI","1","");
INSERT INTO penduduk VALUES("7","4","3208170212760001","ENCENG DIDI SAHYADI","KUNINGAN","1976 -02-12","","1","2","1","2","","5","88","1","1","ENGKOS KOSIM","IIN SUINAH","1","5928651484547387.jpg");
INSERT INTO penduduk VALUES("8","5","3208170107780457","ROHADI","KUNINGAN","1978 -01-07","","1","11","1","2","","3","9","1","1","SAHLIMI","RANENG","1","");
INSERT INTO penduduk VALUES("9","5","3208174107820399","OMAH","KUNINGAN","1982 -01-07","","2","11","1","2","","3","2","3","1","SURYANTO","ROHANAH","1","");
INSERT INTO penduduk VALUES("10","5","3208170107010212","DENA PRIATNA","KUNINGAN","2001 -01-07","","1","11","1","1","","1","1","4","1","ROHADI","OMAH","3","");
INSERT INTO penduduk VALUES("11","5","3208174107060003","SUDIA","KUNINGAN","2006 -01-07","","2","11","1","1","","0","1","9","1","SAHLIMI","RANENG","1","");
INSERT INTO penduduk VALUES("12","6","3208172702300001","UKANDI","KUNINGAN","1946 -28-08","","1","11","1","2","","4","9","1","1","SUNARTA","KARMINI","1","");
INSERT INTO penduduk VALUES("13","6","3208175605480005","JOHANAH","KUNINGAN","1948 -16-05","","2","11","1","2","","3","2","3","1","WINARTA","RINGSIH","1","");
INSERT INTO penduduk VALUES("14","7","3208171107770003","SUNTANO","KUNINGAN","1977 -11-07","","1","11","1","2","","3","88","1","1","ADIN","KINAH","1","");
INSERT INTO penduduk VALUES("15","7","3208176612840002","ENTIN SUNTINAH","KUNINGAN","1984 -26-12","","2","11","1","2","","3","2","3","1","SAHRUDIN","SITA","1","");
INSERT INTO penduduk VALUES("16","7","3208172206110002","RAGIL ZUANTINO","KUNINGAN","2011 -22-06","","1","11","1","1","","1","1","4","1","SUNTANO","ENTIN SUNTINAH","1","");
INSERT INTO penduduk VALUES("17","7","3208175911030003","PERA","KUNINGAN","2003 -19-11","","2","11","1","1","","0","3","4","1","SUNTANO","ENTIN SUNTINAH","1","");
INSERT INTO penduduk VALUES("18","8","3208170112300004","SUKENDI","KUNINGAN","1930 -01-12","","1","11","1","2","","3","4","1","1","MUNTAWI","MASKI","1","");
INSERT INTO penduduk VALUES("19","8","3208174112500001","NARIAH","KUNINGAN","1950 -01-12","","2","11","1","2","","3","2","3","1","SUARA DINATA","ATIJAH","1","");
INSERT INTO penduduk VALUES("20","9","3208172006440002","BANDI","KUNINGAN","1944 -20-06","","1","11","1","2","","3","20","1","1","GARNA","NIRAH","1","");
INSERT INTO penduduk VALUES("21","9","3208175607550006","SUANAH","KUNINGAN","1955 -16-07","","2","11","1","2","","3","20","3","1","SUKARJA","UNAN","1","");
INSERT INTO penduduk VALUES("22","10","3208170207500002","NARDI","KUNINGAN","1950 -02-07","","1","11","1","2","","3","88","1","1","SUARMI","RUPI","1","");
INSERT INTO penduduk VALUES("23","10","3208175110650010","ENOH","KUNINGAN","1965 -11-10","","2","11","1","2","","3","2","3","1","SANUHWI","SARSIH","1","");
INSERT INTO penduduk VALUES("24","10","3208170204900007","ADE KUSDIA","KUNINGAN","1990 -02-04","","1","11","1","1","","3","88","4","1","NARDI","ENOH","1","");
INSERT INTO penduduk VALUES("25","10","3208170711830006","SUARDI","KUNINGAN","1983 -07-11","","1","11","1","1","","3","88","4","1","NARDI","ENOH","1","");
INSERT INTO penduduk VALUES("26","11","3208171309540001","SAPTAR","KUNINGAN","1954 -13-09","","1","11","1","2","","3","9","1","1","WIHARTA","SOMAH","1","");
INSERT INTO penduduk VALUES("27","11","3208176403550001","RANTI","KUNINGAN","1955 -24-03","","2","11","1","2","","3","2","3","1","RASTAM","MINASIH","1","");
INSERT INTO penduduk VALUES("28","11","3208175402830006","HERNI","KUNINGAN","1983 -14-02","","2","11","1","1","","3","23","4","1","SAPTAR","RANTI","1","");
INSERT INTO penduduk VALUES("29","11","3208171105050001","WAHYU","KUNINGAN","2005 -11-05","","1","11","1","1","","0","3","6","1","SAHRONI","EMYATI","1","");
INSERT INTO penduduk VALUES("30","12","3208172006370004","SUTIRNA","KUNINGAN","1937 -20-06","","1","11","1","2","","3","9","1","1","SUWIRTA","NERWI","1","");
INSERT INTO penduduk VALUES("31","12","3208175607420004","SURTI","KUNINGAN","1942 -16-07","","2","11","1","2","","3","2","3","1","SUKARNA","NIRAH","1","");
INSERT INTO penduduk VALUES("32","13","3208171504480004","ARMIN","KUNINGAN","1948 -15-04","","1","11","1","2","","3","9","1","1","SUARTA","NURI","1","");
INSERT INTO penduduk VALUES("33","13","3208175203560003","ETI","KUNINGAN","1956 -12-03","","2","11","1","2","","3","2","3","1","SUNAHDI","SAMI","1","");
INSERT INTO penduduk VALUES("34","13","3208171001840002","MAMAN SALMAN","KUNINGAN","1984 -10-01","","1","11","1","1","","3","88","4","1","ARMIN","ETI","1","");
INSERT INTO penduduk VALUES("35","13","3208177103900003","AI SURYAWATI","KUNINGAN","1990 -31-03","","2","11","1","1","","3","15","4","1","ARMIN","ETI","1","");
INSERT INTO penduduk VALUES("36","14","3208171803660001","ROHMANSAH","KUNINGAN","1966 -18-03","","1","2","1","2","","5","88","1","1","TARMIDI","MURSARI","1","");
INSERT INTO penduduk VALUES("37","14","3208174408720002","IAH SARIAH","CIAMIS","1972 -04-08","","2","4","1","2","","4","2","3","1","SUHARYA","RUNAH","1","");
INSERT INTO penduduk VALUES("38","14","3208171604940001","DIKY BAKHTIAR","KUNINGAN","1994 -16-04","","1","4","1","1","","4","15","4","1","ROHMANSAH","IAH SARIAH","1","");
INSERT INTO penduduk VALUES("39","14","3208172109010009","PANDU RESTU PAMUJI","KUNINGAN","2001 -21-09","","1","4","1","1","","0","3","4","1","ROHMANSAH","IAH SARIAH","1","");
INSERT INTO penduduk VALUES("40","15","3208170706610003","ENGKOS","KUNINGAN","1961 -07-06","","1","11","1","2","","3","9","1","1","ANDA","ARNAH","1","");
INSERT INTO penduduk VALUES("41","15","3208175803670003","ADMI","KUNINGAN","1967 -18-03","","2","11","1","2","","3","9","3","1","SUPARMAN","IMI","1","");
INSERT INTO penduduk VALUES("42","16","3208170611640003","PENDI SUPENDI","KUNINGAN","1964 -06-11","","1","11","1","2","","3","88","1","1","SUHANTA","NESIH","1","");
INSERT INTO penduduk VALUES("43","16","3208174906760002","ENTIN RATINI","KUNINGAN","1976 -09-06","","2","11","1","2","","3","2","3","1","NARWA","SUNIAH","1","");
INSERT INTO penduduk VALUES("44","16","3208170106950008","AGUN PURNAMA","KUNINGAN","1995 -01-06","","1","11","1","1","","4","15","4","1","PENDI SUPENDI","ENTIN RATINI","1","");
INSERT INTO penduduk VALUES("45","16","3208172212010002","AAN DARMAWAN","KUNINGAN","2001 -22-12","","1","11","1","1","","0","3","4","1","PENDI SUPENDI","ENTIN RATINI","1","");
INSERT INTO penduduk VALUES("46","16","3208176706120003","ELA JULIYA","KUNINGAN","2012 -27-06","","2","11","1","1","","1","1","4","1","PENDI SUPENDI","ENTIN RATINI","1","");
INSERT INTO penduduk VALUES("47","17","3208171710300002","SUHIDIN","KUNINGAN","1930 -17-10","","1","11","1","2","","3","4","1","1","WINARTA","SAREH","1","");
INSERT INTO penduduk VALUES("48","17","3208175706510001","ANTI","KUNINGAN","1951 -17-06","","2","11","1","2","","3","2","3","1","UMINTA","RESIH","1","");
INSERT INTO penduduk VALUES("49","17","3208174508790005","ENAH NURAINA","KUNINGAN","1979 -05-08","","2","11","1","4","","5","88","4","1","SUHIDIN","ANTI","1","");
INSERT INTO penduduk VALUES("50","17","3208170311060002","RAYHAN WILLY FAUZAN","KUNINGAN","2006 -03-11","","1","11","1","1","","0","1","6","1","WILIAM","ENAH NURAINA","1","");
INSERT INTO penduduk VALUES("51","18","3208174107420131","ASATI","KUNINGAN","1942 -01-07","","2","11","1","4","","0","9","1","1","SANHPI","NASKEWI","1","");
INSERT INTO penduduk VALUES("52","19","3208170204520003","NURYANA","KUNINGAN","1952 -02-04","","1","11","1","2","","3","9","1","1","SARKUM","ONA","1","");
INSERT INTO penduduk VALUES("53","19","3208174808580002","SUNINGSIH","KUNINGAN","1958 -08-08","","2","11","1","2","","3","2","3","1","WINAHRI","SARTINAH","1","");
INSERT INTO penduduk VALUES("54","19","3208171908880001","IYAN PURDIANA","KUNINGAN","1988 -19-08","","1","11","1","1","","3","1","4","1","NURYANA","SUNINGSIH","1","");
INSERT INTO penduduk VALUES("55","19","3208174506770007","RINA SURYANI","KUNINGAN","1977 -05-06","","2","11","1","3","","3","1","4","1","NURYANA","SUNINGSIH","1","");
INSERT INTO penduduk VALUES("56","19","3208170505010004","GES ADI SELPIRA","KUNINGAN","2001 -05-05","","1","11","1","1","","1","1","6","1","RUDI RASPATI","RINA SURYANI","1","");
INSERT INTO penduduk VALUES("57","19","3208170507950003","GEM REJAWANI","KUNINGAN","1995 -05-07","","1","11","1","1","","0","3","6","1","RUDI RASPATI","RINA SURYANI","1","");
INSERT INTO penduduk VALUES("58","20","3208170102620005","SAPTONO","KUNINGAN","1962 -01-02","","1","11","1","2","","3","9","1","1","SAAD","SAIRAH","1","");
INSERT INTO penduduk VALUES("59","20","3208174811670002","KURNAH","KUNINGAN","1967 -08-11","","2","11","1","2","","3","2","3","1","DUNHALI","ARINAH","1","");
INSERT INTO penduduk VALUES("60","20","3208172005970004","ANDI","KUNINGAN","1997 -20-05","","1","11","1","1","","3","15","4","1","SAPTONO","KURNAH","1","");
INSERT INTO penduduk VALUES("61","21","3208170107480118","SUTISNO","KUNINGAN","1948 -01-07","","1","11","1","2","","3","9","1","1","SUHANI","-","1","");
INSERT INTO penduduk VALUES("62","21","3208174305540002","RESAH","KUNINGAN","1954 -03-05","","2","11","1","2","","3","2","3","1","SUKARDI","UCIH","1","");
INSERT INTO penduduk VALUES("63","22","3208171011660001","SARTONO","KUNINGAN","1966 -10-11","","1","11","1","2","","3","20","1","1","SURA MUNARA","JUNI","1","");
INSERT INTO penduduk VALUES("64","22","3208175806700006","ENIT ANITI","KUNINGAN","1970 -18-06","","2","11","1","2","","3","2","3","1","SUDIRJA","ARNING","1","");
INSERT INTO penduduk VALUES("65","22","3208170108920009","DIAN HERDIANA","KUNINGAN","1992 -01-08","","1","11","1","1","","3","15","4","1","SARTONO","ANITI","1","");
INSERT INTO penduduk VALUES("66","22","3208174806030001","ELISNA","KUNINGAN","2003 -08-06","","2","11","1","1","","0","3","4","1","SARTONO"," ANITI","1","");
INSERT INTO penduduk VALUES("67","23","3208171808730004","ISMAIL","KUNINGAN","1973 -16-08","","1","11","1","2","","3","81","1","1","UTANDI","ACIH","1","");
INSERT INTO penduduk VALUES("68","23","3208174809840004","RINI NURINI","KUNINGAN","1984 -05-01","","2","11","1","2","","3","2","3","1","ATANG","RUMINI","1","");
INSERT INTO penduduk VALUES("69","23","3208170108130001","SAHDAN GUSTIAN RAMDANI","KUNINGAN","2013 -01-08","","1","11","1","1","","1","1","4","1","ISMAIL","RINI NURINI","1","");
INSERT INTO penduduk VALUES("70","23","3208176609140001","SINTA LIDYA SEPTIANI","KUNINGAN","2014 01:00:00-26-09","","2","11","1","1","","1","1","4","1","ISMAIL","RINI NURINI","1","");
INSERT INTO penduduk VALUES("71","23","3208175703030006","SINDI AMELIA","KUNINGAN","2003 -17-03","","2","11","1","1","","0","3","4","1","ISMAIL","RINI NURINI","1","");
INSERT INTO penduduk VALUES("72","23","3208172211070003","IRGI PEBRIAN","KUNINGAN","2007 -22-11","","1","11","1","1","","0","3","4","1","ISMAIL","RINI NURINI","1","");
INSERT INTO penduduk VALUES("73","24","3208170910560002","SARKU","KUNINGAN","1956 -09-10","","1","11","1","2","","3","9","1","1","AWAN","NITA","1","");
INSERT INTO penduduk VALUES("74","24","3208174107620395","HARTINI","KUNINGAN","1962 -01-07","","2","11","1","2","","3","2","3","1","ADNA","ISAH","1","");
INSERT INTO penduduk VALUES("75","24","3208174107800397","SARTIAH","KUNINGAN","1980 -01-07","","2","11","1","1","","0","1","4","1","SARKU","HARTINI","1","");
INSERT INTO penduduk VALUES("76","25","3208177112530002","SUTIRAH","KUNINGAN","1953 -31-12","","2","11","1","4","","3","2","1","1","MIHARNA","ATMI","1","");
INSERT INTO penduduk VALUES("77","26","3208171709650002","AHYUDIN","KUNINGAN","1965 -17-09","","1","11","1","2","","3","8","1","1","ANDA","ARNAH","1","");
INSERT INTO penduduk VALUES("78","26","3208175608700005","ANITI","KUNINGAN","1970 -16-08","","2","11","1","2","","3","2","3","1","SUKENDI","NARIAH","1","");
INSERT INTO penduduk VALUES("79","26","3208171911990003","IMAN HERMAWAN","KUNINGAN","1999 -19-11","","1","11","1","1","","3","1","4","1","AHYUDIN","ANITI","1","");
INSERT INTO penduduk VALUES("80","27","3208170107700378","AMAD","KUNINGAN","1970 -01-07","","1","11","1","2","","3","9","1","1","HASAN","NARWITI","1","");
INSERT INTO penduduk VALUES("81","28","3208171708570004","HOLIL","KUNINGAN","1957 -17-08","","1","11","1","2","","3","9","1","1","SUWINTA","KATI","1","");
INSERT INTO penduduk VALUES("82","28","3208174406630008","RUNASIH","KUNINGAN","1963 -04-06","","2","11","1","2","","3","2","3","1","SUTARJA","NAMI","1","");
INSERT INTO penduduk VALUES("83","28","3208171301940004","WAWAN IRAWAN","KUNINGAN","1994 -13-01","","1","11","1","1","","4","3","4","1","HOLIL","RUNASIH","1","");
INSERT INTO penduduk VALUES("84","28","3208176707880003","ELIN","KUNINGAN","1988 -27-07","","2","11","1","1","","3","1","4","1","HOLIL","RUNASIH","1","");
INSERT INTO penduduk VALUES("85","28","3208176605060001","REPANI","KUNINGAN","2006 -26-05","","2","11","1","1","","1","1","6","1","YOPI","ELINAH","1","");
INSERT INTO penduduk VALUES("86","29","3208170104290003","E. DARJONO R.","KUNINGAN","1929 -01-04","","1","11","1","2","","3","4","1","1","SUMINTA","SUKIRAH","1","");
INSERT INTO penduduk VALUES("87","29","3208176808350001","M. HALIMAH","KUNINGAN","1935 -28-08","","2","11","1","2","","3","2","3","1","KUSEN","NENTI","1","");
INSERT INTO penduduk VALUES("88","30","3208174107380151","MARSITA","KUNINGAN","1938 -01-07","","2","11","1","4","","3","20","1","1","KARAMA JUSAN","RUWI","1","");
INSERT INTO penduduk VALUES("89","31","3208170107560255","ARIS RISYANTO","KUNINGAN","1956 -01-07","","1","11","1","2","","3","84","1","1","MADHARI","SUWIRAH","1","");
INSERT INTO penduduk VALUES("90","31","3208176805730002","HEHEN SUHENTI","KUNINGAN","1973 -28-05","","2","11","1","2","","4","2","3","1","SUTIRJA","GINI","1","");
INSERT INTO penduduk VALUES("91","31","3208170410960007","RENO HENDRIAN","KUNINGAN","1996 -04-10","","1","11","1","1","","5","1","4","1","ARIS RISYANTO","HEHEN SUHENTI","1","");
INSERT INTO penduduk VALUES("92","31","3208171302030002","YUDATIA","KUNINGAN","2003 -13-02","","1","11","1","1","","3","3","4","1","ARIS RISYANTO","HEHEN SUHENTI","1","");
INSERT INTO penduduk VALUES("93","31","3208176006310004","GINI","KUNINGAN","1931 -20-06","","2","11","1","4","","3","1","8","1","PARMA DIJAYA","TAYU","1","");
INSERT INTO penduduk VALUES("94","32","3208171104480004","KEYO","KUNINGAN","1948 -11-04","","1","11","1","2","","3","88","1","1","SUNARTA","KARMINI","1","");
INSERT INTO penduduk VALUES("95","33","3208172208680001","RAHMAT","KUNINGAN","1968 -22-08","","1","11","1","2","","3","9","1","1","RUHIMAN","SARTINI","1","");
INSERT INTO penduduk VALUES("96","33","3208177006690001","IDA IRYANI","MAJALENGKA","1969 -30-06","","2","11","1","2","","3","2","3","1","SANUSI GUNAWAN","JUHAERIAH","1","");
INSERT INTO penduduk VALUES("97","33","3208177012920004","RATNA KUWITASARI","MAJALENGKA","1992 -30-12","","2","11","1","1","","4","3","4","1","RAHMAT","IDA IRYANI","1","");
INSERT INTO penduduk VALUES("98","33","3208172805900003","DADANG ISKANDAR","MAJALENGKA","1990 -28-05","","1","11","1","1","","4","88","4","1","RAHMAT","IDA IRYANI","1","");
INSERT INTO penduduk VALUES("99","34","3208171605830004","HENDRA","MAJALENGKA","1983 -16-05","","1","11","1","2","","3","84","1","1","MAKBUL","ACIH","1","");
INSERT INTO penduduk VALUES("100","34","3210237108840001","MELI YULIANA NURHAYATI","KUNINGAN","1984 -31-08","","2","11","1","2","","3","2","3","1","MAMAN","SUHIMI","1","");
INSERT INTO penduduk VALUES("101","34","3210236605080021","ZAHRA ROZULAENI","KUNINGAN","2008 -26-05","","2","11","1","1","","1","1","4","1","HENDRA","MELI YULIANA NURHAYATI","1","");
INSERT INTO penduduk VALUES("102","34","3208177008120002","ZIENI NUR ANISA","KUNINGAN","2012 -30-08","","2","11","1","1","","1","1","4","1","HENDRA","MELI YULIANA NURHAYATI","1","");
INSERT INTO penduduk VALUES("103","35","3208170708740002","ASEP NURBA NURCAHYA","KUNINGAN","1974 -07-08","","1","11","1","2","","5","15","1","1","MISKAT","KOMARIAH","1","");
INSERT INTO penduduk VALUES("104","35","3208174104790001","DIAN HERDIANA","KUNINGAN","1979 -01-04","","2","11","1","2","","5","2","3","1","SUTARSA","TARSIH","1","");
INSERT INTO penduduk VALUES("105","35","3208176512120002","ANNISA SITI SHOLEHA","KUNINGAN","2012 -25-12","","2","11","1","1","","1","1","4","1","ASEP NURBA NURCAHYA","DIAN HERDIANA","1","");
INSERT INTO penduduk VALUES("106","35","3208171610040005","AMBI KARIA PRANANDA","KUNINGAN","2004 -16-10","","1","11","1","1","","0","1","4","1","ASEP NURBA NURCAHYA","DIAN HERDIANA","1","");
INSERT INTO penduduk VALUES("107","35","3208174302090001","AISHA KARI`E AWIJAYANTI","KUNINGAN","2009 -03-02","","2","11","1","1","","1","1","4","1","ASEP NURBA NURCAHYA","DIAN HERDIANA","1","");
INSERT INTO penduduk VALUES("108","36","3208175605620003","SUHIMI","KUNINGAN","1962 -16-05","","2","11","1","3","","3","2","1","1","SUHIRNA","AWITI","1","");
INSERT INTO penduduk VALUES("109","37","3208172708820007","AJI. N","KUNINGAN","1982 -27-08","","1","11","1","2","","3","88","1","1","AHYAR","NINGGRUM","1","");
INSERT INTO penduduk VALUES("110","37","3208176706100004","AMANDA LISTIA","KUNINGAN","2010 -27-06","","2","11","1","1","","1","1","4","1","AJI. N","NIA RATNA ASIH","1","");
INSERT INTO penduduk VALUES("111","38","3208170503760001","JUJU JUARSA","KUNINGAN","1976 -05-03","","1","11","1","2","","3","20","1","1","SUTISNO","RESAH","1","");
INSERT INTO penduduk VALUES("112","38","3208177108830005","RASTINI","KUNINGAN","1983 -31-08","","2","11","1","2","","3","2","3","1","SARKU","NARSAH","1","");
INSERT INTO penduduk VALUES("113","39","3208170711830005","SURDI","KUNINGAN","1983 -07-11","","1","11","1","2","","4","84","1","1","NARDI","ENOH","1","");
INSERT INTO penduduk VALUES("114","39","3208177003900005","YANI YULIANI","KUNINGAN","1990 -30-03","","2","11","1","2","","4","2","3","1","ENGKOS","ADMI","1","");
INSERT INTO penduduk VALUES("115","39","3208174806090003","GITA YULIAN RAHAYU","KUNINGAN","2009 -08-06","","2","11","1","1","","1","1","4","1","SURDI","YANI YULIANI","1","");
INSERT INTO penduduk VALUES("116","40","3208171003790012","ENDAY KADARISMAN","KUNINGAN","1979 -10-03","","1","11","1","2","","5","88","1","1","E. DARJONO R.","M. HALIMAH","1","");
INSERT INTO penduduk VALUES("117","40","3208176505850009","DETI TISMAYA","KUNINGAN","1985 -25-05","","2","11","1","2","","5","2","3","1","ESO","KARPIS","1","");
INSERT INTO penduduk VALUES("118","40","3208170401070002","IRDAN FADILAH","KUNINGAN","2007 -04-01","","1","11","1","1","","1","1","4","1","ENDAY KADARISMAN","DETI TISMAYA","1","");
INSERT INTO penduduk VALUES("119","40","3208176002120001","RADISTY NAFISA","KUNINGAN","2012 -20-02","","2","11","1","1","","1","1","4","1","ENDAY KADARISMAN","DETI TISMAYA","1","");
INSERT INTO penduduk VALUES("120","41","3208091301790005","YUPI ELMIWADI","KUNINGAN","1979 -13-01","","1","11","1","2","","5","88","1","1","ZULHELMI","TITING","1","");
INSERT INTO penduduk VALUES("121","41","3208095305820009","ELIN HERLINA","KUNINGAN","1982 -13-05","","2","11","1","2","","4","2","3","1","HOLIL","RUNASIH","1","");
INSERT INTO penduduk VALUES("122","41","3208096605060003","REVANI NAYA EVIOLINA","KUNINGAN","2006 -26-05","","2","11","1","1","","1","1","4","1","YUPI ELMIWADI","ELIN HERLINA","1","");
INSERT INTO penduduk VALUES("123","42","3518130910650001","KEMO HERMAWAN","CIAMIS","1965 -09-10","","1","11","1","2","","3","88","1","1","SUPATNA","KONAH","1","");
INSERT INTO penduduk VALUES("124","42","3208176009780003","IKAH","KUNINGAN","1978 -20-09","","2","11","1","2","","3","2","3","1","BANDI","SUANAH","1","");
INSERT INTO penduduk VALUES("125","42","3518132211960001","INDRA KURNIAWAN","KUNINGAN","1996 -22-11","","1","11","1","1","","4","1","4","1","KEMO HERMAWAN","IKAH","1","");
INSERT INTO penduduk VALUES("126","43","3208172707880006","BUDIMAN","KUNINGAN","1988 -27-07","","1","11","1","2","","3","88","1","1","HOLIL","RUNASIH","1","");
INSERT INTO penduduk VALUES("127","43","3208175306900001","ROHAYATI","KUNINGAN","1990 -13-06","","2","11","1","2","","4","2","3","1","DEDI NURYANA","SANAH","1","");
INSERT INTO penduduk VALUES("128","43","3208175901100002","SELA AYU AULIA","KUNINGAN","2010 -19-01","","2","11","1","1","","1","1","4","1","BUDIMAN","ROHAYATI","1","");
INSERT INTO penduduk VALUES("129","44","3208175709610001","KURSIH","KUNINGAN","1961 -17-09","","2","11","1","2","","3","2","1","1","SUWINTA","KATI","1","");
INSERT INTO penduduk VALUES("130","45","3208175604560003","ENTI MARYATI","KUNINGAN","1956 -16-04","","2","11","1","2","","3","2","1","1","UTARGA","RUKNI","1","");
INSERT INTO penduduk VALUES("131","45","3208171408930009","SUDIONO","KUNINGAN","1993 -14-08","","1","11","1","1","","5","1","4","1","NADIA","ENTI MARYATI","1","");
INSERT INTO penduduk VALUES("132","45","3208171408930008","SUDIANA","KUNINGAN","1993 -14-08","","1","11","1","1","","5","1","4","1","NADIA","ENTI MARYATI","1","");
INSERT INTO penduduk VALUES("133","46","3208170507780005","HENDRA KOMARA","KUNINGAN","1978 -05-07","","1","11","1","2","","4","88","1","1","SUKENDI","NARIAH","1","");
INSERT INTO penduduk VALUES("134","46","3208174209820004","DWI YANTI IRYANA","KUNINGAN","1982 -02-09","","2","11","1","2","","4","2","3","1","SUDARMONO","TAMI","1","");
INSERT INTO penduduk VALUES("135","46","3208175305080002","SRI ERPIANI","KUNINGAN","2008 -13-05","","2","11","1","1","","0","3","4","1","HENDRA KOMARA","DWI YANTI IRYANA","1","");
INSERT INTO penduduk VALUES("136","47","3208171011810004","ADKA","KUNINGAN","1981 -10-11","","1","11","1","2","","3","20","1","1","DUNHALI","ARINAH","1","");
INSERT INTO penduduk VALUES("137","47","3208175104900010","MIMIN MULYANI","KUNINGAN","1990 -11-04","","2","11","1","2","","3","2","3","1","MURKIM","SUNIRAH","1","");
INSERT INTO penduduk VALUES("138","47","3208176510110001","RINI SURYANI","KUNINGAN","2011 -25-10","","2","11","1","1","","1","1","4","1","ADKA","MIMIN MULYANI","1","");
INSERT INTO penduduk VALUES("139","47","3208171604300001","DUN HALI","KUNINGAN","1930 -16-04","","1","11","1","4","","3","20","0","1","NATA DALIM","INTA","1","");
INSERT INTO penduduk VALUES("140","48","3208175708630007","KUSNITI","KUNINGAN","1963 -17-08","","2","11","1","4","","3","4","1","1","DARSONO","TARSIH","1","");
INSERT INTO penduduk VALUES("141","49","3210031806850081","DODI SUDIANA","MAJALENGKA","1985 -18-06","","1","11","1","2","","3","15","1","1","DAHYO","ENAH","1","");
INSERT INTO penduduk VALUES("142","49","3208174602140001","RAISA ANDINI FEBRIYANTI","KUNINGAN","2014 -06-02","","2","11","1","1","","1","1","4","1","DODI SUDIANA","YANTI","1","");
INSERT INTO penduduk VALUES("143","50","3208175103470001","ACIH","KUNINGAN","1947 -11-03","","2","11","1","4","","3","2","1","1","WINATA","MURNI","1","");
INSERT INTO penduduk VALUES("144","50","3208174501720002","NENGSAH","KUNINGAN","1972 -05-01","","2","11","1","2","","3","2","4","1","ACIH","UTANDI","1","");
INSERT INTO penduduk VALUES("145","51","3602092410810001","NANA RISYANA","KUNINGAN","1981 -24-10","","1","11","1","2","","5","88","1","1","RUSPENDI","ETI KUSTIAH","1","");
INSERT INTO penduduk VALUES("146","51","3602096712850001","IPAH","LEBAK","1985 -27-12","","2","11","1","2","","6","65","3","1","UDIN","SANAH","1","");
INSERT INTO penduduk VALUES("147","51","3602096908120001","RISYATUL LATIFAH","LEBAK","2012 -29-08","","2","11","1","1","","1","1","4","1","NANA RISYANA","IPAH","1","");
INSERT INTO penduduk VALUES("148","51","3602096610090003","RIFATUSH SHOLIHAH","LEBAK","2009 -26-10","","2","11","1","1","","1","1","4","1","NANA RISYANA","IPAH","1","");
INSERT INTO penduduk VALUES("149","52","3208171110400002","SARIP","KUNINGAN","1940 -11-10","","1","11","1","2","","3","4","1","1","KARTO WIYONO","-","1","");
INSERT INTO penduduk VALUES("150","52","3208174401460002","U. URKIAH","KUNINGAN","1946 -04-01","","2","11","1","2","","3","2","3","1","WIRJA SASMITA","SATINI","1","");
INSERT INTO penduduk VALUES("151","52","3208174606600002","ELI","KUNINGAN","1960 -06-06","","2","11","1","2","","3","2","9","1","WIRYA","IMI","1","");
INSERT INTO penduduk VALUES("152","53","3208174902450002","MAEMUNAH","KUNINGAN","1945 -09-02","","2","11","1","4","","4","4","1","1","MADHOLIL","ARSATI","1","");
INSERT INTO penduduk VALUES("153","54","3208170501610004","UDIA","KUNINGAN","1961 -05-01","","1","11","1","2","","0","5","1","1","SURYADI","ACIH","1","");
INSERT INTO penduduk VALUES("154","54","3208176610630002","ENTIN YUSTINI","KUNINGAN","1963 -26-10","","2","11","1","2","","0","5","3","1","E. DARJONO","M. HALIMAH","1","");
INSERT INTO penduduk VALUES("155","54","3208174510000006","ANGGI SUKMA SINDIA PUTRI","KUNINGAN","2000 -05-10","","2","11","1","1","","1","1","4","1","UDIA","ENTIN YUSTINI","1","");
INSERT INTO penduduk VALUES("156","54","3208171904900003","RIFKY LUTHFI RAMDANI","KUNINGAN","1990 -19-04","","1","11","1","1","","5","3","4","1","UDIA","ENTIN YUSTINI","1","");
INSERT INTO penduduk VALUES("157","55","3208171412590002","DIDI RUHIDI","KUNINGAN","1959 -14-12","","1","11","1","2","","5","4","1","1","SUTIRJA MURKIM","GINI","1","");
INSERT INTO penduduk VALUES("158","55","3208175508660002","ERLIS HARYANI","KUNINGAN","1966 -15-08","","2","11","1","2","","5","2","3","1","RUVENDI","EMAH","1","");
INSERT INTO penduduk VALUES("159","55","3208170206930005","ADI BINA RAMAYUDANA","KUNINGAN","1993 -02-06","","1","11","1","1","","5","6","4","1","DIDI RUHIDI","ERLIS HARYANI","1","");
INSERT INTO penduduk VALUES("160","55","3208170512030007","RIZSKI DARMA RISMAWAN","KUNINGAN","2003 -05-12","","1","11","1","1","","0","3","4","1","DIDI RUHIDI","ERLIS HARYANI","1","");
INSERT INTO penduduk VALUES("161","55","3208172402890002","DENA PURNAWAN","KUNINGAN","1989 -24-02","","1","11","1","1","","5","6","4","1","DIDI RUHIDI","ERLIS HARYANI","1","");
INSERT INTO penduduk VALUES("162","56","3208176007440003","ICIH","KUNINGAN","1944 -20-07","","2","11","1","4","","3","4","1","1","MARHALI","SAERI","1","");
INSERT INTO penduduk VALUES("163","57","3208170112580002","RUSPENDI","KUNINGAN","1958 -01-12","","1","11","1","2","","3","88","1","1","WIKARYA","UKINAH","1","");
INSERT INTO penduduk VALUES("164","57","3208176009600004","ETI KUSTIAH","KUNINGAN","1960 -20-09","","2","11","1","2","","8","65","3","1","WAJUD","UPEN PERMANA","1","");
INSERT INTO penduduk VALUES("165","57","3208170704940002","AAT RISDA PRIATNA","KUNINGAN","1994 -07-04","","1","11","1","1","","4","3","4","1","RUSPENDI","ETI KUSTIAH","1","");
INSERT INTO penduduk VALUES("166","58","3208171502740003","JUMAN","KUNINGAN","1974 -15-02","","1","11","1","2","","3","20","1","1","SURADI","NETRA","1","");
INSERT INTO penduduk VALUES("167","58","3208174801840003","NERTI","CIAMIS","1984 -08-01","","2","11","1","2","","3","2","3","1","JUANA","ETI","1","");
INSERT INTO penduduk VALUES("168","58","3208173101070002","DITO NURDIAT","KUNINGAN","2007 -31-01","","1","11","1","1","","1","1","4","1","JUMAN","NERTI","1","");
INSERT INTO penduduk VALUES("169","58","3208170708130001","AGUS RAMDANI","KUNINGAN","2013 -07-08","","1","11","1","1","","1","1","4","1","JUMAN","NERTI","1","");
INSERT INTO penduduk VALUES("170","58","3208176006510007","NETRA","KUNINGAN","1951 -20-06","","2","11","1","4","","3","20","0","1","WIKARTA","ANANTI","1","");
INSERT INTO penduduk VALUES("171","59","3208174107480247","TINI","KUNINGAN","1938 -01-07","","2","11","1","4","","3","20","1","1","SUMANTA","KUMI","1","");
INSERT INTO penduduk VALUES("172","60","3208170403630002","DARSO","KUNINGAN","1963 -04-03","","1","11","1","2","","3","20","1","1","SARWA","ICAS","1","");
INSERT INTO penduduk VALUES("173","60","3207106210790004","IDAH FARIDAH","CIAMIS","1979 -22-10","","2","11","1","2","","3","2","3","1","AHDI","SOPIAH","1","");
INSERT INTO penduduk VALUES("174","60","3207106708030001","ILA ROYANI","CIAMIS","2003 -27-08","","2","11","1","1","","0","3","4","1","MEMED","IDAH PARIDAH","1","");
INSERT INTO penduduk VALUES("175","60","3208170611960009","SURYANA","KUNINGAN","1996 -06-11","","1","11","1","1","","4","1","4","1","DARSO","NASITI","1","");
INSERT INTO penduduk VALUES("176","60","3208172101140002","DAFA MAULANA","KUNINGAN","2014 -21-01","","1","11","1","1","","1","1","4","1","DARSO","IDAH FARIDAH","1","");
INSERT INTO penduduk VALUES("177","61","3208171504610002","DAMIRI","KUNINGAN","1961 -15-04","","1","11","1","2","","3","9","1","1","ATMAJA","SANTIP","1","");
INSERT INTO penduduk VALUES("178","61","3208175108680004","SUKIMAH","KUNINGAN","1968 -11-08","","2","2","1","2","","3","2","3","1","ANDA","ARNAH","1","");
INSERT INTO penduduk VALUES("179","61","3208175704070005","MILI AMILI","KUNINGAN","2007 -17-04","","2","11","1","1","","0","3","4","1","DAMIRI","SUKIMAH","1","");
INSERT INTO penduduk VALUES("180","61","3208175704070004","MILA AMILA","KUNINGAN","2007 12:12:00-15-04","","2","11","1","1","","0","3","4","1","DAMIRI","SUKIMAH","1","");
INSERT INTO penduduk VALUES("181","61","3208175702980002","YULIA","KUNINGAN","1998 -17-02","","2","11","1","1","","4","88","4","1","DAMIRI","SUKIMAH","1","");
INSERT INTO penduduk VALUES("182","61","3208174110010006","SINTIA","KUNINGAN","2001 12:12:00-01-10","","2","11","1","1","","0","3","4","1","DAMIRI","SUKIMAH","1","");
INSERT INTO penduduk VALUES("183","62","3208171507700008","JUMRI","KUNINGAN","1971 -05-07","","1","11","1","2","","3","20","1","1","SAAD","SAIRAH","1","");
INSERT INTO penduduk VALUES("184","63","3208171104590002","MARJUKI","KUNINGAN","1959 -11-04","","1","11","1","2","","3","88","1","1","MIHANTA","SAPTIAH","1","");
INSERT INTO penduduk VALUES("185","63","3208174509570002","KURNIASIH","KUNINGAN","1957 -05-09","","2","11","1","2","","3","2","3","1","KUSEN","ICIH HARTASIH","1","");
INSERT INTO penduduk VALUES("186","64","3208171103480002","SUNANDI","KUNINGAN","1948 -11-03","","1","11","1","2","","3","9","1","1","SUMITA","SUKIRAH","1","");
INSERT INTO penduduk VALUES("187","64","3208175103550002","ISAH","KUNINGAN","1955 -11-03","","2","11","1","2","","3","2","3","1","SANUSI","NETI","1","");
INSERT INTO penduduk VALUES("188","64","3208170803960004","NANA MARDIANA","KUNINGAN","1996 -08-03","","1","11","1","1","","4","3","4","1","SUNANDI","ISAH","1","");
INSERT INTO penduduk VALUES("189","65","3208170705570002","SUTARMAN","KUNINGAN","1957 -07-05","","1","11","1","2","","4","16","1","1","RUSKAT","SUKI","1","");
INSERT INTO penduduk VALUES("190","65","3208176110650002","OOM RONAH","KUNINGAN","1965 -21-10","","2","11","1","2","","3","2","3","1","TARJA","WITI","1","");
INSERT INTO penduduk VALUES("191","65","3208174911990004","SURYANI","KUNINGAN","1999 -09-11","","2","11","1","1","","3","1","4","1","SUTARMAN","OOM RONAH","1","");
INSERT INTO penduduk VALUES("192","66","3208172303530002","SUKARJO","KUNINGAN","1953 -23-03","","1","11","1","2","","3","88","1","1","SAMSUHNI","RASINA","1","");
INSERT INTO penduduk VALUES("193","66","3208176707610003","UKINI","KUNINGAN","1961 -27-07","","2","11","1","2","","3","2","3","1","SUMARNA","SITA","1","");
INSERT INTO penduduk VALUES("194","67","3208170107670179","ENGKOS KOSWARA","KUNINGAN","1967 -01-07","","1","11","1","2","","3","88","1","1","EMOD","EPON","1","");
INSERT INTO penduduk VALUES("195","67","3208175208720003","IIN HARTINI","KUNINGAN","1972 -12-08","","2","11","1","2","","4","2","3","1","TARHUDI","ATINI","1","");
INSERT INTO penduduk VALUES("196","67","3208174711090004","ISMA NOVIA","KUNINGAN","2009 -07-11","","2","11","1","1","","1","1","4","1","ENGKOS KOSWARA","IIN HARTINI","1","");
INSERT INTO penduduk VALUES("197","68","3208171709530002","TOBING.. A.MA.PD","KUNINGAN","1953 -17-09","","1","11","1","2","","6","4","1","1","SUMINTA","SUKIRAH","1","");
INSERT INTO penduduk VALUES("198","68","3208174305810003","YEYEN ARYINAH","KUNINGAN","1981 -03-05","","2","11","1","2","","3","2","3","1","SAHMIDI","JUNAH","1","");
INSERT INTO penduduk VALUES("199","68","3208176105050001","INE NURYENI","KUNINGAN","2005 -21-05","","2","11","1","1","","1","1","4","1","TOBING","YEYEN ARYINAH","1","");
INSERT INTO penduduk VALUES("200","69","3208171205680002","HANDI","KUNINGAN","1968 -12-05","","1","11","1","2","","3","20","1","1","SUKARDI","UCIH","1","");
INSERT INTO penduduk VALUES("201","69","3208174305730005","MUNAH","KUNINGAN","1973 -03-05","","2","11","1","2","","3","2","3","1","SUWITNO","SITI","1","");
INSERT INTO penduduk VALUES("202","69","3208170906020004","DIDIN MAULUDIN","KUNINGAN","2002 -09-06","","1","11","1","1","","0","3","4","1","HANDI","MUNAH","1","");
INSERT INTO penduduk VALUES("203","69","3208171209940003","ALI RAHMATTULOH","KUNINGAN","1994 -12-09","","1","11","1","1","","4","3","4","1","HANDI","MUNAH","1","");
INSERT INTO penduduk VALUES("204","70","3208174804410002","ACIH","KUNINGAN","1941 -08-04","","2","11","1","2","","3","2","1","1","IRJA SASMITA","-","1","");
INSERT INTO penduduk VALUES("205","71","3208170107260029","WIKARNA","KUNINGAN","1926 -01-07","","1","11","1","2","","3","4","1","1","NATA WIJAYA JASIM","KESTI","1","");
INSERT INTO penduduk VALUES("206","71","3208174107300124","RIMBI","KUNINGAN","1930 -01-07","","2","11","1","2","","3","2","3","1","WANGSA MERTA","ANCI","1","");
INSERT INTO penduduk VALUES("207","72","3208172307700002","UPAY SUPARLAN","KUNINGAN","1970 -23-07","","1","11","1","2","","4","88","1","1","RUVENDI","EMAH","1","");
INSERT INTO penduduk VALUES("208","72","3208176601760004","NANI YUNINGSIH","CIAMIS","1976 -26-01","","2","11","1","2","","3","2","3","1","RUSDIANA","SARI","1","");
INSERT INTO penduduk VALUES("209","72","3208175106960006","DEA SELVIA","KUNINGAN","1996 -11-06","","2","5","1","1","","5","1","4","1","UPAY SUPARLAN","NANI YUNINGSIH","1","");
INSERT INTO penduduk VALUES("210","72","3208171411030001","ALGI FRAN DIO","KUNINGAN","2003 -14-11","","1","11","1","1","","1","1","4","1","UPAY SUPARLAN","NANI YUNINGSIH","1","");
INSERT INTO penduduk VALUES("211","73","3208172512550002","ERNAWAN","KUNINGAN","1955 -25-12","","1","11","1","2","","4","85","1","1","RUVENDI","EMAH","1","");
INSERT INTO penduduk VALUES("212","73","3208175207590001","IIS YULIANI","KUNINGAN","1959 -12-07","","2","11","1","2","","3","2","3","1","JUHARI","ERUS","1","");
INSERT INTO penduduk VALUES("213","73","3208175504990007","STEDILA","KUNINGAN","1999 -15-04","","2","11","1","1","","4","3","4","1","ERNAWAN","IIS YULIANI","1","");
INSERT INTO penduduk VALUES("214","73","3208175206830005","MARLINA","KUNINGAN","1983 -12-06","","2","11","1","1","","4","15","4","1","ERNAWAN","IIS YULIANI","1","");
INSERT INTO penduduk VALUES("215","73","3208176004070004","SEKAR AYU PRAMESTI","KUNINGAN","2007 -20-04","","2","11","1","1","","0","3","4","1","ERNAWAN","IIS YULIANI","1","");
INSERT INTO penduduk VALUES("216","74","3208172305810001","DENI IRAWAN","JAKARTA","1981 -23-05","","1","11","1","2","","5","88","1","1","ABDUL ROHMAN","EHA JULAEHA","1","");
INSERT INTO penduduk VALUES("217","74","3208176811890002","WINDA ERLANA","KUNINGAN","1989 -28-11","","2","11","1","2","","4","2","3","1","UNTUNG","ICIH","1","");
INSERT INTO penduduk VALUES("218","75","3208171602940004","ARIS RISWANTO","KUNINGAN","1992 -16-02","","1","11","1","2","","4","84","1","1","MARJUKI","KURNIASIH","1","");
INSERT INTO penduduk VALUES("219","75","3210036908960043","NISNAWATI","MAJALENGKA","1995 -29-08","","2","11","1","2","","3","2","3","1","DIDI","EEM","1","");
INSERT INTO penduduk VALUES("220","75","3208172309130002","REPIAN ARDIANSYAH","KUNINGAN","2013 -23-09","","1","11","1","1","","1","1","4","1","ARIS RISWANTO","NISNAWATI","1","");
INSERT INTO penduduk VALUES("221","76","3208172711560002","IDIK SADIKIN","KUNINGAN","1956 -27-11","","1","4","1","2","","9","5","1","1","SUMINTA","SUKIRAH","1","");
INSERT INTO penduduk VALUES("222","76","3208176007650001","JUJU JUHINI","KUNINGAN","1965 -20-07","","2","1","1","2","","4","2","3","1","KATMA","RATNINGSIH","1","");
INSERT INTO penduduk VALUES("223","76","3208175901910005","RITA ULFAH","KUNINGAN","1991 -19-01","","2","11","1","3","","8","88","4","1","IDIK SADIKIN","JUJU JUHINI","1","");
INSERT INTO penduduk VALUES("224","76","3208091408100002","RAFASYA GHAISAN RAMDANI","KUNINGAN","2010 -14-08","","1","11","1","1","","1","1","6","1","INDRA","RITA ULFAH","1","");
INSERT INTO penduduk VALUES("225","77","3208172809650004","DIDI SUKMADI","KUNINGAN","1965 -28-09","","1","11","1","2","","5","88","1","1","SURYADI","ACIH","1","");
INSERT INTO penduduk VALUES("226","77","3208176004700006","NUNUNG NURAENI","KUNINGAN","1970 -20-04","","2","11","1","2","","4","2","3","1","RUSMANA","SALMI","1","");
INSERT INTO penduduk VALUES("227","77","3208171310970013","EGA GRIA PURNAMA","KUNINGAN","1997 -13-10","","1","11","1","1","","3","3","4","1","DIDI SUKMADI","NUNUNG NURAENI","1","");
INSERT INTO penduduk VALUES("228","77","3208171912040002","YUAN DISTRALAADE","KUNINGAN","2004 -19-12","","1","11","1","1","","0","3","4","1","DIDI SUKMADI","NUNUNG NURAENI","1","");
INSERT INTO penduduk VALUES("229","78","3208171204580009","JUHARNA","KUNINGAN","1958 -12-04","","1","11","1","2","","3","20","1","1","SANAHDI","-","1","");
INSERT INTO penduduk VALUES("230","78","3208176810720003","ARKECIH","KUNINGAN","1972 -28-10","","2","11","1","2","","3","2","3","1","SADI","ARUM","1","");
INSERT INTO penduduk VALUES("231","78","3208170608990005","TEGUH PRAYOGI","KUNINGAN","1999 -06-08","","1","11","1","1","","3","1","4","1","JUHARNA","ARKECIH","1","");
INSERT INTO penduduk VALUES("232","79","3208172504790001","DADAY","KUNINGAN","1979 -25-04","","1","11","1","2","","5","88","1","1","NURYANA","ELIYANAH","1","");
INSERT INTO penduduk VALUES("233","79","3208176310850002","LISYANI","KUNINGAN","1985 -23-10","","2","11","1","2","","4","2","3","1","ENDARNO","NURHAYATI","1","");
INSERT INTO penduduk VALUES("234","79","3208176303060003","INDRI HANDAYANI","KUNINGAN","2006 -23-03","","2","11","1","1","","1","1","4","1","DADAY","LISYANI","1","");
INSERT INTO penduduk VALUES("235","80","3208170407660003","ADIRI","KUNINGAN","1966 -04-07","","1","11","1","2","","3","20","1","1","TARHUDI","ATINI","1","");
INSERT INTO penduduk VALUES("236","80","3208175004780004","CICIH","KUNINGAN","1978 -10-04","","2","11","1","2","","3","2","3","1","ARMIN","NENTI","1","");
INSERT INTO penduduk VALUES("237","80","3208175107970003","LIA JULIANI","KUNINGAN","1997 -11-07","","2","11","1","1","","4","3","4","1","ADIRI","CICIH","1","");
INSERT INTO penduduk VALUES("238","80","3208172905110001","REKSI MEIZA","KUNINGAN","2011 -29-05","","1","11","1","1","","1","1","4","1","ADIRI","CICIH","1","");
INSERT INTO penduduk VALUES("239","80","3208176507030002","RISKA YULIANDINI","KUNINGAN","2003 -25-07","","2","11","1","1","","0","3","4","1","ADIRI","CICIH","1","");
INSERT INTO penduduk VALUES("240","80","3208174107340172","ATINI","KUNINGAN","1934 -01-07","","2","11","1","4","","3","4","0","1","SUANTA","ARMI","1","");
INSERT INTO penduduk VALUES("241","81","3208171206740006","SUPENDI","JAKARTA","1974 -12-06","","1","11","1","2","","8","88","1","1","TJARMAN","SAIRIH","1","");
INSERT INTO penduduk VALUES("242","81","3208174701690002","CUCU HENDRAYATI","KUNINGAN","1969 -07-01","","2","11","1","2","","5","2","3","1","TUGINO","MAEMUNAH","1","");
INSERT INTO penduduk VALUES("243","81","3208170311900005","NURHIDAYAT","JAKARTA","1990 -03-11","","1","11","1","1","","5","15","4","1","SUPENDI","CUCU HENDRAYATI","1","");
INSERT INTO penduduk VALUES("244","82","3208174107430231","SAIRAH","KUNINGAN","1943 -01-07","","2","11","1","4","","3","2","1","1","NATA JAHIR","UNTE","1","");
INSERT INTO penduduk VALUES("245","83","3208170311860004","INDRA RISMAULANA","KUNINGAN","1986 -03-11","","1","11","1","2","","5","88","1","1","RUSPENDI","ETI KUSTIAH","1","");
INSERT INTO penduduk VALUES("246","83","3208174808880006","IDA SUTARSIH","PANDEGLANG","1988 -08-08","","2","11","1","2","","4","2","3","1","SAHRUDIN","RATNA","1","");
INSERT INTO penduduk VALUES("247","83","3208171108090002","REZA","KUNINGAN","2009 -11-08","","1","11","1","1","","1","1","4","1","INDRA RISMAULANA","IDA SUTARSIH","1","");
INSERT INTO penduduk VALUES("248","84","3208171009860005","NANO EKA LESMANA","KUNINGAN","1986 -10-09","","1","11","1","2","","5","88","1","1","DIDI SUKMADI","NUNUNG NURAENI","1","");
INSERT INTO penduduk VALUES("249","84","3208174512890013","IDAH HAMIDAH","KUNINGAN","1989 -05-12","","2","11","1","2","","4","2","3","1","AHMAD","NINGRUM","1","");
INSERT INTO penduduk VALUES("250","84","3208174309100001","MUTIA RAHMA SACHI","KUNINGAN","2010 -03-09","","2","11","1","1","","1","1","4","1","NANO EKA LESMANA","IDAH HAMIDAH","1","");
INSERT INTO penduduk VALUES("251","85","3208172808570002","UDIN SANUDIN","KUNINGAN","1957 -28-08","","1","11","1","2","","4","88","1","1","WIKARNA","RIMBI","1","");
INSERT INTO penduduk VALUES("252","85","3208176612660002","RANINGSIH","KUNINGAN","1966 -26-12","","2","11","1","2","","3","2","3","1","ZAENAL","NURSIN","1","");
INSERT INTO penduduk VALUES("253","85","3208171010910005","ARIP BUDIMAN","KUNINGAN","1991 -10-10","","1","11","1","1","","0","3","4","1","UDIN SANUDIN","RANINGSIH","1","");
INSERT INTO penduduk VALUES("254","85","3208174207320001","ARINGSIH","KUNINGAN","1932 -02-07","","2","11","1","4","","3","20","9","1","NATA WIJAYA JASIM","KENTI","1","");
INSERT INTO penduduk VALUES("255","86","3208170509850009","BUDI MULYA","KUNINGAN","1985 -05-09","","1","11","1","2","","5","84","1","1","HADI","RUKTI","1","");
INSERT INTO penduduk VALUES("256","86","3208174502860013","SUCILAWATI","KUNINGAN","1986 -05-02","","2","11","1","2","","5","85","3","1","ERNAWAN","YULIANI","1","");
INSERT INTO penduduk VALUES("257","87","3208171311690002","ADE SAEPUDIN","KUNINGAN","1969 -13-11","","1","11","1","2","","3","19","1","1","JUHANA","MIMI","1","");
INSERT INTO penduduk VALUES("258","87","3208174608720006","IDAH ARYANI","KUNINGAN","1972 -20-10","","2","11","1","2","","3","2","3","1","SANAHDI","TASIH","1","");
INSERT INTO penduduk VALUES("259","87","3208176706000005","INGRI DWI RAHAYU","KUNINGAN","2000 -27-06","","2","11","1","1","","3","3","4","1","ADE SAEPUDIN","IDAH ARYANI","1","");
INSERT INTO penduduk VALUES("260","87","3208175810070001","DINDA OKTATIARA","KUNINGAN","2007 -18-10","","2","11","1","1","","0","3","4","1","ADE SAEPUDIN","IDAH ARYANI","1","");
INSERT INTO penduduk VALUES("261","87","3208170108940006","ELVIN AGUSTIAN NUGRAHA","KUNINGAN","1994 -01-08","","1","11","1","1","","5","1","4","1","ADE SAEPUDIN","IDAH ARYANI","1","");
INSERT INTO penduduk VALUES("262","88","3208171504710004","WAWAN SETIAWAN","SUMEDANG","1971 -15-04","","1","11","1","2","","4","88","1","1","AUP","ETIH","1","");
INSERT INTO penduduk VALUES("263","88","3208176606760002","KURSINAH","KUNINGAN","1976 -26-06","","2","11","1","2","","3","2","3","1","AHDI","SARNIT","1","");
INSERT INTO penduduk VALUES("264","88","3208170811970002","ADIP PRIANSAH","KUNINGAN","1997 -08-11","","1","11","1","1","","4","1","4","1","WAWAN SETIAWAN","KURSINAH","1","");
INSERT INTO penduduk VALUES("265","88","3208176001120003","AURA NURHALIPAH","KUNINGAN","2012 -20-01","","2","11","1","1","","1","1","4","1","WAWAN SETIAWAN","KURSINAH","1","");
INSERT INTO penduduk VALUES("266","88","3208175606040001","RISMA AINAL MARYAMAH","KUNINGAN","2004 -16-06","","2","11","1","1","","0","1","4","1","WAWAN SETIAWAN","KURSINAH","1","");
INSERT INTO penduduk VALUES("267","89","3208171608500001","AHDI","KUNINGAN","1950 -16-08","","1","11","1","2","","3","85","1","1","SUHDI","HANI","1","");
INSERT INTO penduduk VALUES("268","89","3208175505570003","SARNIT","KUNINGAN","1957 -15-05","","2","11","1","2","","3","2","3","1","NARYA","URITA","1","");
INSERT INTO penduduk VALUES("269","89","3208170311960004","MOCHAMAD YUNUS","KUNINGAN","1996 -03-11","","1","11","1","1","","3","1","4","1","AHDI","SARNIT","1","");
INSERT INTO penduduk VALUES("270","89","3208175802870003","YUYUNG RUNTIAH","KUNINGAN","1987 -18-02","","2","11","1","2","","3","2","4","1","AHDI","SARNIT","1","");
INSERT INTO penduduk VALUES("271","89","3208170811100004","IGUN LAPATAHIRA","KUNINGAN","2010 -08-11","","1","11","1","1","","1","1","6","1","ENDANG SUNDAYANI","YUYUNG RUNTIAH","1","");
INSERT INTO penduduk VALUES("272","90","3208177112330001","RUMSIAH","KUNINGAN","1933 -31-12","","2","11","1","4","","3","9","1","1","WANGSA KARTANA","ESIH","1","");
INSERT INTO penduduk VALUES("273","91","3208172911670002","RUDIONO","KUNINGAN","1967 -29-11","","1","11","1","2","","3","88","1","1","RUKISMAN","KURNIASIH","1","");
INSERT INTO penduduk VALUES("274","91","3208175306750004","YANI MISYANI","KUNINGAN","1975 -13-06","","2","11","1","2","","5","2","3","1","NORON","SUKIRAH","1","");
INSERT INTO penduduk VALUES("275","91","3208170405090002","DACIEP MEIYANA","KUNINGAN","2009 -04-05","","1","11","1","1","","1","1","4","1","RUDIONO","YANI MISYANI","1","");
INSERT INTO penduduk VALUES("276","91","3208172105040003","NALDA ZUNHADAMA","KUNINGAN","2004 -21-05","","1","11","1","1","","1","1","4","1","RUDIONO","YANI MISYANI","1","");
INSERT INTO penduduk VALUES("277","91","3208172510940003","PIKI REDIYANDI","KUNINGAN","1994 -25-10","","1","11","1","1","","5","3","4","1","RUDIONO","YANI MISYANI","1","");
INSERT INTO penduduk VALUES("278","92","3208175701570002","ROKANAH","KUNINGAN","1957 -17-01","","2","11","1","3","","3","20","1","1","-","HANI","1","");
INSERT INTO penduduk VALUES("279","92","3208174107320080","HANI","KUNINGAN","1932 -01-07","","2","11","1","4","","3","9","0","1","-","-","1","");
INSERT INTO penduduk VALUES("280","93","3208170107370081","ANDA","KUNINGAN","1937 -01-07","","1","11","1","2","","3","9","1","1","CACA","-","1","");
INSERT INTO penduduk VALUES("281","94","3208170802500002","AMIR","KUNINGAN","1950 -08-02","","1","11","1","2","","3","9","1","1","ALWA","SARPA","1","");
INSERT INTO penduduk VALUES("282","94","3208174901700003","ENAH","KUNINGAN","1970 -09-01","","2","11","1","2","","3","2","3","1","-","-","1","");
INSERT INTO penduduk VALUES("283","94","3208170808020009","KURNIADI","KUNINGAN","2002 -08-08","","1","11","1","1","","0","3","4","1","AMIR","ENAH","1","");
INSERT INTO penduduk VALUES("284","95","3208174112390001","SUTINAH","KUNINGAN","1939 -11-02","","2","11","1","4","","3","1","1","1","PANGI","LUCI","1","");
INSERT INTO penduduk VALUES("285","96","3208173012650001","RAISMAN","KUNINGAN","1965 -30-12","","1","11","1","2","","3","88","1","1","SUTARDI","AMI","1","");
INSERT INTO penduduk VALUES("286","96","3208174104690005","NURLINAH","CIAMIS","1969 -01-04","","2","11","1","2","","3","2","3","1","SUPRIADI","RUPI","1","");
INSERT INTO penduduk VALUES("287","96","3208176806020006","SELPIA TRI NURAENI","PEMALANG","2002 -28-06","","2","11","1","1","","0","3","4","1","RAISMAN","NURLINAH","1","");
INSERT INTO penduduk VALUES("288","96","3208174407400002","AMI","KUNINGAN","1940 -04-07","","2","11","1","4","","3","1","0","1","-","-","1","");
INSERT INTO penduduk VALUES("289","97","3208175604630004","TITIN","KUNINGAN","1963 -16-04","","2","11","1","4","","3","2","1","1","KARSI","ANAH","1","");
INSERT INTO penduduk VALUES("290","97","3208170503010003","IBNU MAULANA","KUNINGAN","2001 -05-03","","1","11","1","1","","0","3","4","1","ABDULAH","TITIN","1","");
INSERT INTO penduduk VALUES("291","98","3208171207440002","SUPARMAN","KUNINGAN","1944 -12-07","","1","11","1","2","","3","4","1","1","PARTA","KASMI","1","");
INSERT INTO penduduk VALUES("292","98","3208174301390001","IMI","KUNINGAN","1939 -03-01","","2","11","1","2","","3","2","3","1","RASAN","MARKI","1","");
INSERT INTO penduduk VALUES("293","99","3208170307570002","JUHRO","KUNINGAN","1957 -03-07","","1","11","1","2","","3","8","1","1","SUKARDI","UCIH","1","");
INSERT INTO penduduk VALUES("294","99","3208176011670002","NURAENI","KUNINGAN","1967 -20-11","","2","11","1","2","","3","2","3","1","SUKARMA","ITI HARYATI","1","");
INSERT INTO penduduk VALUES("295","99","3208173009840003","ADE KURNIAWAN","KUNINGAN","1984 -30-09","","1","11","1","1","","5","15","4","1","JUHRO","NURAENI","1","");
INSERT INTO penduduk VALUES("296","99","3208171310950009","DONI PRIATNO","KUNINGAN","1995 -13-10","","1","11","1","1","","0","3","4","1","JUHRO","NURAENI","1","");
INSERT INTO penduduk VALUES("297","99","3208172006080001","DANIS NUGRAHA","KUNINGAN","2008 -20-06","","1","11","1","1","","1","1","4","1","JUHRO","NURAENI","1","");
INSERT INTO penduduk VALUES("298","100","3208175911500002","NANI SUKNI","KUNINGAN","1950 -19-11","","2","11","1","4","","3","20","1","1","KARAMA JUSAN","RUWI","1","");
INSERT INTO penduduk VALUES("299","100","3208174812970004","ZILA PAZILAH","KUNINGAN","1997 -08-12","","2","11","1","1","","3","1","6","1","IWAN RIDWAN","ENTIN SUTINI","1","");
INSERT INTO penduduk VALUES("300","101","3208172006420004","SUPATNA","KUNINGAN","1942 -20-06","","1","11","1","2","","3","20","1","1","KASJI","ATI","1","");
INSERT INTO penduduk VALUES("301","101","3208174107590322","MISNAH","KUNINGAN","1959 -01-07","","2","11","1","2","","3","2","3","1","SUNIRTA","ASTI","1","");
INSERT INTO penduduk VALUES("302","101","3208170107830442","SARTONO","KUNINGAN","1983 -01-07","","1","11","1","2","","3","88","6","1","KARSI SVTISNA","NURHAYATI","1","");
INSERT INTO penduduk VALUES("303","102","3208171605670003","MULYANA","KUNINGAN","1967 -16-05","","1","11","1","2","","3","9","1","1","SUPATNA","DARNIH","1","");
INSERT INTO penduduk VALUES("304","102","3208174503730003","KESTI","KUNINGAN","1973 -05-03","","2","11","1","2","","3","2","3","1","RANTA","TASWI","1","");
INSERT INTO penduduk VALUES("305","102","3208170510920002","HERI KISWANTO","KUNINGAN","1992 -05-10","","1","11","1","1","","3","88","4","1","MULYANA","KESTI","1","");
INSERT INTO penduduk VALUES("306","102","3208171310030001","IRWAN HIDAYAT","KUNINGAN","2003 -13-10","","1","11","1","1","","1","1","4","1","MULYANA","KESTI","1","");
INSERT INTO penduduk VALUES("307","103","3208171204560003","MURKIM","KUNINGAN","1956 -12-04","","1","11","1","2","","3","19","1","1","SUARMA","UNAH","1","");
INSERT INTO penduduk VALUES("308","103","3208176407600001","SUNIRAH","KUNINGAN","1960 -24-07","","2","11","1","2","","3","2","3","1","MEDI","ENOH","1","");
INSERT INTO penduduk VALUES("309","103","3208175904930003","MULYANI","KUNINGAN","1993 -19-04","","2","11","1","1","","3","1","4","1","MURKIM","SUNIRAH","1","");
INSERT INTO penduduk VALUES("310","104","3208171404610001","U. SUHYADI","KUNINGAN","1961 -14-04","","1","11","1","2","","4","85","1","1","NARYA","URITA","1","");
INSERT INTO penduduk VALUES("311","104","3208174810630003","SURTIAH","KUNINGAN","1963 -08-10","","2","11","1","2","","3","2","3","1","SUPARYA","SUKILAH","1","");
INSERT INTO penduduk VALUES("312","105","3208174107330203","SAPTIAH","KUNINGAN","1933 -01-07","","2","11","1","4","","3","9","1","1","KARMA ","RUWI","1","");
INSERT INTO penduduk VALUES("313","106","3208170909580003","SUHERLAN","KUNINGAN","1958 -09-09","","1","11","1","2","","3","84","1","1","UMINTA","DARSIH","1","");
INSERT INTO penduduk VALUES("314","106","3208176010670001","UMIN","KUNINGAN","1967 -20-10","","2","11","1","2","","3","2","3","1","UNADI","ANIAH","1","");
INSERT INTO penduduk VALUES("315","107","3208170705790005","WARTONO","KUNINGAN","1979 -07-05","","1","11","1","2","","3","88","1","1","SANAHDI","JATMI","1","");
INSERT INTO penduduk VALUES("316","107","3208175104900009","MUMUN MULYATI","KUNINGAN","1990 -11-04","","2","11","1","2","","3","2","3","1","MURKIM","SUNIRAH","1","");
INSERT INTO penduduk VALUES("317","107","3208175906110001","SULIS NURJANAH","KUNINGAN","2011 -19-06","","2","11","1","1","","1","1","4","1","WARTONO","MUMUN MULYATI","1","");
INSERT INTO penduduk VALUES("318","108","3208171708890005","AGUS HERYANA","KUNINGAN","1989 -17-08","","1","11","1","2","","4","15","1","1","SUHERLAN","UMIN","1","");
INSERT INTO penduduk VALUES("319","109","3208171804860004","KUSDIMAN","KUNINGAN","1986 -18-04","","1","11","1","1","","3","19","11","1","NARWA","SUNIAH","1","");
INSERT INTO penduduk VALUES("320","110","3208172807870003","SUDIONO","KUNINGAN","1987 -28-07","","1","11","1","2","","3","88","1","1","ENGKOS","ADMI","1","");
INSERT INTO penduduk VALUES("321","110","3208174903890009","ETI RUSMIATI","KUNINGAN","1989 -09-03","","2","11","1","2","","3","2","3","1","SUDINYA","RUNAH","1","");
INSERT INTO penduduk VALUES("322","110","3208174207100002","LENA JULIA","KUNINGAN","2010 -02-07","","2","11","1","1","","1","1","4","1","SUDIONO","ETI RUSMIATI","1","");
INSERT INTO penduduk VALUES("323","111","3208172207800002","NANDI","KUNINGAN","1980 -22-07","","1","11","1","2","","3","88","1","1","ANDA","ARNAH","1","");
INSERT INTO penduduk VALUES("324","111","3208174101880018","SARTINI","KUNINGAN","1988 -01-01","","2","11","1","2","","3","2","3","1","DARYONO","SOHEDAH","1","");
INSERT INTO penduduk VALUES("325","111","3208175108110001","EVA DEDEH NURHAYATI","KUNINGAN","2011 -11-08","","2","11","1","1","","1","1","4","1","NANDI","SARTINI","1","");
INSERT INTO penduduk VALUES("326","112","3208170209830002","SURDI RUSDIANA","CIAMIS","1983 -02-09","","1","11","1","2","","4","20","1","1","EWO","ISAH","1","");
INSERT INTO penduduk VALUES("327","112","3208174210860005","LILIS LIESNAWATHYE","KUNINGAN","1986 -02-10","","2","11","1","2","","4","2","3","1","U. SUHYADI","SURTI`AH","1","");
INSERT INTO penduduk VALUES("328","112","3208172806080002","RHEGIES NAZIEF SULISTIO","KUNINGAN","2008 -28-06","","1","11","1","1","","1","1","4","1","SURDI RUSDIANA","LILIS LIESNAWATHYE","1","");
INSERT INTO penduduk VALUES("329","112","3208176205130001","RHEINA MEIDILLA","KUNINGAN","2013 -22-05","","2","11","1","1","","1","1","4","1","SURDI RUSDIANA","LILIS LIESNAWATHYE","1","");
INSERT INTO penduduk VALUES("330","113","3277014711720030","TITIN HASANAH","GARUT","1972 -07-11","","2","11","1","2","","3","2","1","1","ODIN","IIS","1","");
INSERT INTO penduduk VALUES("331","113","3277012104040014","IPAN SUPRIYATNA","CIMAHI","2004 -21-04","","1","11","1","1","","0","3","4","1","HADIN","TITIN HASANAH","1","");
INSERT INTO penduduk VALUES("332","113","3277014311010031","LIA HERLIANA","BANDUNG","2001 -03-11","","2","11","1","1","","0","3","4","1","HADIN","TITIN HASANAH","1","");
INSERT INTO penduduk VALUES("333","114","3208171506700011","RUDI RASPATI","KUNINGAN","1970 -15-06","","1","11","1","2","","4","88","1","1","SUDARJA","ENI","1","");
INSERT INTO penduduk VALUES("334","114","3208175905820003","RITA RUDIAWATI","KUNINGAN","1982 -19-05","","2","11","1","3","","5","1","4","1","SUDARJA","ENI","1","");
INSERT INTO penduduk VALUES("335","114","3208170210070004","ABIL AKSI LAKONDA","KUNINGAN","2007 -02-10","","1","11","1","1","","1","1","6","1","TARSIDI","RITA RUDIAWATI","1","");
INSERT INTO penduduk VALUES("336","115","3208172807640001","SUBANDI","KUNINGAN","1964 -28-07","","1","11","1","2","","3","20","1","1","DARYONO","SITI","1","");
INSERT INTO penduduk VALUES("337","115","3208176805790001","MIMIN","KUNINGAN","1979 -28-05","","2","11","1","2","","3","2","3","1","SUHYANA","ANAH","1","");
INSERT INTO penduduk VALUES("338","115","3208172812100001","AGUNG","KUNINGAN","2010 -28-12","","1","11","1","1","","1","1","4","1","SUBANDI","MIMIN","1","");
INSERT INTO penduduk VALUES("339","115","3208170107020205","TRIANA","KUNINGAN","2002 -01-07","","1","11","1","1","","0","1","4","1","SUBANDI","MIMIN","1","");
INSERT INTO penduduk VALUES("340","115","3208174107540188","ANAH","KUNINGAN","1954 -01-07","","2","11","1","4","","3","20","8","1","SANUKRI","EMI","1","");
INSERT INTO penduduk VALUES("341","116","3207101906870002","HENDRA CAHYANA","CIAMIS","1988 -20-08","","1","11","1","2","","4","88","1","1","SARTONO","SUKIRAH","1","");
INSERT INTO penduduk VALUES("342","116","3208175111940006","NOVI SUPRIHATIN","KUNINGAN","1994 -11-11","","2","11","1","2","","3","2","3","1","LILI SUHERLI","ENTIN SUNTINI","1","");
INSERT INTO penduduk VALUES("343","116","3208177010130003","AMIRA OKTAVIANDRA","KUNINGAN","2013 -30-10","","2","11","1","1","","1","1","4","1","HENDRA CAHYANA","NOVI SUPRIHATIN","1","");
INSERT INTO penduduk VALUES("344","117","3208170708450001","NARWA","KUNINGAN","1945 -07-08","","1","11","1","2","","3","20","1","1","MURNASAN","KATMI","1","");
INSERT INTO penduduk VALUES("345","117","3208174107540195","SUNIAH","KUNINGAN","1954 -01-07","","2","11","1","2","","3","2","3","1","KARNUSI","RUMSIAH","1","");
INSERT INTO penduduk VALUES("346","117","3208170508980014","AGUSTIAN","KUNINGAN","1998 -05-08","","1","11","1","1","","4","1","6","1","AANG MULYA HENDRAWAN","ENAH SUKAENAH","1","");
INSERT INTO penduduk VALUES("347","118","3208175503260001","ANIS","KUNINGAN","1926 -15-03","","2","11","1","4","","3","4","1","1","JAMIN","ROYATI","1","");
INSERT INTO penduduk VALUES("348","119","3208171601730003","DADI SETIADI","KUNINGAN","1973 -16-01","","1","11","1","2","","3","9","1","1","SUTARMAN","KUSMI","1","");
INSERT INTO penduduk VALUES("349","119","3208175304730004","KURNI","KUNINGAN","1973 -13-04","","2","11","1","2","","3","2","3","1","DARYONO","SITI","1","");
INSERT INTO penduduk VALUES("350","119","3208172805970002","ADE RIANA","KUNINGAN","1997 -28-05","","1","11","1","1","","0","19","4","1","DADI SETIADI","KURNI","1","");
INSERT INTO penduduk VALUES("351","120","3208171203530002","EMAN","KUNINGAN","1953 -12-03","","1","11","1","2","","3","85","1","1","TARHOMI","MINAH","1","");
INSERT INTO penduduk VALUES("352","120","3208174407520002","ILOH","KUNINGAN","1952 -04-07","","2","4","1","2","","3","2","3","1","...---","...---","1","");
INSERT INTO penduduk VALUES("353","120","3208176012640001","NASIAH","KUNINGAN","1964 -20-12","","2","11","1","2","","3","2","9","1","ARWA","AYI","1","");
INSERT INTO penduduk VALUES("354","121","3208170204400003","RUSADI","KUNINGAN","1940 -02-04","","1","11","1","2","","3","20","1","1","JAYA ABDUL","AWIT","1","");
INSERT INTO penduduk VALUES("355","121","3208174803500004","SARI","KUNINGAN","1950 -08-03","","2","11","1","2","","3","2","3","1","WARIA ISKAM","JUSIH","1","");
INSERT INTO penduduk VALUES("356","121","3208172603840008","SUDARNA","KUNINGAN","1984 -26-03","","1","11","1","2","","3","88","4","1","RUSADI","SARI","1","");
INSERT INTO penduduk VALUES("357","122","3208171306670002","SAMUD","KUNINGAN","1967 -13-06","","1","11","1","2","","3","20","1","1","RUSADI","SARI","1","");
INSERT INTO penduduk VALUES("358","122","3208174107690228","UMSIH","CIAMIS","1969 -01-07","","2","11","1","2","","3","2","3","1","SUPARMAN","RUNAH","1","");
INSERT INTO penduduk VALUES("359","122","3208170509050001","DIDI SAHDI","KUNINGAN","2005 -05-09","","1","11","1","1","","1","1","4","1","SAMUD","UMSIH","1","");
INSERT INTO penduduk VALUES("360","123","3208171506270002","SAMSURI","KUNINGAN","1927 -15-06","","1","11","1","2","","3","20","1","1","SUMANTA","KUMI","1","");
INSERT INTO penduduk VALUES("361","123","3208174401400002","JUNI","KUNINGAN","1940 -04-01","","2","11","1","2","","3","9","3","1","NAJA","ANIAH","1","");
INSERT INTO penduduk VALUES("362","124","3208174211420003","ANTEN","KUNINGAN","1942 -02-11","","2","11","1","4","","3","9","1","1","SUKARTA","JUHNI","1","");
INSERT INTO penduduk VALUES("363","125","3208172604580002","WAHA","KUNINGAN","1958 -26-04","","1","11","1","2","","3","88","1","1","TARHOMI","MINAH","1","");
INSERT INTO penduduk VALUES("364","125","3208175406690002","EROS","KUNINGAN","1969 -14-06","","2","11","1","2","","3","2","3","1","SUTARDI","AMI","1","");
INSERT INTO penduduk VALUES("365","125","3208175604960001","NUNUNG NURJANAH","KUNINGAN","1996 -16-04","","2","11","1","1","","4","3","4","1","WAHA","EROS","1","");
INSERT INTO penduduk VALUES("366","125","3208174403860006","PIPING SUPINI","KUNINGAN","1986 -04-03","","2","11","1","1","","3","1","4","1","WAHA","EROS","1","");
INSERT INTO penduduk VALUES("367","126","3208171506380002","KARNIWA","KUNINGAN","1938 -15-06","","1","11","1","2","","3","20","1","1","WARIA ISKAM","JUSIH","1","");
INSERT INTO penduduk VALUES("368","126","3208175203430003","NARSIH","KUNINGAN","1943 -12-03","","2","11","1","2","","3","2","3","1","-","-","1","");
INSERT INTO penduduk VALUES("369","126","3208175405650004","SANTI","KUNINGAN","1965 -14-05","","2","11","1","3","","3","2","4","1","KARNIWA","NARSIH","1","");
INSERT INTO penduduk VALUES("370","127","3208175502550005","ANING","KUNINGAN","1955 -15-02","","2","11","1","4","","3","2","1","1","TARJA","AWITI","1","");
INSERT INTO penduduk VALUES("371","128","3208170101700014","SUHENDAR","KUNINGAN","1970 -01-01","","1","11","1","2","","3","81","1","1","SUHARNA","MISNAH","1","");
INSERT INTO penduduk VALUES("372","128","3208175606790005","EROS ROSIDA","KUNINGAN","1979 -16-06","","2","11","1","2","","4","2","3","1","ESO","KARPIS","1","");
INSERT INTO penduduk VALUES("373","128","3208175112060004","DIAPA","KUNINGAN","2006 -11-12","","2","11","1","1","","0","3","4","1","SUHENDAR","EROS ROSIDA","1","");
INSERT INTO penduduk VALUES("374","128","3208170604130002","AZAM AFRIANSYAH","KUNINGAN","2013 -06-04","","1","11","1","1","","1","1","4","1","SUHENDAR","EROS ROSIDA","1","");
INSERT INTO penduduk VALUES("375","129","3208171203480004","SAHRUM RUSMANA","KUNINGAN","1948 -12-03","","1","11","1","2","","3","20","1","1","NARYA","URITA","1","");
INSERT INTO penduduk VALUES("376","129","3208174710560003","ONAH","KUNINGAN","1956 -07-10","","2","11","1","2","","3","2","3","1","WIHARMA","URINAH","1","");
INSERT INTO penduduk VALUES("377","130","3208172602620002","SAMSU","KUNINGAN","1962 -26-02","","1","11","1","2","","3","9","1","1","WIHARDI","ANIS","1","");
INSERT INTO penduduk VALUES("378","130","3208175706710003","IRUS","KUNINGAN","1971 -17-06","","2","11","1","2","","4","2","3","1","SUNARTA","SASIH","1","");
INSERT INTO penduduk VALUES("379","130","3208176306990003","NIA","KUNINGAN","1999 -23-06","","2","11","1","1","","4","3","4","1","SAMSU","IRUS","1","");
INSERT INTO penduduk VALUES("380","130","3208175401260001","ANIS","KUNINGAN","1926 -14-01","","2","11","1","1","","3","1","0","1","-","-","1","");
INSERT INTO penduduk VALUES("381","131","3208171204710003","YANTO","KUNINGAN","1971 -12-04","","1","11","1","2","","4","88","1","1","ILIN","EDAH","1","");
INSERT INTO penduduk VALUES("382","131","3208177008710002","ANERSIH","MAJALENGKA","1971 -30-08","","2","11","1","2","","5","2","3","1","MIHARNA","ATMI","1","");
INSERT INTO penduduk VALUES("383","131","3208176004020004","ELA SABELA","KUNINGAN","2002 -20-04","","2","11","1","1","","1","1","4","1","YANTO","ANERSIH","1","");
INSERT INTO penduduk VALUES("384","131","3208171402950004","ANTON GUMILAR","KUNINGAN","1995 -14-02","","1","11","1","1","","0","3","4","1","YANTO","ANERSIH","1","");
INSERT INTO penduduk VALUES("385","131","3208176006350006","ATMI","KUNINGAN","1935 -20-06","","2","11","1","4","","1","1","8","1","SUANTA","ARMI","1","");
INSERT INTO penduduk VALUES("386","132","3208171003620005","TONI","KUNINGAN","1962 -10-03","","1","11","1","2","","3","88","1","1","TARMIDI","MURSARI","1","");
INSERT INTO penduduk VALUES("387","132","3208174612740003","TRISMIATI","KEDIRI","1974 -06-12","","2","11","1","2","","4","2","3","1","SUKARNO","GINAH","1","");
INSERT INTO penduduk VALUES("388","132","3208172901080001","CA RAKA WIJAYA","KUNINGAN","2008 -29-01","","1","11","1","1","","1","1","4","1","TONI","TRISMIATI","1","");
INSERT INTO penduduk VALUES("389","132","3208172901080002","RIKO KUSUMAH","KUNINGAN","2008 -29-01","","1","11","1","1","","1","1","4","1","TONI","TRISMIATI","1","");
INSERT INTO penduduk VALUES("390","132","3208175712870003","DESI NURIA","KUNINGAN","1987 -17-12","","2","11","1","1","","5","3","4","1","TONI","YAYAH","1","");
INSERT INTO penduduk VALUES("391","132","3208171601990004","RIKI ARDILAP","KUNINGAN","1999 -16-01","","1","11","1","1","","0","3","4","1","TONI","TRISMIATI","1","");
INSERT INTO penduduk VALUES("392","133","3208177112280005","MURSARI","KUNINGAN","1928 -31-12","","2","11","1","4","","3","4","1","1","PARMA DIRAKSA","TAYU","1","");
INSERT INTO penduduk VALUES("393","134","3208170202330002","SANTANI","KUNINGAN","1933 -02-02","","1","2","1","2","","3","20","1","1","SUARTA BANA","DIAS","1","");
INSERT INTO penduduk VALUES("394","134","3208175503430004","ARKICIH","KUNINGAN","1943 -15-03","","2","11","1","2","","3","20","3","1","SUHDI","HANI","1","");
INSERT INTO penduduk VALUES("395","134","3208175001740003","RUNI","KUNINGAN","1974 -10-01","","2","2","1","1","","3","88","4","1","SANTANI","ARKICIH","1","");
INSERT INTO penduduk VALUES("396","135","3208172602680002","SANDI .","KUNINGAN","1968 -26-02","","1","11","1","2","","3","9","1","1","NARYA","URITA","1","");
INSERT INTO penduduk VALUES("397","135","3208174704690003","SAONAH","KUNINGAN","1969 -07-04","","2","11","1","2","","3","2","3","1","ASKA","SUTI","1","");
INSERT INTO penduduk VALUES("398","135","3208171206220002","NARYA","KUNINGAN","1922 -12-06","","1","11","1","4","","3","1","0","1","WARIA ASKAM","JUSIH","1","");
INSERT INTO penduduk VALUES("399","136","3208171003660007","ASIKIN","KUNINGAN","1966 -10-03","","1","11","1","2","","3","9","1","1","SUYATNO","ANAH","1","");
INSERT INTO penduduk VALUES("400","136","3208175807750001","SITI NURAENI","KUNINGAN","1975 -18-07","","2","11","1","2","","3","2","3","1","NURDIN","RASNAH","1","");
INSERT INTO penduduk VALUES("401","136","3208176508100003","RIRIN YUNITA","KUNINGAN","2010 -25-08","","2","11","1","1","","1","1","4","1","ASIKIN","SITI NURAENI","1","");
INSERT INTO penduduk VALUES("402","136","3208172110020003","ADIANTO","KUNINGAN","2002 -21-10","","1","11","1","1","","0","3","4","1","ASIKIN","SITI NURAENI","1","");
INSERT INTO penduduk VALUES("403","137","3208171101670002","SAHRO","KUNINGAN","1967 -11-01","","1","11","1","2","","3","9","1","1","SUTARNA","ARSIH","1","");
INSERT INTO penduduk VALUES("404","137","3208174707790004","AAH SAJAAH","MAJALENGKA","1979 -07-07","","2","11","1","2","","4","2","3","1","PIDIN","ILOH","1","");
INSERT INTO penduduk VALUES("405","137","3208171909990001","DIDING S","KUNINGAN","1999 -19-09","","1","11","1","1","","3","1","4","1","SAHRO","AAH SAJAAH","1","");
INSERT INTO penduduk VALUES("406","137","3208170706050002","NURSADI","KUNINGAN","2005 -07-06","","1","11","1","1","","0","3","4","1","SAHRO","AAH SAJAAH","1","");
INSERT INTO penduduk VALUES("407","138","3208171406630001","SUHERMAN","KUNINGAN","1963 -14-06","","1","11","1","2","","3","20","1","1","RAHWAN","JAMI","1","");
INSERT INTO penduduk VALUES("408","138","3208175203670003","DARSIAH","KUNINGAN","1967 -12-03","","2","11","1","2","","3","2","3","1","SANTANI","ARKICIH","1","");
INSERT INTO penduduk VALUES("409","138","3208171810940004","WARNO","KUNINGAN","1994 -18-10","","1","11","1","1","","3","88","4","1","SUHERMAN","DARSIAH","1","");
INSERT INTO penduduk VALUES("410","139","3208171504540002","SARJA","KUNINGAN","1954 -15-04","","1","11","1","2","","3","9","1","1","JUNINTA","IMOH","1","");
INSERT INTO penduduk VALUES("411","139","3208175202570002","SARTINI","KUNINGAN","1957 -12-02","","2","11","1","2","","3","2","3","1","TARHOMI","MINAH","1","");
INSERT INTO penduduk VALUES("412","140","3208171111780003","ADANG","KUNINGAN","1978 -11-11","","1","11","1","2","","3","88","1","1","SARKIM","KASNAH","1","");
INSERT INTO penduduk VALUES("413","140","3208174808870005","UPEN","KUNINGAN","1987 -08-08","","2","11","1","2","","3","2","3","1","SUYATNO","ANAH","1","");
INSERT INTO penduduk VALUES("414","140","3208171210020006","DEPRI","KUNINGAN","2002 -12-10","","1","11","1","1","","0","3","4","1","ADANG","UPEN","1","");
INSERT INTO penduduk VALUES("415","140","3208173107110001","RAMDANI","KUNINGAN","2011 -31-07","","1","11","1","1","","1","1","4","1","ADANG","UPEN","1","");
INSERT INTO penduduk VALUES("416","141","3208172608720001","AHLAN SURAHLAN","KUNINGAN","1972 -20-08","","1","11","1","2","","3","20","1","1","TARHUDIN","ASKINAH","1","");
INSERT INTO penduduk VALUES("417","141","3208176106740002","CICIH","KUNINGAN","1974 -21-06","","2","11","1","2","","3","2","3","1","WIHANDI","REMI","1","");
INSERT INTO penduduk VALUES("418","141","3208173112140002","WILDAN FADILAH","KUNINGAN","2014 02:00:00-31-12","","1","11","1","1","","1","1","4","1","AHLAN SURAHLAN","CICIH","1","");
INSERT INTO penduduk VALUES("419","141","3208171304990001","ASEP","KUNINGAN","1999 -13-04","","1","11","1","1","","4","1","4","1","AHLAN SURAHLAN","CICIH","1","");
INSERT INTO penduduk VALUES("420","142","3208171405540003","ESO","KUNINGAN","1954 -14-05","","1","11","1","2","","3","88","1","1","NARYA","URITA","1","");
INSERT INTO penduduk VALUES("421","142","3208175806620001","KARPIS","KUNINGAN","1962 -18-06","","2","11","1","2","","3","2","3","1","SUKARJA","UNAN","1","");
INSERT INTO penduduk VALUES("422","143","3208174803950003","AYU NOVITA SARI","KUNINGAN","1995 -08-03","","2","11","1","1","","4","15","4","1","AHMAD DAYIT","ONIH","1","");
INSERT INTO penduduk VALUES("423","144","3208171103650004","SUKARMIN","KUNINGAN","1965 -23-12","","1","11","1","2","","3","20","1","1","SANTANI","ARKICIH","1","");
INSERT INTO penduduk VALUES("424","144","3208170208950001","ANDRES MAULANA","KUNINGAN","1995 08:00:00-01-08","","1","11","1","1","","4","19","4","1","SUKARMIN","ANI SUMARNI","1","");
INSERT INTO penduduk VALUES("425","145","3208176101910002","SUSAN KARLINA","KUNINGAN","1991 -21-01","","2","11","1","2","","4","2","1","1","SUKARMIN","ANI SUMARNI","1","");
INSERT INTO penduduk VALUES("426","146","3208171401610002","SARKIM","KUNINGAN","1961 -14-01","","1","11","1","2","","3","9","1","1","MARHALI","SAERI","1","");
INSERT INTO penduduk VALUES("427","146","3208174203660002","SARTINAH","KUNINGAN","1966 -02-03","","2","11","1","2","","1","2","3","1","SUHANI","NAPTI","1","");
INSERT INTO penduduk VALUES("428","146","3208172101850006","SUHERLAN","KUNINGAN","1985 -21-01","","1","11","1","1","","1","88","4","1","SARKIM","SARTINAH","1","");
INSERT INTO penduduk VALUES("429","147","3208172601820002","ADANG PRAYOGA","KUNINGAN","1982 -26-01","","1","11","1","2","","3","9","1","1","SARKIM","SARTINAH","1","");
INSERT INTO penduduk VALUES("430","147","3208176607870001","RINA","KUNINGAN","1987 -26-07","","2","11","1","2","","3","2","3","1","SUHARNA","EMAH","1","");
INSERT INTO penduduk VALUES("431","147","3208176810080001","YULIANI OKTAFIA","KUNINGAN","2008 -28-10","","2","11","1","1","","1","1","4","1","ADANG PRAYOGA","RINA","1","");
INSERT INTO penduduk VALUES("432","148","3208171101860002","NDOY ISKANDAR","KUNINGAN","1986 -11-01","","1","11","1","2","","3","84","1","1","SUHERMAN","DARSIAH","1","");
INSERT INTO penduduk VALUES("433","148","3208174302880008","EEM HERMAWATI","KUNINGAN","1988 -03-02","","2","11","1","2","","4","2","3","1","EMAN HERMAWAN","ETI NURHAYATI","1","");
INSERT INTO penduduk VALUES("434","148","3208172307090001","REZKI ANPELADWI KUSUMAH","KUNINGAN","2009 -23-07","","1","11","1","1","","1","1","4","1","NDOY ISKANDAR","EEM HERMAWATI","1","");
INSERT INTO penduduk VALUES("435","149","3208170107440158","SUYATNO","KUNINGAN","1944 -01-07","","1","11","1","2","","3","20","1","1","ATMAJA","ATNI","1","");
INSERT INTO penduduk VALUES("436","149","3208175909530001","ANAH","KUNINGAN","1953 -19-09","","2","11","1","2","","3","2","3","1","DANA","RUKNI","1","");
INSERT INTO penduduk VALUES("437","150","3208171010750004","EBO RUKBAEPI","KUNINGAN","1975 -10-10","","1","11","1","2","","3","88","1","1","JUNA","SITI","1","");
INSERT INTO penduduk VALUES("438","150","3208174302860001","ELIS","CIAMIS","1986 -03-02","","2","11","1","2","","4","2","3","1","SUHANA","NURYATI","1","");
INSERT INTO penduduk VALUES("439","150","3208174508080002","DEBI YONA AGUSTIANA","KUNINGAN","2008 -05-08","","2","11","1","1","","1","1","4","1","EBO RUKBAEPI","ELIS","1","");
INSERT INTO penduduk VALUES("440","151","3208171404440005","JUNA","KUNINGAN","1944 -14-04","","1","11","1","2","","3","9","1","1","WARIA ISKAM","JUSIH","1","");
INSERT INTO penduduk VALUES("441","151","3208174607470002","SITI","KUNINGAN","1947 -06-07","","2","11","1","2","","3","2","3","1","ATMA SAJAR","SUKINI","1","");
INSERT INTO penduduk VALUES("442","152","3208177112510002","RATNA","KUNINGAN","1951 -31-12","","2","11","1","4","","3","4","1","1","UMINTA","DARSIH","1","");
INSERT INTO penduduk VALUES("443","153","3208172003380005","SUTARNA","KUNINGAN","1938 -20-03","","1","11","1","2","","3","9","1","1","SURMAWI","MARSIH","1","");
INSERT INTO penduduk VALUES("444","153","3208175502950002","ARSIH","KUNINGAN","1995 -15-02","","2","11","1","2","","3","2","3","1","JUNINTA","KATI","1","");
INSERT INTO penduduk VALUES("445","154","3208175001700002","WINAH","KUNINGAN","1970 -10-01","","2","11","1","3","","3","2","1","1","SANTANI","ARKICIH","1","");
INSERT INTO penduduk VALUES("446","154","3208170206990001","PERI SUTARA","KUNINGAN","1999 -02-06","","1","11","1","1","","0","1","4","1","MAMAN","WINAH","1","");
INSERT INTO penduduk VALUES("447","154","3208170810920001","YANO","KUNINGAN","1992 -08-10","","1","11","1","1","","3","23","4","1","YANO","WINAH","1","");
INSERT INTO penduduk VALUES("448","155","3208171010770007","SABUR","KUNINGAN","1977 -10-10","","1","11","1","2","","3","88","1","1","JUNA","SITI","1","");
INSERT INTO penduduk VALUES("449","155","3208175806910003","NIA YUSNIA","KUNINGAN","1991 -18-06","","2","11","1","2","","3","2","3","1","SUDIN","SARI","1","");
INSERT INTO penduduk VALUES("450","155","3208171407090001","M. BRYAN PRATAMA","KUNINGAN","2009 -14-07","","1","11","1","1","","1","1","4","1","SABUR","NIA YUSNIA","1","");
INSERT INTO penduduk VALUES("451","156","3208171806590001","SUTARBA","KUNINGAN","1959 -18-06","","1","11","1","2","","3","88","1","1","WIRATA","JUMATI","1","");
INSERT INTO penduduk VALUES("452","156","3208175010530005","UMIN","KUNINGAN","1953 -10-10","","2","11","1","2","","3","2","3","1","SUNARTA","KARMINI","1","");
INSERT INTO penduduk VALUES("453","157","3208170304520001","TAR OYO","KUNINGAN","1952 -03-04","","1","1","1","2","","4","88","1","1","TARMIDI","MURSARI","1","");
INSERT INTO penduduk VALUES("454","157","3208176304560001","TJUNANIH","KUNINGAN","1956 -23-04","","2","11","1","2","","3","2","3","1","TARHUDI","ATINI","1","");
INSERT INTO penduduk VALUES("455","157","3208170410790001","AAN HIDAYAT","KUNINGAN","1979 -04-10","","1","11","1","1","","8","18","4","1","TAR OYO","MUSLIHAT","1","");
INSERT INTO penduduk VALUES("456","157","3208171507830009","TOTONG ROHIMAT","KUNINGAN","1983 -15-07","","1","11","1","1","","8","15","4","1","TAR OYO","MUSLIHAT","1","");
INSERT INTO penduduk VALUES("457","157","3208175702900001","ATIK NURTIKA","NGANJUK","1990 -17-02","","2","11","1","1","","5","3","4","1","TAR OYO","MUSLIHAT","1","");
INSERT INTO penduduk VALUES("458","158","3213240107531477","ROSID","CIAMIS ","1953 -01-07","","1","11","1","2","","3","88","1","1","SAMSURI","JUNI","1","");
INSERT INTO penduduk VALUES("459","158","3208174506640187","N. NURYANAH","CIAMIS","1964 -05-06","","2","11","1","2","","0","5","3","1","ELON SAHLAN","IKAH A.","1","");
INSERT INTO penduduk VALUES("460","159","3208177112510001","REMI","KUNINGAN","1951 -31-12","","2","11","1","2","","3","2","1","1","WIKARYA","ASINAH","1","");
INSERT INTO penduduk VALUES("461","160","3208171607580010","SARDI","KUNINGAN","1958 -16-07","","1","11","1","2","","3","9","1","1","SUKARJA","UNAN","1","");
INSERT INTO penduduk VALUES("462","160","3208175909610002","KUSNAH","KUNINGAN","1961 -19-09","","2","11","1","2","","3","2","3","1","KARHADI","CANTI","1","");
INSERT INTO penduduk VALUES("463","161","3208171304560001","JUHARNA","KUNINGAN","1956 -13-04","","1","11","1","2","","4","5","1","1","SANAHDI","SAPTINI","1","");
INSERT INTO penduduk VALUES("464","161","3208174911690001","YUNINGSIH","KUNINGAN","1969 -09-11","","2","11","1","2","","3","2","3","1","EMOD","EPON","1","");
INSERT INTO penduduk VALUES("465","161","3208175203040001","ITA ASTRIANI","KUNINGAN","2004 -12-03","","2","11","1","1","","1","1","4","1","JUHARNA","YUNINGSIH","1","");
INSERT INTO penduduk VALUES("466","161","3208176202950001","IRA NOPITA","KUNINGAN","1995 -22-02","","2","11","1","1","","3","1","4","1","JUHARNA","YUNINGSIH","1","");
INSERT INTO penduduk VALUES("467","161","3208172501890001","ANDRI PERMANA","KUNINGAN","1989 -25-01","","1","11","1","1","","4","88","4","1","JUHARNA","YUNINGSIH","1","");
INSERT INTO penduduk VALUES("468","162","3208171201320001","DJUHARI","KUNINGAN","1932 -12-01","","1","11","1","2","","3","4","1","1","-","PUYING","1","");
INSERT INTO penduduk VALUES("469","162","3208176406460001","ERUS R","KUNINGAN","1946 -24-06","","2","11","1","2","","3","2","3","1","RAKSA MUHARI","SAWI","1","");
INSERT INTO penduduk VALUES("470","163","3208171203650006","KUSMANA","KUNINGAN","1965 -12-03","","1","11","1","2","","5","85","1","1","APANDI","SUMARTI","1","");
INSERT INTO penduduk VALUES("471","163","3208175201680003","KUSMAYATI","KUNINGAN","1968 -12-01","","2","11","1","2","","8","5","3","1","HANDA","NARWITI","1","");
INSERT INTO penduduk VALUES("472","163","3208177103930002","RATNA DEWI","KUNINGAN","1993 -31-03","","2","11","1","1","","5","3","4","1","KUSMANA","KUSMAYATI","1","");
INSERT INTO penduduk VALUES("473","163","3208172610020003","FAHMI MAULANA NUGRAHA","KUNINGAN","2002 -26-10","","1","11","1","1","","0","3","4","1","KUSMANA","KUSMAYATI","1","");
INSERT INTO penduduk VALUES("474","164","3208171708680004","AAN ANDRIANA","KUNINGAN","1968 -17-08","","1","11","1","2","","3","8","1","1","WINARDI","REMI","1","");
INSERT INTO penduduk VALUES("475","164","3208174212710003","JUJU","KUNINGAN","1971 -02-12","","2","11","1","2","","3","2","3","1","KARJA","ENAH","1","");
INSERT INTO penduduk VALUES("476","164","3208175511950003","YETI YULISTIA","KUNINGAN","1995 -15-11","","2","11","1","1","","0","3","4","1","AAN ANDRIANA","JUJU","1","");
INSERT INTO penduduk VALUES("477","164","3208173108040001","WULAN LISTIANI","KUNINGAN","2004 -31-08","","1","11","1","1","","1","1","4","1","AAN ANDRIANA","JUJU","1","");
INSERT INTO penduduk VALUES("478","164","3208175207920001","ANI JUWITA","KUNINGAN","1992 -12-07","","2","11","1","1","","0","3","4","1","AAN ANDRIANA","JUJU","1","");
INSERT INTO penduduk VALUES("479","165","3208170611650002","ABAS","KUNINGAN","1965 -06-11","","1","11","1","2","","3","20","1","1","WINANDI","REMI","1","");
INSERT INTO penduduk VALUES("480","165","3208170802920003","DIAN RUSDIANA","KUNINGAN","1992 -01-08","","1","11","1","1","","3","19","4","1","ABAS","ANTINAH","1","");
INSERT INTO penduduk VALUES("481","165","3208175712950001","TIKA SARTIKA","KUNINGAN","1995 -17-12","","2","11","1","1","","3","1","4","1","ABAS","ANTINAH","1","");
INSERT INTO penduduk VALUES("482","165","3208172405110001","GALIH PRATAMA","KUNINGAN","2011 17:45:00-24-05","","1","11","1","1","","1","1","4","1","ABAS","ANTINAH","1","");
INSERT INTO penduduk VALUES("483","166","3208172809470002","ASWANDI","KUNINGAN","1947 -28-09","","1","11","1","2","","3","4","1","1","KARNADI","CANTI","1","");
INSERT INTO penduduk VALUES("484","166","3208174107530278","RATIAH","KUNINGAN","1953 -01-07","","2","11","1","2","","3","2","3","1","ATMAJA U","SANTIP .","1","");
INSERT INTO penduduk VALUES("485","166","3208171703850010","NANA ARDIANA","KUNINGAN","1985 -17-03","","1","11","1","1","","4","88","9","1","DAMIRI","NENGSAH","1","");
INSERT INTO penduduk VALUES("486","167","3208171503450004","SAHRUDIN","KUNINGAN","1945 -15-03","","1","11","1","2","","3","20","1","1","PAHING","SANI","1","");
INSERT INTO penduduk VALUES("487","167","3208174107510109","USITA","KUNINGAN","1951 -01-07","","2","11","1","2","","3","2","3","1","WIJATMA","ICOH","1","");
INSERT INTO penduduk VALUES("488","168","3208170107370134","SAHMIDI","KUNINGAN","1937 -01-07","","1","11","1","2","","3","20","1","1","RAKSA DAWA","MERI","1","");
INSERT INTO penduduk VALUES("489","168","3208174511430002","JUNAH","KUNINGAN","1943 -05-11","","2","11","1","2","","3","2","3","1","HATOMI","USITA","1","");
INSERT INTO penduduk VALUES("490","168","3208176005020004","CICI","KUNINGAN","2002 -20-05","","2","11","1","1","","3","3","6","1","ATANG RUSMANA","NARSAH","1","");
INSERT INTO penduduk VALUES("491","169","3208170909630002","SUMARNA","KUNINGAN","1963 -09-09","","1","11","1","2","","3","88","1","1","SUTANDI","UKATI","1","");
INSERT INTO penduduk VALUES("492","169","3208174307680002","JUJU","KUNINGAN","1968 -03-07","","2","11","1","2","","4","2","3","1","MARTAWI","RUMSITI","1","");
INSERT INTO penduduk VALUES("493","169","3208170212960004","DESNA RIZKI ARIANSAH","KUNINGAN","1996 -02-12","","1","11","1","1","","3","1","4","1","SUMARNA","JUJU","1","");
INSERT INTO penduduk VALUES("494","169","3208172311010006","ADI ROMADONA","KUNINGAN","2001 -23-11","","1","11","1","1","","1","1","4","1","SUMARNA","JUJU","1","");
INSERT INTO penduduk VALUES("495","170","3208170107400150","APINDI","KUNINGAN","1940 -01-07","","1","11","1","2","","3","20","1","1","MUKRA","ARNESAH","1","");
INSERT INTO penduduk VALUES("496","170","3208175106530004","USITI","KUNINGAN","1953 -11-06","","2","11","1","2","","3","2","3","1","SARNA","CANTI","1","");
INSERT INTO penduduk VALUES("497","170","3208175302720006","NURHASANAH","KUNINGAN","1972 -13-02","","2","11","1","1","","3","23","4","1","APINDI","USITI","1","");
INSERT INTO penduduk VALUES("498","170","3208176612950002","MAYA AMELIA","KUNINGAN","1995 -26-12","","2","11","1","1","","4","3","6","1","YANA","SUKANAH","1","");
INSERT INTO penduduk VALUES("499","171","3208171601540002","SUMARSO","KUNINGAN","1954 -16-01","","1","11","1","2","","3","20","1","1","KARNADI","PAINAH","1","");
INSERT INTO penduduk VALUES("500","171","3208174504600005","NESAH","KUNINGAN","1960 -05-04","","2","11","1","2","","3","2","3","1","SULAEMAN","-","1","");
INSERT INTO penduduk VALUES("501","171","3208175302360001","PAINAH","KUNINGAN","1936 -13-02","","2","11","1","4","","3","1","0","1","SUMARTO","SAKEM","1","");
INSERT INTO penduduk VALUES("502","172","3208173103850004","DENI AOLIA","MAJALENGKA","1985 -31-03","","1","11","1","2","","5","88","1","1","TONI","YAYAH ROKAYAH","1","");
INSERT INTO penduduk VALUES("503","172","3301154810880003","DARYATUN","CILACAP","1988 -08-10","","2","11","1","2","","4","2","3","1","DIKIN","RATIWI","1","");
INSERT INTO penduduk VALUES("504","172","3208171805110001","RAMA ADITYA","KUNINGAN","2011 -18-05","","1","11","1","1","","1","1","4","1","DENI AOLIA","DARYATUN","1","");
INSERT INTO penduduk VALUES("505","172","3208174107680341","KARTIWI","KUNINGAN","1968 -01-07","","2","11","1","3","","3","23","8","1","KARNADI","PAINAH","1","");
INSERT INTO penduduk VALUES("506","173","3208170601450003","KATMA SATUB","KUNINGAN","1945 -06-01","","1","11","1","2","","3","4","1","1","WIHARDI","ANIS","1","");
INSERT INTO penduduk VALUES("507","173","3208174112500002","EROT","KUNINGAN","1950 -01-12","","2","11","1","2","","3","2","3","1","TARMIDI","MURSARI","1","");
INSERT INTO penduduk VALUES("508","174","3208170606760002","SARIPUDIN","KUNINGAN","1976 -06-06","","1","11","1","2","","3","88","1","1","SAHRUDIN","USITA","1","");
INSERT INTO penduduk VALUES("509","174","3208176711800006","RULIAH","KUNINGAN","1980 -27-11","","2","11","1","2","","3","2","3","1","SUHNO","INAH","1","");
INSERT INTO penduduk VALUES("510","174","3208177008990004","LUSI SEPTIANI","KUNINGAN","1999 -30-08","","2","11","1","1","","1","1","4","1","SARIPUDIN","RULIAH","1","");
INSERT INTO penduduk VALUES("511","174","3208176908990002","TINA TALISHA","KUNINGAN","1999 -29-08","","2","11","1","1","","0","1","4","1","SARIPUDIN","RULIAH","1","");
INSERT INTO penduduk VALUES("512","175","3208170107450237","ADIN","KUNINGAN","1945 -01-07","","1","11","1","2","","3","20","1","1","DANA","-","1","");
INSERT INTO penduduk VALUES("513","175","3208174107500296","KINAH","KUNINGAN","1950 -01-07","","2","11","1","2","","3","20","3","1","WIHARSA","-","1","");
INSERT INTO penduduk VALUES("514","176","3208170704880003","UUS NASARIP","KUNINGAN","1988 -07-04","","1","11","1","2","","3","88","1","1","HASAN","MARNAH","1","");
INSERT INTO penduduk VALUES("515","176","3208174306580001","MARNAH","KUNINGAN","1958 -03-06","","2","11","1","4","","3","20","0","1","SURA MUNARA","JUNI","1","");
INSERT INTO penduduk VALUES("516","177","3208171006270002","SAHUDI","KUNINGAN","1927 -10-06","","1","11","1","2","","3","20","1","1","NATA WIHATMA","TASRI","1","");
INSERT INTO penduduk VALUES("517","177","3208170506790009","RUSNAN","KUNINGAN","1979  1-06-05","","1","11","1","1","","4","88","4","1","SAHUDI","REMI","1","");
INSERT INTO penduduk VALUES("518","178","3208174410660002","ADIANAH","KUNINGAN","1966 -04-10","","2","11","1","3","","3","20","1","1","SUNARMA","SACIH","1","");
INSERT INTO penduduk VALUES("519","179","3208170808600001","DADI SUPRIYADI","BANDUNG","1960 -08-08","","1","11","1","2","","5","88","1","1","IBIN SARBINI","HALIMAH","1","");
INSERT INTO penduduk VALUES("520","179","3208176005750005","KARTINAH","KUNINGAN","1975 -20-05","","2","11","1","2","","3","2","3","1","KARHADI","CANTI","1","");
INSERT INTO penduduk VALUES("521","180","3208176309720003","TATI RAHMAWATI","KUNINGAN","1972 -23-09","","2","11","1","2","","4","2","1","1","JUHARI","EROHANAH","1","");
INSERT INTO penduduk VALUES("522","180","3208172909010004","GERI SANDRIANA","KUNINGAN","2001 -29-09","","1","11","1","1","","3","3","4","1","JAJA SUJANA","TATI RAHMAWATI","1","");
INSERT INTO penduduk VALUES("523","181","3208172505870005","YAYAN TARYANA","KUNINGAN","1987 -25-05","","1","11","1","2","","4","88","1","1","AHYUDIN","ANITI","1","");
INSERT INTO penduduk VALUES("524","181","3208176206930003","WAWAT WIDIAWATI","KUNINGAN","1993 -22-06","","2","11","1","2","","4","2","3","1","ASKANDA","NINING","1","");
INSERT INTO penduduk VALUES("525","181","3208171806130002","REVAN FATHU RAHMAN","KUNINGAN","2013 -18-06","","1","11","1","1","","1","1","4","1","YAYAN TARYANA","WAWAT WIDIAWATI","1","");
INSERT INTO penduduk VALUES("526","182","3208176006460007","EPON","KUNINGAN","1946 -20-06","","2","11","1","4","","3","20","1","1","C. JEJE MAHPUDIN","ATI","1","");
INSERT INTO penduduk VALUES("527","183","3208170802520002","SUHNO","KUNINGAN","1952 -08-02","","1","11","1","2","","3","20","1","1","SURA MUNARA","JUMIRAH","1","");
INSERT INTO penduduk VALUES("528","183","3208175206620005","INAH","KUNINGAN","1962 -12-06","","2","11","1","2","","3","9","3","1","SUPARJA","SAMI","1","");
INSERT INTO penduduk VALUES("529","184","3208176505950004","YANTI ARYANTI","KUNINGAN","1995 -25-05","","2","11","1","1","","0","3","1","1","AHYUDIN","ANITI","1","");
INSERT INTO penduduk VALUES("530","185","3208170907860001","DIDI SUTADI","KUNINGAN","1986 -09-07","","1","11","1","2","","3","20","1","1","KURMAN","ADINAH","1","");
INSERT INTO penduduk VALUES("531","185","3208175808840002","PURWANTI","BLORA","1984 -18-08","","2","11","1","2","","4","2","3","1","JARWANTO","SARTINI","1","");
INSERT INTO penduduk VALUES("532","185","3208174611090002","SELA NOVA AULIA","KUNINGAN","2009 -06-11","","2","11","1","1","","1","1","4","1","DIDI SUTADI","PURWANTI","1","");
INSERT INTO penduduk VALUES("533","186","3208170905790003","PARNO","KUNINGAN","1979 -09-05","","1","11","1","2","","3","88","1","1","NURYANA","SUNINGSIH","1","");
INSERT INTO penduduk VALUES("534","186","3208176501880007","HERTIN","KUNINGAN","1988 -25-01","","2","11","1","2","","3","2","3","1","SARDI","KUSNAH","1","");
INSERT INTO penduduk VALUES("535","186","3208174302130002","ZESIKA PUTRI","KUNINGAN","2013 -03-02","","2","11","1","1","","1","1","4","1","PARNO","HERTIN","1","");
INSERT INTO penduduk VALUES("536","186","3208171702060001","LUKI PALENTINO","KUNINGAN","2006 -17-02","","1","11","1","1","","0","1","4","1","PARNO","HERTIN","1","");
INSERT INTO penduduk VALUES("537","187","3208171703850012","RUDI RUDIANA","KUNINGAN","1985 -17-03","","1","11","1","2","","4","88","1","1","ARKIMA","OOM RONAH","1","");
INSERT INTO penduduk VALUES("538","187","3208175204910010","RETNO SARI","KUNINGAN","1991 -12-04","","2","11","1","2","","4","2","3","1","SUHARNO","RAMENIK","1","");
INSERT INTO penduduk VALUES("539","187","3208176503100002","IIS INDRIA","KUNINGAN","2010 -25-03","","2","11","1","1","","1","1","4","1","RUDI RUDIANA","RETNO SARI","1","");
INSERT INTO penduduk VALUES("540","188","3208174501910003","WINI RUSMIATI","KUNINGAN","1991 -05-01","","2","11","1","2","","4","2","1","1","RUSTANDI","NARSAH","1","");
INSERT INTO penduduk VALUES("541","188","3208176407140002","ANINDYA ASYIFA CALYSTA","KUNINGAN","2014  2-07-24","","2","11","1","1","","1","1","4","1","TARJONO","WINI RUSMIATI","1","");
INSERT INTO penduduk VALUES("542","189","3208170101800018","SUHENDAR","KUNINGAN","1980 -01-01","","1","11","1","2","","5","88","1","1","HERYANTO","SATIMAH","1","");
INSERT INTO penduduk VALUES("543","189","3208175104800009","ARIYANI","KUNINGAN","1980 -11-04","","2","11","1","2","","5","2","3","1","SELAMET","SRIYANI","1","");
INSERT INTO penduduk VALUES("544","189","3208171002130001","RASYID NUR MAULANA","KUNINGAN","2013 -10-02","","1","11","1","1","","1","1","4","1","SUHENDAR","ARIYANI","1","");
INSERT INTO penduduk VALUES("545","189","3208176404080003","NISA APRILIANTI","KUNINGAN","2008 -24-04","","2","11","1","1","","1","1","4","1","SUHENDAR","ARIYANI","1","");
INSERT INTO penduduk VALUES("546","190","3208172001430003","RUHIDIN","KUNINGAN","1943 -20-01","","1","11","1","2","","3","20","1","1","ARHUDI","MINAH","1","");
INSERT INTO penduduk VALUES("547","190","3208174107550132","NASIH","KUNINGAN","1942 -01-07","","2","11","1","2","","3","2","3","1","SURJA","AWIT","1","");
INSERT INTO penduduk VALUES("548","191","3208170107590103","MAIN","KUNINGAN","1959 -01-07","","1","11","1","2","","3","9","1","1","SAHARI","-","1","");
INSERT INTO penduduk VALUES("549","191","3208174107680161","SATIAH","KUNINGAN","1968 -01-07","","2","11","1","2","","3","2","3","1","SANHURI","-","1","");
INSERT INTO penduduk VALUES("550","192","3208171305550002","ENDARNO","KUNINGAN","1955 -13-05","","1","11","1","2","","3","9","1","1","TARMIDI","MURSARI","1","");
INSERT INTO penduduk VALUES("551","192","3208176006650017","NURHAYATI","KUNINGAN","1965 -20-06","","2","11","1","2","","3","2","3","1","SABDA","ROSIH","1","");
INSERT INTO penduduk VALUES("552","193","3208171506650002","EMING","KUNINGAN","1965 -15-06","","1","11","1","2","","4","88","1","1","ATORI","OPIN","1","");
INSERT INTO penduduk VALUES("553","193","3208175005680004","KUSTINI","KUNINGAN","1968 -10-05","","2","11","1","2","","4","2","3","1","IRTA","SUHAMI","1","");
INSERT INTO penduduk VALUES("554","193","3208172904010002","LIPIA MARETA","KUNINGAN","2001 -29-04","","1","11","1","1","","1","1","4","1","EMING","KUSTINI","1","");
INSERT INTO penduduk VALUES("555","193","3208171202950006","FEBRI ROMADONI","KUNINGAN","1995 -12-02","","1","11","1","1","","0","3","4","1","EMING","KUSTINI","1","");
INSERT INTO penduduk VALUES("556","194","3208170107620253","DENI KURNIA","KUNINGAN","1962 -01-07","","1","11","1","2","","3","81","1","1","MAHPUDIN","KURNIASIH","1","");
INSERT INTO penduduk VALUES("557","194","3208175103700005","NINING","KUNINGAN","1970 -11-03","","2","11","1","2","","3","2","3","1","SUPENDI","MINAH","1","");
INSERT INTO penduduk VALUES("558","194","3208171709920004","PIKI SULISTIO","KUNINGAN","1992 -17-09","","1","11","1","1","","4","1","4","1","DENI KURNIA","NINING","1","");
INSERT INTO penduduk VALUES("559","194","3208174405040002","NANDA IPANI","KUNINGAN","2004 -04-05","","2","11","1","1","","0","3","4","1","DENI KURNIA","NINING","1","");
INSERT INTO penduduk VALUES("560","194","3208174107490177","KURNIASIH","KUNINGAN","1949 -01-07","","2","11","1","4","","3","1","0","1","KUSEN","NENTI","1","");
INSERT INTO penduduk VALUES("561","195","3208174509690001","ENTIN HARYATIN","KUNINGAN","1969 -05-09","","2","11","1","2","","3","2","1","1","SUGANDA","-","1","");
INSERT INTO penduduk VALUES("562","195","3208172001040004","FAJAR","KUNINGAN","2004 -20-01","","1","11","1","1","","0","1","4","1","KODIR","ENTIN HARYATIN","1","");
INSERT INTO penduduk VALUES("563","195","3208170206950002","ANA ASRUL FATWA","KUNINGAN","1995 -02-06","","1","11","1","1","","4","1","4","1","KODIR","ENTIN HARYATIN","1","");
INSERT INTO penduduk VALUES("564","195","3208171504840004","JUJU JUARNA","KUNINGAN","1984 -15-04","","1","11","1","1","","3","1","4","1","KODIR","ENTIN SUHARTINI","1","");
INSERT INTO penduduk VALUES("565","195","3208171012660004","KODIR","KUNINGAN","1966 -10-12","","1","11","1","2","","3","9","9","1","-","-","1","");
INSERT INTO penduduk VALUES("566","196","3208170304540002","HERYANTO","KUNINGAN","1954 -03-04","","1","11","1","2","","3","9","1","1","SUWIRTA","NERWI","1","");
INSERT INTO penduduk VALUES("567","196","3208175112630002","SATIMAH","KUNINGAN","1963 -11-12","","2","11","1","2","","3","2","3","1","ERO","UKI","1","");
INSERT INTO penduduk VALUES("568","197","3208170107750364","KUSDINO","KUNINGAN","1975 -01-07","","1","11","1","2","","4","88","1","1","DIDI TAHIDI","ENTI MARYANTI","1","");
INSERT INTO penduduk VALUES("569","197","3208175903800005","TATI NURYATI","KUNINGAN","1980 -19-03","","2","11","1","2","","3","2","3","1","DIDING","ANING","1","");
INSERT INTO penduduk VALUES("570","197","3208171005080003","MUHAMAD IKSAN","KUNINGAN","2008 -10-05","","1","11","1","1","","1","1","4","1","KUSDINA","TATI NURYATI","1","");
INSERT INTO penduduk VALUES("571","197","3208175305020002","LISA NELIA","KUNINGAN","2002 -13-05","","2","11","1","1","","0","3","4","1","KUSDINA","TATI NURYATI","1","");
INSERT INTO penduduk VALUES("572","197","3208174107650351","ANING","KUNINGAN","1965 -01-07","","2","11","1","4","","3","1","8","1","SUHATMA","WARSITA","1","");
INSERT INTO penduduk VALUES("573","198","3208170107380218","ADNA","KUNINGAN","1938 -01-07","","1","11","1","2","","3","20","1","1","SUANTA","ARMI","1","");
INSERT INTO penduduk VALUES("574","198","3208174107450260","ISAH","KUNINGAN","1945 -01-07","","2","11","1","2","","3","2","3","1","WANTASAN","DARMI","1","");
INSERT INTO penduduk VALUES("575","199","3208177112320002","WASIH","KUNINGAN","1932 -31-12","","2","11","1","4","","3","4","1","1","WARIA ISKAM","JUSIH","1","");
INSERT INTO penduduk VALUES("576","200","3208170702490002","R. SASMITA","KUNINGAN","1949 -07-02","","1","11","1","2","","3","88","1","1","SACA KRAMA","SALIAH","1","");
INSERT INTO penduduk VALUES("577","200","3208174107560268","ADMI","KUNINGAN","1956 -01-07","","2","11","1","2","","3","2","3","1","SUDARTA","WASIH","1","");
INSERT INTO penduduk VALUES("578","200","3208171701900001","BUDI SANTOSA","KUNINGAN","1990 -17-01","","1","11","1","1","","5","3","4","1","R. SASMITA","ADMI","1","");
INSERT INTO penduduk VALUES("579","201","3208171010550004","TARIM","KUNINGAN","1955 -10-10","","1","11","1","2","","3","20","1","1","SUPARJA","SAMI","1","");
INSERT INTO penduduk VALUES("580","201","3208175002620009","NERWI","KUNINGAN","1962 -10-02","","2","11","1","2","","3","2","3","1","JUNINTA","IMOH","1","");
INSERT INTO penduduk VALUES("581","202","3208171002620002","SUKARYO","KUNINGAN","1962 -10-02","","1","11","1","2","","3","81","1","1","AMSOR","ASWINAH","1","");
INSERT INTO penduduk VALUES("582","202","3208175507770005","TUTI CUMIATI","KUNINGAN","1977 -15-07","","2","11","1","2","","3","2","3","1","ENDANG","EPON","1","");
INSERT INTO penduduk VALUES("583","202","3208172905110002","RIZKY ADITIYA","KUNINGAN","2011 -29-05","","1","11","1","1","","1","1","4","1","SUKARYO","TUTI CUMIATI","1","");
INSERT INTO penduduk VALUES("584","202","3208172209950003","GUGUN GUMELAR","KUNINGAN","1995 -22-09","","1","11","1","1","","4","3","4","1","SUKARYO","TUTI CUMIATI","1","");
INSERT INTO penduduk VALUES("585","202","3208171908040001","IRPAN NURHAKIM","KUNINGAN","2004 -19-08","","1","11","1","1","","0","3","4","1","SUKARYO","TUTI CUMIATI","1","");
INSERT INTO penduduk VALUES("586","203","3208172806540002","H. UDIN JAENUDIN","CIAMIS","1954 -28-06","","1","11","1","2","","5","88","1","1","SUARJA","AMINAH","1","");
INSERT INTO penduduk VALUES("587","203","3208175010650006","HJ. NENIH NURAENIH, S.PD.","MAJALENGKA","1965 -10-10","","2","11","1","2","","0","5","3","1","ANWAR","UNAH","1","");
INSERT INTO penduduk VALUES("588","203","3208170409920002","FAUZI","KUNINGAN","1992 -04-09","","1","11","1","1","","4","3","4","1","H. UDIN JAENUDIN","HJ. NENIH NURAENIH,S.PD.","1","");
INSERT INTO penduduk VALUES("589","204","3208170402580005","ABDUL RACHMAN","KUNINGAN","1958 -04-02","","1","11","1","2","","5","88","1","1","H. BISRI","HJ. SITI","1","");
INSERT INTO penduduk VALUES("590","204","3208174402580008","EHA JULAEHA","KUNINGAN","1958 -04-02","","2","11","1","2","","5","88","3","1","SUWARJA","AMINAH","1","");
INSERT INTO penduduk VALUES("591","205","3208173008840002","UDING EFRIYANA","KUNINGAN","1984 -30-08","","1","11","1","2","","5","88","1","1","HERYANTO","SATIMAH","1","");
INSERT INTO penduduk VALUES("592","205","3208176101920004","HALIFAH","KUNINGAN","1992 -21-01","","2","11","1","2","","4","2","3","1","AHMAD","NINGRUM","1","");
INSERT INTO penduduk VALUES("593","205","3208174506110002","ILMI EPRIYANI","KUNINGAN","2011 -05-06","","2","11","1","1","","1","1","4","1","UDING EFRIYANA","HALIFAH","1","");
INSERT INTO penduduk VALUES("594","206","3208171305800004","ENGKUS DONI IRAWAN","KUNINGAN","1980 -13-05","","1","11","1","2","","3","20","1","1","HAE","NUR`AH","1","");
INSERT INTO penduduk VALUES("595","206","3208176708850002","RIAN CAHYANTI","CIREBON","1985 -27-08","","2","11","1","2","","4","2","3","1","E. MULYADI H.","IYUS NUR`AETI","1","");
INSERT INTO penduduk VALUES("596","206","3208176803110004","NAIRA EGAMA MARIANA","KUNINGAN","2011 -28-03","","2","11","1","1","","1","1","4","1","ENGKUS DONI IRAWAN","RIAN CAHYANTI","1","");
INSERT INTO penduduk VALUES("597","206","3208172702030003","DENI KURNIAWAN","KUNINGAN","2003 -27-02","","1","11","1","1","","1","1","4","1","ENGKUS DONI IRAWAN","RIAN CAHYANTI","1","");
INSERT INTO penduduk VALUES("598","207","3208170812610003","ANO","KUNINGAN","1961 -08-12","","1","1","1","2","","3","88","1","1","SUKINTA","NARWEN","1","");
INSERT INTO penduduk VALUES("599","207","3208175207660004","SARIAH","KUNINGAN","1966 -12-07","","2","11","1","2","","3","2","3","1","ADNA","ISAH","1","");
INSERT INTO penduduk VALUES("600","207","3208171412910001","WILKI ANORIZ","KUNINGAN","1991 -14-12","","1","4","1","1","","5","3","4","1","ANO","SARIAH","1","");
INSERT INTO penduduk VALUES("601","208","3208171306740005","DEDI GUNAWAN","MAJALENGKA","1974 -13-06","","1","11","1","2","","3","88","1","1","UDIN BOHARI","HJ. HODIJAH","1","");
INSERT INTO penduduk VALUES("602","208","3208174811750003","IDAH SANTIDAH","KUNINGAN","1975 -08-11","","2","11","1","2","","4","2","3","1","ROKIB","ADMI","1","");
INSERT INTO penduduk VALUES("603","208","3208177007000005","DEDE LINA JULIANI","KUNINGAN","2000 -30-07","","2","11","1","1","","3","3","4","1","DEDI GUNAWAN","IDAH SANTIDAH","1","");
INSERT INTO penduduk VALUES("604","208","3208174207090003","ATHIYA JULIA RAHMA","KUNINGAN","2009 -02-07","","2","11","1","1","","1","1","4","1","DEDI GUNAWAN","IDAH SANTIDAH","1","");
INSERT INTO penduduk VALUES("605","209","3208172805840003","YAYAN","KUNINGAN","1984 -28-05","","1","11","1","2","","3","88","1","1","SARKIM","KASINAH","1","");
INSERT INTO penduduk VALUES("606","209","3208175502830009","IMAS","KUNINGAN","1983 -15-02","","2","11","1","2","","3","2","3","1","IKAR","KARSAH","1","");
INSERT INTO penduduk VALUES("607","209","3208170909110001","MOHAMAD ZAKY SEFTIAN","KUNINGAN","2011 -09-09","","1","11","1","1","","1","1","4","1","YAYAN","AAN ARNAWATI","1","");
INSERT INTO penduduk VALUES("608","209","3208173108080002","ALESA NURWAHID","KUNINGAN","2008 -31-08","","1","11","1","1","","0","3","4","1","AANG AHYADI","IMAS","1","");
INSERT INTO penduduk VALUES("609","210","3208170107790213","SANDI","KUNINGAN","1979 -01-07","","1","11","1","2","","3","14","1","1","RUHIDIN","NASIH","1","");
INSERT INTO penduduk VALUES("610","210","3208174107790259","ENTIN","KUNINGAN","1979 -01-07","","2","11","1","2","","3","2","3","1","JUMADI","NASIH","1","");
INSERT INTO penduduk VALUES("611","210","3208175608050002","ANGGI","KUNINGAN","2005 11:11:00-16-08","","2","11","1","1","","0","3","4","1","SANDI","ENTIN SARTINAH","1","");
INSERT INTO penduduk VALUES("612","210","3208171809090003","ANGGA","KUNINGAN","2009 -18-09","","1","11","1","1","","1","1","4","1","SANDI","ENTIN ","1","");
INSERT INTO penduduk VALUES("613","211","3208174107380188","SAMI","KUNINGAN","1938 -01-07","","2","11","1","4","","3","20","1","1","DARHAM","ISOH","1","");
INSERT INTO penduduk VALUES("614","212","3208171810740004","KAMAN","KUNINGAN","1974 -18-10","","1","11","1","2","","3","20","1","1","RUHIDIN","NASIH","1","");
INSERT INTO penduduk VALUES("615","212","3208176010790005","NANI SUMARNI","KUNINGAN","1979 -20-10","","2","11","1","2","","5","2","3","1","SUDARMAN","MARNAH","1","");
INSERT INTO penduduk VALUES("616","212","3208172504100001","AFGAN","KUNINGAN","2010 -25-04","","1","11","1","1","","1","1","4","1","KAMAN","NANI SUMARNI","1","");
INSERT INTO penduduk VALUES("617","212","3208172007020006","HERU KURNIA","KUNINGAN","2002 -20-07","","1","11","1","1","","0","1","4","1","KAMAN","NANI SUMARNI","1","");
INSERT INTO penduduk VALUES("618","213","3208170304610003","H. SUDIANA","CIAMIS","1961 -03-04","","1","11","1","2","","5","88","1","1","SUWARJA","AMINAH","1","");
INSERT INTO penduduk VALUES("619","213","3208176009600005","VETY SALVIATY","PADANG ILIR","1960 -20-09","","2","11","1","2","","5","2","3","1","SUWARDI","YULIZAR","1","");
INSERT INTO penduduk VALUES("620","213","3208176309920002","MEGA SELVIA","CIAMIS","1992 -23-09","","2","11","1","1","","4","3","4","1","H. SUDIANA","VETY SALVIATY","1","");
INSERT INTO penduduk VALUES("621","214","3208175506800007","NINA","KUNINGAN","1980 -15-06","","2","11","1","3","","8","18","1","1","PENDI","EHA JULAEHA","1","");
INSERT INTO penduduk VALUES("622","214","3208171603080001","RAYKIZYA MAULANA YASIPI","KUNINGAN","2008 -16-03","","1","11","1","1","","0","3","4","1","UCUP SUPRIADI","NINA","1","");
INSERT INTO penduduk VALUES("623","214","3208172807020005","FUZI ARYADIKA","KUNINGAN","2002 -28-07","","1","11","1","1","","3","3","4","1","UCUP SUPRIADI","NINA","1","");
INSERT INTO penduduk VALUES("624","215","3208171707780001","KAMAN","KUNINGAN","1978 -17-07","","1","11","1","2","","3","84","1","1","IRTA","ARNAH","1","");
INSERT INTO penduduk VALUES("625","215","3208175606820007","RESIH","KUNINGAN","1982 -16-06","","2","11","1","2","","3","84","3","1","SAHRIDI","RUSTINI","1","");
INSERT INTO penduduk VALUES("626","215","3208174404030003","LOLA ARISKA","KUNINGAN","2003 -04-04","","2","11","1","1","","0","1","4","1","KAMAN","RESIH","1","");
INSERT INTO penduduk VALUES("627","215","3208170811090001","ILYASYA EKA NUGRAHA","KUNINGAN","2009 -08-11","","1","11","1","1","","1","1","4","1","KAMAN","RESIH","1","");
INSERT INTO penduduk VALUES("628","216","3208172705750001","UCUP SUPRIADI","KUNINGAN","1975 -27-05","","1","11","1","2","","5","88","1","1","BANAN","AYUNAH","1","");
INSERT INTO penduduk VALUES("629","217","3208171508750005","NANA RUSTIANA","KUNINGAN","1975 -15-08","","1","11","1","2","","4","88","1","1","SUHERMAN","DAENAH","1","");
INSERT INTO penduduk VALUES("630","217","3208174205800006","HARTINI","KUNINGAN","1980 -02-05","","2","11","1","2","","5","2","3","1","SUHA","SAONAH","1","");
INSERT INTO penduduk VALUES("631","217","3208177011060002","RIA AULIA","KUNINGAN","2006 -30-11","","2","11","1","1","","1","1","4","1","NANA RUSTIANA","HARTINI","1","");
INSERT INTO penduduk VALUES("632","218","3208170107750217","ARWA","KUNINGAN","1975 -01-07","","1","11","1","2","","3","88","1","1","-","ECIH","1","");
INSERT INTO penduduk VALUES("633","218","3208174508770007","ENAH","KUNINGAN","1977 -05-08","","2","11","1","2","","3","2","3","1","KARJA","ASNEWI","1","");
INSERT INTO penduduk VALUES("634","218","3208172304990002","SUHENDRIK","KUNINGAN","1999 -23-04","","1","11","1","1","","1","1","4","1","ARWA","ENAH","1","");
INSERT INTO penduduk VALUES("635","218","3208174107420284","ECIH","KUNINGAN","1942 -01-07","","2","11","1","4","","0","1","0","1","-","-","1","");
INSERT INTO penduduk VALUES("636","219","3208170502380002","KARJA","KUNINGAN","1938 -05-02","","1","11","1","2","","3","9","1","1","WANTASAN","DARMI","1","");
INSERT INTO penduduk VALUES("637","219","3208175006450004","ASNEWI","KUNINGAN","1945 -10-06","","2","11","1","2","","3","2","3","1","ALKA","SASIH","1","");
INSERT INTO penduduk VALUES("638","219","3208175108890001","KUWATIN","KUNINGAN","1989 -11-08","","2","11","1","1","","3","1","4","1","KARJA","ASNEWI","1","");
INSERT INTO penduduk VALUES("639","219","3208170611800005","WAHYUDI","KUNINGAN","1980 -06-11","","1","11","1","2","","3","19","5","1","JUMARNA","MIAH","1","");
INSERT INTO penduduk VALUES("640","220","3208171007330002","SUANDI","KUNINGAN","1933 -10-07","","1","11","1","2","","3","9","1","1","-","-","1","");
INSERT INTO penduduk VALUES("641","220","3208174206590002","SUKINAH","KUNINGAN","1959 -02-06","","2","11","1","2","","3","2","3","1","-","-","1","");
INSERT INTO penduduk VALUES("642","220","3208171606960004","SUJANA","KUNINGAN","1996 -16-06","","1","11","1","1","","0","1","4","1","SUANDI","SUKINAH","1","");
INSERT INTO penduduk VALUES("643","220","3208175009070005","SISKA","KUNINGAN","2007 -10-09","","2","11","1","1","","1","1","6","1","WARSIM","SARTINI","1","");
INSERT INTO penduduk VALUES("644","221","3208170801380002","IRTA","KUNINGAN","1938 -08-01","","1","11","1","2","","3","9","1","1","MUKRA","-","1","");
INSERT INTO penduduk VALUES("645","221","3208175202420003","ARNAH","KUNINGAN","1942 -12-02","","2","11","1","2","","3","2","3","1","SUATMA","-","1","");
INSERT INTO penduduk VALUES("646","222","3208171901420002","ATANG","KUNINGAN","1942 -19-01","","1","11","1","2","","3","88","1","1","KARYA","-","1","");
INSERT INTO penduduk VALUES("647","222","3208175105530003","RUMINI","KUNINGAN","1953 -11-05","","2","11","1","2","","3","2","3","1","TARJA","-","1","");
INSERT INTO penduduk VALUES("648","222","3208171002830003","HIMAN","KUNINGAN","1983 -10-02","","1","11","1","1","","3","88","4","1","ATANG","RUMINI","1","");
INSERT INTO penduduk VALUES("649","222","3208170509690003","SODIKIN","KUNINGAN","1969 -05-09","","1","11","1","1","","3","88","4","1","ATANG","RUMINI","1","");
INSERT INTO penduduk VALUES("650","223","3208171406690003","SUGRINO","KUNINGAN","1969 -14-06","","1","11","1","2","","3","20","1","1","SUDINYA","RUNAH","1","");
INSERT INTO penduduk VALUES("651","223","3208176409730003","CUCUN SUMARNI","KUNINGAN","1973 -24-09","","2","11","1","2","","3","2","3","1","ATANG","RUMINI","1","");
INSERT INTO penduduk VALUES("652","223","3208171506050006","ADE RIDAN","KUNINGAN","2005 -15-06","","1","11","1","1","","0","1","4","1","SURYAMAN","CUCUN SUMARNI","1","");
INSERT INTO penduduk VALUES("653","223","3208172309920001","DANI HILMANSYAH","KUNINGAN","1992 -23-09","","1","11","1","1","","3","1","4","1","SUGRINO","CUCUN SUMARNI","1","");
INSERT INTO penduduk VALUES("654","223","3208172312010003","ARISKI","KUNINGAN","2001 -23-12","","1","11","1","1","","0","1","4","1","SURYAMAN","CUCUN SUMARNI","1","");
INSERT INTO penduduk VALUES("655","224","3208170108620001","MISTAR","KUNINGAN","1962 -01-08","","1","11","1","2","","3","20","1","1","KARNIWA","NARSIH","1","");
INSERT INTO penduduk VALUES("656","224","3208174608700004","SARINAH","KUNINGAN","1970 -06-08","","2","11","1","2","","3","2","3","1","TARJA","NAWITI","1","");
INSERT INTO penduduk VALUES("657","224","3208170108940007","AGUS MAULANA","KUNINGAN","1994 -01-08","","1","11","1","1","","4","3","4","1","MISTAR","SARINAH","1","");
INSERT INTO penduduk VALUES("658","224","3208176411010004","SRI SUMINAR","KUNINGAN","2001 -24-11","","2","11","1","1","","0","3","4","1","MISTAR","SARINAH","1","");
INSERT INTO penduduk VALUES("659","224","3208176505080002","MISYATI NUR FADILLA","KUNINGAN","2008 -25-05","","2","11","1","1","","1","1","4","1","MISTAR","SARINAH","1","");
INSERT INTO penduduk VALUES("660","225","3208171101590002","SUHRO","KUNINGAN","1959 -11-01","","1","11","1","2","","3","88","1","1","TARJA","NAWITI","1","");
INSERT INTO penduduk VALUES("661","225","3208174107650001","ETI","KUNINGAN","1965 -01-07","","2","11","1","2","","3","2","3","1","SUKIRNA","KUSNIAH","1","");
INSERT INTO penduduk VALUES("662","225","3208176911980001","SURYANI","KUNINGAN","1998 -29-11","","2","11","1","1","","4","3","4","1","SUHRO","ETI SUKIRNA","1","");
INSERT INTO penduduk VALUES("663","225","3208172911980004","SURYANA","KUNINGAN","1998 -29-11","","1","11","1","1","","4","4","4","1","SUHRO","ETI","1","");
INSERT INTO penduduk VALUES("664","226","3208176706640003","NINGRUM","KUNINGAN","1964 -27-06","","2","11","1","4","","3","20","1","1","UTANDI","ACIH","1","");
INSERT INTO penduduk VALUES("665","226","3208170705020002","ALDI","KUNINGAN","2002 -07-05","","1","11","1","1","","0","3","4","1","ANYAR","NINGRUM","1","");
INSERT INTO penduduk VALUES("666","226","3208172708910001","TATAN","KUNINGAN","1991 -27-08","","1","11","1","1","","4","19","4","1","AHNYAR","NINGRUM","1","");
INSERT INTO penduduk VALUES("667","227","3208170107610082","SAEPUDIN","KUNINGAN","1961 -01-07","","1","11","1","2","","3","9","1","1","JUANDI","-","1","");
INSERT INTO penduduk VALUES("668","227","3208174107510078","UCIH","KUNINGAN","1951 -01-07","","2","11","1","2","","3","2","3","1","SURYA","-","1","");
INSERT INTO penduduk VALUES("669","227","3208176407900001","IRNAWATI","KUNINGAN","1990 -24-07","","2","11","1","1","","0","88","4","1","SAEPUDIN","UCIH","1","");
INSERT INTO penduduk VALUES("670","228","3208172802700002","JUHANDI","KUNINGAN","1970 -28-02","","1","11","1","2","","3","20","1","1","SUKARJA","ISAH","1","");
INSERT INTO penduduk VALUES("671","228","3208175101780003","AAN HASANAH","KUNINGAN","1978 -11-01","","2","11","1","2","","3","2","3","1","SAMSURI","ONAH","1","");
INSERT INTO penduduk VALUES("672","228","3208176904980002","RISEU ROSLINA","KUNINGAN","1998 -29-04","","2","11","1","1","","4","3","4","1","JUHANDI","AAN HASANAH","1","");
INSERT INTO penduduk VALUES("673","228","3208172904980002","DAINA MUNTHAS","KUNINGAN","2006 -06-03","","2","11","1","1","","0","3","4","1","JUHANDI","AAN HASANAH","1","");
INSERT INTO penduduk VALUES("674","228","3208172211140001","NOVAN SYAPUTRA","KUNINGAN","2014 16:50:00-22-11","","1","11","1","1","","1","1","4","1","JUHANDI","AAN HASANAH","1","");
INSERT INTO penduduk VALUES("675","229","3208170107480134","JUNED","KUNINGAN","1948 -01-07","","1","11","1","2","","3","9","1","1","SOLIHIN","SARMI","1","");
INSERT INTO penduduk VALUES("676","229","3208175011540004","KONAH","KUNINGAN","1954 -10-11","","2","11","1","2","","3","2","3","1","JUANDI","TINI","1","");
INSERT INTO penduduk VALUES("677","230","3208174107500143","NESAH","KUNINGAN","1950 -01-07","","2","11","1","4","","3","2","1","1","WIHATMA","-","1","");
INSERT INTO penduduk VALUES("678","231","3208171302720001","WARNAN","KUNINGAN","1972 -13-07","","1","11","1","2","","3","88","1","1","IRTA","ARNAH","1","");
INSERT INTO penduduk VALUES("679","231","3208154107810018","JUNIAH","KUNINGAN","1981 -01-06","","2","11","1","2","","3","2","3","1","JUHAMAN","JUNAH","1","");
INSERT INTO penduduk VALUES("680","231","3208171907030007","ERIK HERNAWAN","KUNINGAN","2003 -19-07","","1","11","1","1","","0","3","4","1","WARNAN","EMAY SUMARNI","1","");
INSERT INTO penduduk VALUES("681","232","3208170704530003","GANI","KUNINGAN","1953 -07-04","","1","11","1","2","","3","84","1","1","SUTARDI","AMI","1","");
INSERT INTO penduduk VALUES("682","232","3208174705680003","O. INIR","KUNINGAN","1968 -07-05","","2","11","1","2","","3","2","3","1","SUTANDI","ONOH","1","");
INSERT INTO penduduk VALUES("683","233","3208170107620307","KARMIN","KUNINGAN","1962 -01-07","","1","11","1","2","","4","20","1","1","UDIN","MIMIN","1","");
INSERT INTO penduduk VALUES("684","233","3208174107710113","SUKINI","KUNINGAN","1971 -01-07","","2","11","1","2","","5","2","3","1","IRTA","ARNAH","1","");
INSERT INTO penduduk VALUES("685","233","3208174107850342","ETIN","KUNINGAN","1985 -01-07","","2","11","1","2","","3","2","4","1","KARMIN","SUKINI","1","");
INSERT INTO penduduk VALUES("686","233","3208175803070001","DIPA NUR PENSIA","KUNINGAN","2007 -18-03","","2","11","1","1","","1","1","6","1","SUPENDI","ETIN","1","");
INSERT INTO penduduk VALUES("687","233","3208170610020002","ADYANSAH","KUNINGAN","2002 -06-10","","1","11","1","1","","0","3","6","1","SUPENDI","ETIN","1","");
INSERT INTO penduduk VALUES("688","234","3208172303780009","KARSA","KUNINGAN","1978 -23-03","","1","11","1","2","","4","88","1","1","SAKIM","SUTINAH","1","");
INSERT INTO penduduk VALUES("689","234","3208175504130002","FELISA AURELLIA ZAHRA","KUNINGAN","2013 -15-04","","2","11","1","1","","1","1","4","1","KARSA","CARMINAH","1","");
INSERT INTO penduduk VALUES("690","234","3208176008030001","PUTRI RAHMA DIANTI","KUNINGAN","2003 -20-08","","2","11","1","1","","0","3","4","1","KARSA","CARMINAH","1","");
INSERT INTO penduduk VALUES("691","234","3208176503840005","CARMINAH","INDRAMAYU","1984 -25-03","","2","11","1","2","","3","2","9","1","MADKASAN","WASINAH","1","");
INSERT INTO penduduk VALUES("692","235","3208171505790002","TATANG HERNAWAN","KUNINGAN","1979 -15-05","","1","11","1","2","","3","88","1","1","RUKISMAN","KURNIASIH","1","");
INSERT INTO penduduk VALUES("693","235","3208175106830009","LINA WIDIASIH","CIAMIS","1983 -11-06","","2","11","1","2","","4","2","3","1","SUPENDI","ANIH","1","");
INSERT INTO penduduk VALUES("694","235","3208176604120001","NATASYA SALSABILA","KUNINGAN","2012 -26-04","","2","11","1","1","","1","1","4","1","TATANG HERNAWAN","LINA WIDIASIH","1","");
INSERT INTO penduduk VALUES("695","235","3208176408040001","AGNES WIDIANTI","KUNINGAN","2004 -24-08","","2","11","1","1","","0","3","4","1","TATANG HERNAWAN","LINA WIDIASIH","1","");
INSERT INTO penduduk VALUES("696","236","3208170107520278","SUKNA","KUNINGAN","1952 -01-07","","1","11","1","2","","3","9","1","1","SUDARTA","WASIH","1","");
INSERT INTO penduduk VALUES("697","236","3208174107620215","SALMI","KUNINGAN","1962 -01-07","","2","11","1","2","","3","2","3","1","MAIM","KENOH","1","");
INSERT INTO penduduk VALUES("698","236","3208174107980262","AIPAH","KUNINGAN","1998 -01-07","","2","11","1","1","","1","1","4","1","SUKNA","SALMI","1","");
INSERT INTO penduduk VALUES("699","236","3208172804900005","EDIYAT","KUNINGAN","1990 -28-04","","1","11","1","1","","3","1","4","1","SUKNA","SALMI","1","");
INSERT INTO penduduk VALUES("700","237","3208170205520001","SUALI","KUNINGAN","1952 -02-05","","1","11","1","2","","3","9","1","1","SUKARMA","ANERI","1","");
INSERT INTO penduduk VALUES("701","237","3208171303950001","ERYANA","KUNINGAN","1995 -13-03","","1","11","1","1","","4","3","4","1","SUALI","UTIN","1","");
INSERT INTO penduduk VALUES("702","237","3208174808990001","IIS AISAH","KUNINGAN","1999 -08-08","","2","11","1","1","","0","3","4","1","SUALI","UTIN","1","");
INSERT INTO penduduk VALUES("703","238","3208171108700007","TARSO","KUNINGAN","1970 -11-08","","1","11","1","2","","3","19","1","1","SUHARNA","EMAH","1","");
INSERT INTO penduduk VALUES("704","238","3208175608750002","ARTIKAH","KUNINGAN","1975 -16-08","","2","1","1","2","","4","2","3","1","SUHAEMI","ATIMAH","1","");
INSERT INTO penduduk VALUES("705","238","3208177007130005","GITA RAMADAN","KUNINGAN","2013  2-07-30","","2","11","1","1","","1","1","4","1","TARSO","ARTIKAH","1","");
INSERT INTO penduduk VALUES("706","238","3208175412030005","AAM AMELIA","KUNINGAN","2003 -14-12","","2","11","1","1","","0","3","4","1","TARSO","ARTIKAH","1","");
INSERT INTO penduduk VALUES("707","238","3208170907090002","IKSAN","KUNINGAN","2009 -09-07","","1","11","1","1","","1","1","4","1","TARSO","ARTIKAH","1","");
INSERT INTO penduduk VALUES("708","239","3208172411610002","USPAN","KUNINGAN","1961 -24-11","","1","11","1","2","","3","88","1","1","SUKARMA","ANERI","1","");
INSERT INTO penduduk VALUES("709","239","3208174502660004","ENAH","KUNINGAN","1966 -05-02","","2","11","1","2","","3","2","3","1","AMINTA (","SALMAH","1","");
INSERT INTO penduduk VALUES("710","239","3208176312900001","AI SAPTINI","KUNINGAN","1990 -23-12","","2","11","1","1","","3","1","4","1","USPAN","ENAH","1","");
INSERT INTO penduduk VALUES("711","240","3208170107410065","SUTARYA","KUNINGAN","1941 -01-07","","1","11","1","2","","3","9","1","1","ARMAWI","PALMI","1","");
INSERT INTO penduduk VALUES("712","241","3208170306820389","ENJEN","KUNINGAN","1982 -03-06","","1","11","1","2","","4","88","1","1","RUKISMAN","KURNIASIH","1","");
INSERT INTO penduduk VALUES("713","241","3208175808870003","YUYU NURHAYATI","KUNINGAN","1987 -18-08","","2","11","1","2","","4","2","3","1","SUEB","YOYOH","1","");
INSERT INTO penduduk VALUES("714","241","3208170707110001","DANIL YUZENO","KUNINGAN","2011 -07-07","","1","11","1","1","","1","1","4","1","ENJEN","YUYU","1","");
INSERT INTO penduduk VALUES("715","241","3208171804060006","RIPTAN YZO","KUNINGAN","2006 -18-04","","1","11","1","1","","1","1","4","1","ENJEN","YUYU","1","");
INSERT INTO penduduk VALUES("716","242","3208170507790010","DADAN. R","KUNINGAN","1979 -05-07","","1","11","1","2","","3","88","1","1","ATANG","RUMINI","1","");
INSERT INTO penduduk VALUES("717","242","3208175707820009","ATI FITRIASARI","CIAMIS","1982 -17-07","","2","11","1","2","","5","2","3","1","DIDI SUNARDI","ROSITA","1","");
INSERT INTO penduduk VALUES("718","242","3208171311070002","DEVIN SUGESVIAN","KUNINGAN","2007 -13-11","","1","11","1","1","","1","1","4","1","DADAN. R","ATI FITRIASARI","1","");
INSERT INTO penduduk VALUES("719","242","3208175503110001","DEPA SRIALIPA","KUNINGAN","2011 -15-03","","2","11","1","1","","1","1","4","1","DADAN RUKANDAN","ATI FITRIASARI","1","");
INSERT INTO penduduk VALUES("720","243","3208171906950004","ADE NURDIANSAH","KUNINGAN","1995 -19-06","","1","11","1","1","","0","3","1","1","WARNAN","EMAY SUMARNI","1","");
INSERT INTO penduduk VALUES("721","244","3208172302750007","KUSNADI","CIREBON","1975 -23-02","","1","11","1","2","","3","20","1","1","KAMIKA","JAENAH","1","");
INSERT INTO penduduk VALUES("722","244","3208175007780008","YANTI","KUNINGAN","1978 -10-07","","2","11","1","2","","3","2","3","1","JUNED","KONAH","1","");
INSERT INTO penduduk VALUES("723","244","3208172108000006","APIP SUNANDA","KUNINGAN","2000 04:00:00-21-08","","1","11","1","1","","3","3","4","1","KUSNADI","YANTI","1","");
INSERT INTO penduduk VALUES("724","245","3208176306830003","TITI SUHARTINI","KUNINGAN","1983 -23-06","","2","11","1","2","","3","2","1","1","SUALIM","NURSIH","1","");
INSERT INTO penduduk VALUES("725","245","3208170101120005","REHAN PADILLAH","KUNINGAN","2012 -01-01","","1","11","1","1","","1","1","4","1","SURYA","TITI SUHARTINI","1","");
INSERT INTO penduduk VALUES("726","245","3208174107470177","NURSIH","KUNINGAN","1947 -01-07","","2","11","1","4","","3","20","0","1","SANUHWI","SARSIH","1","");
INSERT INTO penduduk VALUES("727","246","3208171504490002","SAKIM","KUNINGAN","1949 -15-04","","1","11","1","2","","3","1","1","1","SUPARJA","IJOH","1","");
INSERT INTO penduduk VALUES("728","246","3208175403550002","SUTIMAH","KUNINGAN","1955 -14-03","","2","11","1","2","","3","1","3","1","MARHUDI","-","1","");
INSERT INTO penduduk VALUES("729","247","3208170608810001","HARTONO","KUNINGAN","1981 -06-08","","1","11","1","2","","3","88","1","1","IRTA","ARNAH","1","");
INSERT INTO penduduk VALUES("730","247","3208176511900001","DINA MULYANI","CIAMIS","1990 -25-11","","2","11","1","2","","4","88","3","1","NANA HERDIANA","INAH","1","");
INSERT INTO penduduk VALUES("731","247","3208172208070003","RASYA ADITYA PRATAMA","CIAMIS","2007 -22-08","","1","11","1","1","","0","3","4","1","HARTONO","DINA MULYANI","1","");
INSERT INTO penduduk VALUES("732","247","3208177005130002","CAHAYA MEI KAILA PUTRI","KUNINGAN","2013 -30-05","","2","11","1","1","","1","1","4","1","HARTONO","DINA MULYANI","1","");
INSERT INTO penduduk VALUES("733","248","3208171307850002","NANA HERYANA","KUNINGAN","1985 -13-07","","1","11","1","2","","3","84","1","1","UNED JUNAEDI","NESAH","1","");
INSERT INTO penduduk VALUES("734","248","3208176001910004","EUIS HARTINI","MAJALENGKA","1991 -20-01","","2","11","1","2","","3","2","3","1","JOJO","MAE","1","");
INSERT INTO penduduk VALUES("735","248","3208171012090002","DENIS ANDRIANA","KUNINGAN","2009 -10-12","","1","11","1","1","","1","1","4","1","NANA HERYANA","EUIS HARTINI","1","");
INSERT INTO penduduk VALUES("736","249","3208177009910003","SUSI","KUNINGAN","1991 -30-09","","2","11","1","2","","5","2","3","1","MISTAR","SARINAH","1","");
INSERT INTO penduduk VALUES("737","249","3208172901150003","ALLFIAN VESSA HANIF MUFIDA","KUNINGAN","2015 14:30:00-29-01","","1","11","1","1","","1","1","4","1","TRI SUTRISNO","SUSI","1","");
INSERT INTO penduduk VALUES("738","249","3208175809110003","KILA WARISA PUTRI","KUNINGAN","2011 14:30:00-18-09","","2","11","1","1","","1","1","4","1","TRI SUTRISNO","SUSI","1","");
INSERT INTO penduduk VALUES("739","250","3208090301820005","SUARDI","KUNINGAN","1982 -03-01","","1","11","1","2","","3","88","1","1","SARWI","ALKAPI","1","");
INSERT INTO penduduk VALUES("740","250","3208175606860003","NIA KURNIASIH","KUNINGAN","1986 -16-06","","2","11","1","2","","4","2","3","1","JUNED","KONAH","1","");
INSERT INTO penduduk VALUES("741","250","3208170402140003","HAFIIZ KHAIRIY MAULANA","KUNINGAN","2014 08:00:00-04-02","","1","11","1","1","","1","1","4","1","SUARDI","NIA KURNIASIH","1","");
INSERT INTO penduduk VALUES("742","251","3208174406840003","YUSNANI","KUNINGAN","1984 -04-06","","2","11","1","2","","3","2","1","1","SUHIRO","ETI","1","");
INSERT INTO penduduk VALUES("743","251","3208172506060001","HERDIANA","KUNINGAN","2006 -25-06","","1","11","1","1","","0","3","4","1","RASKAM","YUSNANI","1","");
INSERT INTO penduduk VALUES("744","251","3208176602130003","YUSI YULIAWATI","KUNINGAN","2013 -26-02","","2","11","1","1","","1","1","4","1","RASKAM","YUSNANI","1","");
INSERT INTO penduduk VALUES("745","251","3208172412820003","RASKAM","KUNINGAN","1982 -24-12","","1","4","1","2","","3","81","9","1","DARMANTO","TARMINI","1","");
INSERT INTO penduduk VALUES("746","252","3208171305700002","BOGIE SAMEKTOADI","JAKARTA","1970 -13-05","","1","11","1","2","","0","88","1","1","AZ. SAMINGAN.. SH","SUARNI","1","");
INSERT INTO penduduk VALUES("747","252","3208174903810001","ESIH YUNINGSIH","KUNINGAN","1981 -09-03","","2","11","1","2","","8","65","3","1","GANI","OYOH","1","");
INSERT INTO penduduk VALUES("748","253","3208150705830001","MISTA","KUNINGAN","1983 -07-05","","1","11","1","2","","3","88","1","1","ASMA","MISNAH","1","");
INSERT INTO penduduk VALUES("749","253","3208174302840006","RINI NURHAENI","KUNINGAN","1984 -03-02","","2","11","1","2","","3","2","3","1","JUNED","KONAH","1","");
INSERT INTO penduduk VALUES("750","253","3208175006100004","RISMA ASMARANI","KUNINGAN","2010 -10-06","","2","11","1","1","","1","1","4","1","MISTA","RINI NURHAENI","1","");
INSERT INTO penduduk VALUES("751","254","3208170504470001","RUKISMAN","KUNINGAN","1947 -05-04","","1","11","1","2","","3","20","1","1","SANAHWI","RASINAH","1","");
INSERT INTO penduduk VALUES("752","254","3208174107550280","ATINI","KUNINGAN","1955 -01-07","","2","11","1","2","","3","2","3","1","MISKAT","-","1","");
INSERT INTO penduduk VALUES("753","255","3208174703510080","RIODAH","KUNINGAN","1951 -07-03","","2","11","1","4","","3","4","1","1","WIHARMA","URINAH","1","");
INSERT INTO penduduk VALUES("754","255","3208176103020004","ALISA PURNAMASARI","KUNINGAN","2002 -21-03","","2","11","1","1","","0","3","6","1","YADI SUPRIYADI","YAYAH ROSANAH","1","");
INSERT INTO penduduk VALUES("755","256","3208170107420203","SUHERMAN","KUNINGAN","1942 -01-07","","1","11","1","2","","3","20","1","1","SUARI","WARSITA","1","");
INSERT INTO penduduk VALUES("756","257","3208171801820001","NONO KARTONO","KUNINGAN","1982 -18-01","","1","11","1","2","","3","88","1","1","SUHRO","ETI","1","");
INSERT INTO penduduk VALUES("757","257","3208174101810010","OYOH","KUNINGAN","1981 -01-01","","2","11","1","2","","4","2","3","1","TARIM","NERWI","1","");
INSERT INTO penduduk VALUES("758","257","3208176001100001","HERLIYANI","KUNINGAN","2010 -20-01","","2","11","1","1","","1","1","4","1","KARTONO","OYOH","1","");
INSERT INTO penduduk VALUES("759","257","3208171204070001","ARIL PRIONO","KUNINGAN","2007 -12-04","","1","11","1","1","","1","1","4","1","KARTONO","OYOH","1","");
INSERT INTO penduduk VALUES("760","258","3208172004740007","SARDIANO","KUNINGAN","1974 -20-04","","1","11","1","2","","5","88","1","1","SUDIRJA","ASNAH","1","");
INSERT INTO penduduk VALUES("761","258","3208176002750002","ESIH","KUNINGAN","1975 -20-02","","2","11","1","2","","4","2","3","1","SIHARNA","SUKIAH","1","");
INSERT INTO penduduk VALUES("762","258","3208171702960003","EGA RISMAWAN","KUNINGAN","1996 -17-02","","1","11","1","1","","3","1","4","1","SARDIANO","ESIH","1","");
INSERT INTO penduduk VALUES("763","259","1502061706540002","NURYADI","KUNINGAN","1954 -17-06","","1","11","1","2","","3","19","1","1","ATMA DIRAKSA","SUKINI","1","");
INSERT INTO penduduk VALUES("764","259","1502066511710001","AISAH","MAJALENGKA","1971 -25-11","","2","11","1","2","","3","2","3","1","KOIM","ROHANA","1","");
INSERT INTO penduduk VALUES("765","259","1502064407060001","YAYANG YULISTYA","MERANGIN","2006 -04-07","","2","11","1","1","","0","3","4","1","NURYADI","AISAH","1","");
INSERT INTO penduduk VALUES("766","260","3207100706720002","ENDI","CIAMIS","1972 -07-06","","1","11","1","2","","3","20","1","1","INDA","ASNI","1","");
INSERT INTO penduduk VALUES("767","260","3207105404800005","NANI","CIAMIS","1980 -14-04","","2","11","1","2","","3","2","3","1","TARYONO","ADMI","1","");
INSERT INTO penduduk VALUES("768","260","3207101505960003","IMAM","CIAMIS","1996 -15-05","","1","11","1","1","","3","1","4","1","ENDI","NANI","1","");
INSERT INTO penduduk VALUES("769","260","3208171006070004","JEMI APRIANTO","CIAMIS","2007 -10-06","","1","11","1","1","","0","3","4","1","ENDI","NANI","1","");
INSERT INTO penduduk VALUES("770","261","3208170107340062","WARJAN","KUNINGAN","1934 -01-07","","1","11","1","2","","3","20","1","1","DATAM","MURTIAH","1","");
INSERT INTO penduduk VALUES("771","261","3208176006540010","UTI","KUNINGAN","1954 -20-06","","2","11","1","2","","3","2","3","1","WILANTA","JUWI","1","");
INSERT INTO penduduk VALUES("772","262","3208175511900002","AI RESTI MINTARSIH","SUKABUMI","1990 -15-11","","2","11","1","2","","4","2","9","1","-","-","1","");
INSERT INTO penduduk VALUES("773","263","3208175309940004","NURYANI","KUNINGAN","1994 -13-09","","2","11","1","1","","3","1","4","1","MISKA","NURATI","1","");
INSERT INTO penduduk VALUES("774","264","3208175002620006","NINGYAT","KUNINGAN","1962 -10-02","","2","11","1","2","","3","2","1","1","SUNARYA","KATNAH","1","");
INSERT INTO penduduk VALUES("775","265","3208172603670002","KUSMADI","KUNINGAN","1967 -26-03","","1","11","1","2","","3","9","1","1","MIHARDI","ARSITI","1","");
INSERT INTO penduduk VALUES("776","265","3208175102720008","SARTINI","KUNINGAN","1972 -11-02","","2","11","1","2","","3","9","3","1","SUHYONO","NATI","1","");
INSERT INTO penduduk VALUES("777","265","3208175701060004","RIANDIKA","KUNINGAN","2006 -17-01","","2","11","1","1","","1","1","4","1","KUSMADI","SARTINI","1","");
INSERT INTO penduduk VALUES("778","265","3208171312940002","SUTRISNO","KUNINGAN","1994 -13-12","","1","11","1","1","","0","3","4","1","KUSMADI","SARTINI","1","");
INSERT INTO penduduk VALUES("779","266","3208175202440002","SUINAH","KUNINGAN","1944 -12-02","","2","11","1","4","","3","9","1","1","NARSAN","MARHATI","1","");
INSERT INTO penduduk VALUES("780","266","3208172707750004","ERWIN SAPUTRA","KUNINGAN","1975 -27-07","","1","11","1","1","","3","1","4","1","SURYANA","SUINAH","1","");
INSERT INTO penduduk VALUES("781","267","3208170501610003","HERYANTO","KUNINGAN","1961 -05-01","","1","11","1","2","","3","9","1","1","SUPANDI","AMI","1","");
INSERT INTO penduduk VALUES("782","267","3208174207660001","IDAH","KUNINGAN","1966 -02-07","","2","11","1","2","","3","2","3","1","SURYANA","SUWINAH","1","");
INSERT INTO penduduk VALUES("783","267","3208174410850002","ENING HARTINI","KUNINGAN","1985 -04-10","","2","4","1","2","","3","2","4","1","HERYANTO","IDAH","1","");
INSERT INTO penduduk VALUES("784","267","3208171909940004","ADE KURNIAWAN","KUNINGAN","1994 -19-09","","1","11","1","1","","5","3","4","1","HERYANTO","IDAH","1","");
INSERT INTO penduduk VALUES("785","268","3208170801530002","ATAM","KUNINGAN","1953 -08-01","","1","11","1","2","","3","88","1","1","SUPARJA","SAMI","1","");
INSERT INTO penduduk VALUES("786","268","3208174711640002","ENUR","KUNINGAN","1964 -07-11","","2","11","1","2","","3","2","3","1","TANYUDI","SARINAH","1","");
INSERT INTO penduduk VALUES("787","268","3208175412010003","ATIN","KUNINGAN","2001 -14-12","","2","11","1","1","","0","3","4","1","ATAM","ENUR","1","");
INSERT INTO penduduk VALUES("788","268","3208173012940002","DANI SODIKIN","KUNINGAN","1994 -30-12","","1","11","1","1","","4","88","4","1","ATAM","ENUR","1","");
INSERT INTO penduduk VALUES("789","269","3208170107510119","RUSDIANA","KUNINGAN","1951 -01-07","","1","11","1","2","","3","88","1","1","ATMA DIRAKSA","SUKINI","1","");
INSERT INTO penduduk VALUES("790","269","3208175201600001","SARINAH","CIAMIS","1960 -12-01","","2","11","1","2","","3","2","3","1","SURANTA","UMIT","1","");
INSERT INTO penduduk VALUES("791","269","3208171909120003","PANJI MAULANA","KUNINGAN","2012 -19-09","","1","11","1","1","","1","1","4","1","RUSDIANA","SARINAH","1","");
INSERT INTO penduduk VALUES("792","269","3208172511830002","HARTONO","KUNINGAN","1983 -25-11","","1","11","1","2","","5","1","4","1","RUSDIANA","SARINAH","1","");
INSERT INTO penduduk VALUES("793","270","3208171101700006","SUBARI","KUNINGAN","1970 -11-01","","1","11","1","2","","3","9","1","1","TANYUDI","SARIAH","1","");
INSERT INTO penduduk VALUES("794","270","3208174409770003","RATNA","KUNINGAN","1977 -04-09","","2","11","1","2","","3","2","3","1","SUTARYA","SARINAH","1","");
INSERT INTO penduduk VALUES("795","270","3208176704050001","SINDI AULIA","KUNINGAN","2005 -27-04","","2","11","1","1","","1","1","4","1","SUBARI","RATNA","1","");
INSERT INTO penduduk VALUES("796","270","3208171904960002","REGI","KUNINGAN","1996 -19-04","","1","11","1","1","","4","15","4","1","SUBARI","RATNA","1","");
INSERT INTO penduduk VALUES("797","271","3208170107550205","RUSYANA","KUNINGAN","1955 -01-07","","1","11","1","2","","3","20","1","1","SANHURI","RUNAH","1","");
INSERT INTO penduduk VALUES("798","271","3208174401620002","MIS`AH","KUNINGAN","1962 -04-01","","2","11","1","2","","3","2","3","1","WINANTA","MURNI","1","");
INSERT INTO penduduk VALUES("799","271","3208171312860001","DODI","KUNINGAN","1986 -13-12","","1","11","1","2","","3","88","4","1","RUSYANA","MIS`AH","1","");
INSERT INTO penduduk VALUES("800","272","3208170304710001","WIDAYAN","KUNINGAN","1971 -03-04","","1","11","1","2","","3","19","1","1","SUPANDI","AMI","1","");
INSERT INTO penduduk VALUES("801","272","3208175207760001","ARNESAH","KUNINGAN","1977 -05-08","","2","11","1","2","","3","2","3","1","SUPANI","JUHATI","1","");
INSERT INTO penduduk VALUES("802","272","3208175610100003","AYU NINDA","KUNINGAN","2010 -16-10","","2","11","1","1","","1","1","4","1","WIDAYAN","ARNESAH","1","");
INSERT INTO penduduk VALUES("803","272","3208176101040001","ADE PIPIN JAELANI","KUNINGAN","2004 -21-01","","2","11","1","1","","0","3","4","1","WIDAYAN","ARNESAH","1","");
INSERT INTO penduduk VALUES("804","272","3208175503370001","AMI","KUNINGAN","1937 -15-03","","2","11","1","4","","3","1","0","1","ATMA MARDI","DASMI","1","");
INSERT INTO penduduk VALUES("805","273","3208172101440002","SUYATNA","KUNINGAN","1944 -21-01","","1","11","1","2","","3","20","1","1","WIRATMA","ARNI`AH","1","");
INSERT INTO penduduk VALUES("806","273","3208175002500003","MURSIH","KUNINGAN","1950 -10-02","","2","11","1","2","","3","2","3","1","SUATMA","NESWI","1","");
INSERT INTO penduduk VALUES("807","274","3208170107480119","SUTISMAN","KUNINGAN","1948 -01-07","","1","11","1","2","","3","20","1","1","WINATA","RATI","1","");
INSERT INTO penduduk VALUES("808","274","3208174107560113","ADINAH","KUNINGAN","1956 -01-07","","2","11","1","2","","3","2","3","1","ATMA ","SUKINI","1","");
INSERT INTO penduduk VALUES("809","275","3208170404740002","SUHENDAR","KUNINGAN","1974 -04-04","","1","11","1","2","","3","20","1","1","SUTISMAN","ADINAH","1","");
INSERT INTO penduduk VALUES("810","275","3208175807770001","SUARTI","KUNINGAN","1977 -18-07","","2","11","1","2","","3","2","3","1","SUHARNA","EMAH","1","");
INSERT INTO penduduk VALUES("811","275","3208176707040003","RISTIANI","KUNINGAN","2004 -27-07","","2","11","1","1","","0","3","4","1","SUHENDAR","SUARTI","1","");
INSERT INTO penduduk VALUES("812","275","3208172103110001","AJEN","KUNINGAN","2011 -21-03","","1","11","1","1","","1","1","4","1","SUHENDAR","SUARTI","1","");
INSERT INTO penduduk VALUES("813","276","3208170803540003","SUPIADI","KUNINGAN","1954 -08-03","","1","11","1","2","","3","88","1","1","ATMA RENEN","RANTA","1","");
INSERT INTO penduduk VALUES("814","276","3208174409590002","KUSNIAH","KUNINGAN","1959 -04-09","","2","11","1","2","","3","2","3","1","WINAHDI","EMI","1","");
INSERT INTO penduduk VALUES("815","276","3208172405850001","HARNO","KUNINGAN","1985 -24-05","","1","11","1","1","","3","88","4","1","SUPIADI","KUSNIAH","1","");
INSERT INTO penduduk VALUES("816","277","3208171409760001","HANDI SUHANDI","KUNINGAN","1977 -27-08","","1","11","1","2","","3","20","1","1","SANHURI","SOERAH","1","");
INSERT INTO penduduk VALUES("817","277","3208176106850001","IIN RIOWATI","KUNINGAN","1982 -05-08","","2","11","1","2","","3","2","3","1","RUSTADI","ISAH","1","");
INSERT INTO penduduk VALUES("818","277","3208174203020004","IMA AINUN MARWAH","KUNINGAN","2002 12:12:00-02-03","","2","11","1","1","","0","3","4","1","HANDI SUHANDI","IIN RIOWATI","1","");
INSERT INTO penduduk VALUES("819","277","3208175009060001","VINA NURAINI","KUNINGAN","2006 12:12:00-10-09","","2","11","1","1","","0","3","4","1","HANDI SUHANDI","IIN RIOWATI","1","");
INSERT INTO penduduk VALUES("820","277","3208175010070004","DINA TRI ASTUTI","KUNINGAN","2007 -10-10","","2","11","1","1","","0","3","4","1","HANDI SUHANDI","IIN RIOWATI","1","");
INSERT INTO penduduk VALUES("821","278","3208171501740004","DEDI JUBAEDI","KUNINGAN","1974 -15-01","","1","11","1","2","","3","20","1","1","DARYO","ETI","1","");
INSERT INTO penduduk VALUES("822","278","3208174503620004","SUNAH","KUNINGAN","1962 -05-03","","2","11","1","2","","3","2","3","1","SUATMA","NESWI","1","");
INSERT INTO penduduk VALUES("823","278","3208171005970010","DEDE ISMAIL","KUNINGAN","1997 -10-05","","1","11","1","1","","3","19","4","1","DEDI JUBAEDI","SUNAH","1","");
INSERT INTO penduduk VALUES("824","279","3208172104710003","ASTAR","KUNINGAN","1971 -21-04","","1","11","1","2","","3","20","1","1","SUYATNA","MURSIH","1","");
INSERT INTO penduduk VALUES("825","279","3208174709120002","RIVKA SEPTIANI","KUNINGAN","2012 -07-09","","2","11","1","1","","1","1","4","1","ASTAR","JUENAH","1","");
INSERT INTO penduduk VALUES("826","279","3208170901060003","EGI ROHYAT","KUNINGAN","2006 -09-01","","1","11","1","1","","1","1","4","1","ASTAR","JUENAH","1","");
INSERT INTO penduduk VALUES("827","280","3208171106810015","HARYANA","KUNINGAN","1981 -11-06","","1","11","1","1","","3","19","4","1","SUNARYA","KATNAH","1","");
INSERT INTO penduduk VALUES("828","281","3208171407300004","NAHRUDIN","KUNINGAN","1930 -14-07","","1","11","1","2","","3","20","1","1","-","ASITA","1","");
INSERT INTO penduduk VALUES("829","281","3208176508530001","ICIH","KUNINGAN","1953 -25-08","","2","11","1","2","","3","2","3","1","ASAN","WARSITI","1","");
INSERT INTO penduduk VALUES("830","282","3208170403380003","SUNARJA","KUNINGAN","1938 -04-03","","1","11","1","2","","3","9","1","1","SURA SAJU","JUNIRAH","1","");
INSERT INTO penduduk VALUES("831","282","3208174804390001","NARKETI","KUNINGAN","1939 -08-04","","2","11","1","2","","3","2","3","1","BASMAN","RUNSIH","1","");
INSERT INTO penduduk VALUES("832","283","3208170904740002","SUPRIANTONO","KUNINGAN","1974 -09-04","","1","11","1","2","","3","88","1","1","DULHAKIM","RUMNAH","1","");
INSERT INTO penduduk VALUES("833","283","3208176610000002","AI NURFALAH","KUNINGAN","2000 -26-10","","2","11","1","1","","0","3","4","1","SUPRIANTONO","NINING","1","");
INSERT INTO penduduk VALUES("834","283","3208171506060001","RIZKI NURZAKI","KUNINGAN","2006 -15-06","","1","11","1","1","","1","1","4","1","SUPRIANTONO","NINING","1","");
INSERT INTO penduduk VALUES("835","284","3210040212759921","ENCENG DIDI SAHYADI","MAJALENGKA","1975 -02-12","","1","11","1","2","","5","88","1","1","ENGKOS KOSIM","IIN SUINAH","1","");
INSERT INTO penduduk VALUES("836","284","3208174410840003","ENING HARTINI","KUNINGAN","1984 -04-10","","2","11","1","2","","4","2","3","1","HARYANTO","IDAH","1","");
INSERT INTO penduduk VALUES("837","284","3208174104060002","ENZELIA","KUNINGAN","2006 -01-04","","2","11","1","1","","0","3","4","1","HARYANA","ENING HARTINI","1","");
INSERT INTO penduduk VALUES("838","284","3208172705140001","KHOIRUL AZAM","KUNINGAN","2014  2-05-27","","1","11","1","1","","1","1","4","1","ENCENG DIDI SAHYADI","ENING HARTINI","1","");
INSERT INTO penduduk VALUES("839","285","3208171403820007","ANA SURYANA","KUNINGAN","1982 -14-03","","1","11","1","2","","3","8","1","1","TARDI","UTIMI","1","");
INSERT INTO penduduk VALUES("840","285","3208176202900002","AAN ANISAH","KUNINGAN","1990 -22-02","","2","11","1","2","","3","2","3","1","DARKONO","TURSIH","1","");
INSERT INTO penduduk VALUES("841","285","3208174105110003","ELSA ROPIAH","KUNINGAN","2011 -01-05","","2","11","1","1","","1","1","4","1","ANA SURYANA","AAN ANISAH","1","");
INSERT INTO penduduk VALUES("842","286","3208171806700008","UJU JUHANA","KUNINGAN","1970 -18-06","","1","11","1","2","","3","20","1","1","ARHUDI","MINAH","1","");
INSERT INTO penduduk VALUES("843","286","3208175812790004","YENTI","KUNINGAN","1979 -18-12","","2","11","1","2","","3","2","3","1","EMAN","WAROH","1","");
INSERT INTO penduduk VALUES("844","286","3208176105980009","HERAWATI","MAJALENGKA","1998 -21-05","","2","11","1","1","","3","1","4","1","UJU JUHANA","YENTI","1","");
INSERT INTO penduduk VALUES("845","286","3208175602060001","AAM KOMARIAH","KUNINGAN","2006 -16-02","","2","11","1","1","","1","1","4","1","UJU JUHANA","YENTI","1","");
INSERT INTO penduduk VALUES("846","287","3208171808730005","IKIN SARIKIN","KUNINGAN","1973 -18-08","","1","11","1","2","","3","88","1","1","SARIM","NASINAH","1","");
INSERT INTO penduduk VALUES("847","287","3208175907890004","IKA RATNIKA","CIAMIS","1989 -19-07","","2","11","1","2","","3","2","3","1","-","-","1","");
INSERT INTO penduduk VALUES("848","287","3208170801110003","ADI FATUROHMAN","KUNINGAN","2011 -08-01","","1","11","1","1","","1","1","4","1","IKIN SARIKIN","IKA RATNIKA","1","");
INSERT INTO penduduk VALUES("849","287","3208174504540003","NASINAH","KUNINGAN","1954 -05-04","","2","11","1","4","","3","1","9","1","ARHUDI","MINAH","1","");
INSERT INTO penduduk VALUES("850","288","3208174507480001","NATI","KUNINGAN","1948 -05-07","","2","11","1","4","","3","2","1","1","WINITA S.","SAPTI","1","");
INSERT INTO penduduk VALUES("851","289","3208171304860003","SUGIANA","KUNINGAN","1986 -13-04","","1","11","1","2","","4","88","1","1","DUDUNG","IJAH","1","");
INSERT INTO penduduk VALUES("852","289","3208176410920001","SRI ANDAYANI","KUNINGAN","1992 -24-10","","2","11","1","2","","4","2","3","1","SUTARBA","NINGYAT","1","");
INSERT INTO penduduk VALUES("853","289","3208175607130001","AFIKA JULIA","KUNINGAN","2013 -16-07","","2","11","1","1","","1","1","4","1","SUGIANA","SRI ANDAYANI","1","");
INSERT INTO penduduk VALUES("854","290","3306131701770002","SURIPTO","PURWOREJO","1977 -17-01","","1","11","1","2","","3","81","1","1","KAPIP UDIN","KAPIAH","1","");
INSERT INTO penduduk VALUES("855","290","3208174804750002","KARTINAH","KUNINGAN","1975 -08-04","","2","11","1","2","","3","2","3","1","NAHRUDIN","ARINAH","1","");
INSERT INTO penduduk VALUES("856","290","3208174604110001","IDA","KUNINGAN","2011 -06-04","","2","11","1","1","","1","1","4","1","SURIPTO","KARTINAH","1","");
INSERT INTO penduduk VALUES("857","290","3208170405530003","SUDIANA","KUNINGAN","1953 -04-05","","1","11","1","2","","3","20","9","1","SUKIRTA","ASITA","1","");
INSERT INTO penduduk VALUES("858","291","3208171005450004","SUHARNA","KUNINGAN","1945 -10-05","","1","11","1","2","","3","20","1","1","SANHAWI","SAWITA","1","");
INSERT INTO penduduk VALUES("859","291","3208175804500002","EMAH","KUNINGAN","1950 -18-04","","2","11","1","2","","3","2","3","1","MUSA","SAPNI","1","");
INSERT INTO penduduk VALUES("860","291","3208170611930001","USMAN","KUNINGAN","1993 -06-11","","1","11","1","1","","4","1","4","1","SUHARNA","EMAH","1","");
INSERT INTO penduduk VALUES("861","291","3208176805960002","SUSI","KUNINGAN","1996 -28-05","","2","11","1","1","","4","1","4","1","SUHARNA","EMAH","1","");
INSERT INTO penduduk VALUES("862","291","3208172505820002","OJO","KUNINGAN","1982 -25-05","","1","11","1","1","","3","88","4","1","SUHARNA","EMAH","1","");
INSERT INTO penduduk VALUES("863","291","3208171911930002","LELI SITI SOLIHAT","KUNINGAN","1993 -19-11","","1","11","1","2","","4","23","5","1","NONO","RUSMANAH","1","");
INSERT INTO penduduk VALUES("864","292","3208171406510001","IWAN","KUNINGAN","1951 -14-06","","1","11","1","2","","3","9","1","1","SUNARDI","ARKIMAH","1","");
INSERT INTO penduduk VALUES("865","292","3208176604540001","EMI","KUNINGAN","1954 -26-04","","2","11","1","2","","3","2","3","1","KARDI","SUKMI","1","");
INSERT INTO penduduk VALUES("866","292","3208174905050002","SINTIA DWIYANTI","KUNINGAN","2005 -09-05","","2","11","1","1","","0","1","6","1","MAMAN PIRMANSAH","NURYANI","1","");
INSERT INTO penduduk VALUES("867","293","3208174107320100","SARINAH","KUNINGAN","1932 -01-07","","2","11","1","4","","3","2","1","1","AMERNETI","RANTA","1","");
INSERT INTO penduduk VALUES("868","294","3208170512550004","EPENDI","KUNINGAN","1955 -05-12","","1","11","1","2","","3","88","1","1","WINARTA","SAREH","1","");
INSERT INTO penduduk VALUES("869","294","3208175804630001","TITI","KUNINGAN","1963 -18-04","","2","11","1","2","","3","2","3","1","SUTIRJA","GINI","1","");
INSERT INTO penduduk VALUES("870","294","3208176404860010","IIN HARTILAH","KUNINGAN","1986 -24-04","","2","11","1","2","","4","2","4","1","EPENDI","TITI","1","");
INSERT INTO penduduk VALUES("871","294","3208172512910002","NOJANG RUDIANA","KUNINGAN","1991 -25-12","","1","11","1","1","","4","84","4","1","EPENDI","TITI","1","");
INSERT INTO penduduk VALUES("872","295","3208171308750005","MAMAN","KUNINGAN","1975 -13-08","","1","11","1","2","","3","88","1","1","SUHARNA","EMAH","1","");
INSERT INTO penduduk VALUES("873","295","3208174710820005","DARWATI","KUNINGAN","1982 -07-10","","2","11","1","2","","3","2","3","1","ASMA","NARSIH","1","");
INSERT INTO penduduk VALUES("874","295","3208175912100002","NILDA","KUNINGAN","2010 -19-12","","2","11","1","1","","1","1","4","1","MAMAN","DARWATI","1","");
INSERT INTO penduduk VALUES("875","295","3208170704020006","ARIP RUSMANA","KUNINGAN","2002 -07-04","","1","11","1","1","","0","3","4","1","MAMAN","DARWATI","1","");
INSERT INTO penduduk VALUES("876","296","3208172006660004","SARKIM","KUNINGAN","1966 -20-06","","1","11","1","2","","3","84","1","1","WINARDI","EMI","1","");
INSERT INTO penduduk VALUES("877","296","3208175405750002","NUR CICIH","KUNINGAN","1975 -14-05","","2","11","1","2","","3","2","3","1","SURYANA","SUINAH","1","");
INSERT INTO penduduk VALUES("878","296","3208174304030003","TRI AYU WULANDARI","KUNINGAN","2003 -03-04","","2","11","1","1","","1","1","4","1","SARKIM","NURCICIH","1","");
INSERT INTO penduduk VALUES("879","296","3208170401970003","AEF SAEPULOH","KUNINGAN","1997 -04-01","","1","11","1","1","","1","1","4","1","SARKIM","NUR CICIH","1","");
INSERT INTO penduduk VALUES("880","296","3208171003920003","ADE KIRNO","KUNINGAN","1992 -10-03","","1","11","1","1","","0","3","4","1","SARKIM","NUR CICIH","1","");
INSERT INTO penduduk VALUES("881","297","3208172007530001","SARYONO","KUNINGAN","1953 -20-06","","1","11","1","2","","3","88","1","1","SUMADLI","ARMINAH","1","");
INSERT INTO penduduk VALUES("882","297","3208174107630263","ARTINI","KUNINGAN","1963 -01-07","","2","11","1","2","","3","2","3","1","WINAHDI","EMI","1","");
INSERT INTO penduduk VALUES("883","298","3208172707350002","SOMANTRI","SUMEDANG","1935 -27-07","","1","11","1","2","","3","20","1","1","SAMIN","IPAH","1","");
INSERT INTO penduduk VALUES("884","298","3208174311010004","SERLI NOVELAWATI","KUNINGAN","2001 -03-11","","2","11","1","1","","3","1","6","1","RUDI","ELIS","1","");
INSERT INTO penduduk VALUES("885","298","3208170101040002","JONIH","KUNINGAN","2004 -01-01","","1","11","1","1","","0","1","6","1","RUDI","ELIS","1","");
INSERT INTO penduduk VALUES("886","298","3208171004050006","MOHAMAD TAUFIQ","KUNINGAN","2005 -10-04","","1","11","1","1","","0","1","6","1","SOHIBUL TAJUDIN","ELIS","1","");
INSERT INTO penduduk VALUES("887","298","3208172010990004","OKI ARDIANSYAH","KUNINGAN","1999 -20-10","","1","11","1","1","","3","3","6","1","-","YANI","1","");
INSERT INTO penduduk VALUES("888","299","3208170107530250","NURYANA","KUNINGAN","1953 -01-07","","1","11","1","2","","3","9","1","1","WINAHDI","EMI","1","");
INSERT INTO penduduk VALUES("889","299","3208175012580004","ELINAH","KUNINGAN","1958 -10-12","","2","11","1","2","","3","2","3","1","WIRJA SASMITA","SATNI","1","");
INSERT INTO penduduk VALUES("890","299","3208176605050002","GHINA AULIA","KUNINGAN","2005 -26-05","","2","11","1","1","","1","1","6","1","UUS SUNARSO","ANI NURLIANI","1","");
INSERT INTO penduduk VALUES("891","300","3208171806740004","DADANG","KUNINGAN","1974 -18-06","","1","11","1","2","","3","20","1","1","SUHYONO","ENAH","1","");
INSERT INTO penduduk VALUES("892","300","3208174107770246","SURTINAH","KUNINGAN","1977 -01-07","","2","11","1","2","","3","2","3","1","RAKSA","RUKATNI","1","");
INSERT INTO penduduk VALUES("893","300","3208174606070005","LULU","KUNINGAN","2007 -06-06","","2","11","1","1","","1","1","4","1","DADANG","SURTINAH","1","");
INSERT INTO penduduk VALUES("894","300","3208171503990003","SAHRUL","KUNINGAN","1999 -15-03","","1","11","1","1","","3","3","4","1","DADANG","SURTINAH","1","");
INSERT INTO penduduk VALUES("895","300","3208174107420216","RUKATNI","KUNINGAN","1942 -01-07","","2","11","1","4","","1","1","8","1","ATMA SAJAR","SUKINI","1","");
INSERT INTO penduduk VALUES("896","301","3208171708660004","AGUS SODIKIN","KUNINGAN","1966 -17-08","","1","11","1","2","","3","88","1","1","EMOD","EPON","1","");
INSERT INTO penduduk VALUES("897","301","3208176907720004","ENTIN SULISTIANI","KUNINGAN","1972 -29-07","","2","11","1","2","","3","2","3","1","WINANTA","MURNI","1","");
INSERT INTO penduduk VALUES("898","301","3208172007930001","HENDRIYANA","KUNINGAN","1993 -20-07","","1","11","1","1","","5","3","4","1","AGUS SODIKIN","ENTIN SULISTIANI","1","");
INSERT INTO penduduk VALUES("899","302","3208172507690001","SUHRI","KUNINGAN","1969 -25-07","","1","11","1","2","","3","88","1","1","SAHRIDI","RUSTINI","1","");
INSERT INTO penduduk VALUES("900","302","3208175611780004","EEN ROHAENI","KUNINGAN","1978 -16-11","","2","11","1","2","","3","2","3","1","SARJONO","SUHINI","1","");
INSERT INTO penduduk VALUES("901","302","3208170906970004","RORI ERDIANA","KUNINGAN","1997 -09-06","","1","11","1","1","","4","15","4","1","SUHRI","EEN ROHAENI","1","");
INSERT INTO penduduk VALUES("902","302","3208172604110001","ABDU ROHIM","KUNINGAN","2011 -26-04","","1","11","1","1","","1","1","4","1","SUHRI","EEN ROHAENI","1","");
INSERT INTO penduduk VALUES("903","302","3208170304040001","DANDI APRILIAN","KUNINGAN","2004 -03-04","","1","11","1","1","","0","3","4","1","SUHRI","EEN ROHAENI","1","");
INSERT INTO penduduk VALUES("904","303","3208170107520225","SARJONO","KUNINGAN","1953 -03-01","","1","11","1","2","","3","9","1","1","WINANTA","MURNI","1","");
INSERT INTO penduduk VALUES("905","303","3208174107600281","SUHINI","KUNINGAN","1960 -02-11","","2","11","1","2","","3","2","3","1","WINARI","SATIMAH","1","");
INSERT INTO penduduk VALUES("906","304","3208170107710174","SUKANDA","KUNINGAN","1971 -01-07","","1","11","1","2","","3","20","1","1","DARYONO","ARSITI","1","");
INSERT INTO penduduk VALUES("907","304","3208176606750006","NERSIH","KUNINGAN","1975 -26-06","","2","11","1","2","","3","2","3","1","SAJA","SARINAH","1","");
INSERT INTO penduduk VALUES("908","304","3208171505980004","ADING","KUNINGAN","1998 -15-05","","1","11","1","1","","4","15","4","1","SUKANDA","NERSIH","1","");
INSERT INTO penduduk VALUES("909","304","3208176212050003","AFITRIYANI","KUNINGAN","2005 -22-12","","2","11","1","1","","1","1","4","1","SUKANDA","NERSIH","1","");
INSERT INTO penduduk VALUES("910","305","3208170107410084","DARYONO","KUNINGAN","1941 -01-07","","1","11","1","2","","3","20","1","1","ANTASAM","NETI","1","");
INSERT INTO penduduk VALUES("911","305","3208174107480197","ARSITI","KUNINGAN","1948 -01-07","","2","11","1","2","","3","2","3","1","WIHANA","MURNI","1","");
INSERT INTO penduduk VALUES("912","306","3208171405750005","KOSWARA","KUNINGAN","1975 -14-05","","1","11","1","2","","3","88","1","1","WIHANDI","UKI","1","");
INSERT INTO penduduk VALUES("913","306","3208176312820002","NONOH KARNAH","KUNINGAN","1982 -23-12","","2","11","1","2","","3","2","3","1","KOSASIH","PATIMAH","1","");
INSERT INTO penduduk VALUES("914","306","3208175210020001","WINDA SILPIANI","KUNINGAN","2002 -12-10","","2","11","1","1","","0","3","4","1","KOSWARA","NONOH KARNAH","1","");
INSERT INTO penduduk VALUES("915","306","3208171708110001","ZOVAN PEVLI RAMDANI","KUNINGAN","2011 -17-08","","1","11","1","1","","1","1","4","1","KOSWARA","NONOH KARNAH","1","");
INSERT INTO penduduk VALUES("916","307","3208170108510001","DIDI RIYADI","KUNINGAN","1951 -01-08","","1","11","1","2","","3","9","1","1","WIKARYA","UKINAH","1","");
INSERT INTO penduduk VALUES("917","307","3208174111610002","UTIRAH","KUNINGAN","1961 -01-11","","2","11","1","2","","3","2","3","1","SUHADI","MARSITA .","1","");
INSERT INTO penduduk VALUES("918","307","3208172105880004","TIKA RIYANA","KUNINGAN","1988 -21-05","","1","11","1","1","","3","88","4","1","DIDI RIYADI","UTIRAH","1","");
INSERT INTO penduduk VALUES("919","307","3208174107840337","IAM","KUNINGAN","1984 -01-07","","2","11","1","2","","4","2","5","1","PANDI","-","1","");
INSERT INTO penduduk VALUES("920","308","3208174107310076","TIOH","KUNINGAN","1931 -01-07","","2","11","1","4","","0","9","1","1","NATA","-","1","");
INSERT INTO penduduk VALUES("921","309","3208170505490001","SUHYANO","KUNINGAN","1949 -20-06","","1","11","1","2","","3","20","1","1","WINANTA","MURNI","1","");
INSERT INTO penduduk VALUES("922","309","3208175902590002","UTIN","KUNINGAN","1952 -17-07","","2","11","1","2","","3","2","3","1","SAHRONI","SARMAH","1","");
INSERT INTO penduduk VALUES("923","310","3208172706610002","TARYADI","KUNINGAN","1961 -27-06","","1","11","1","2","","3","9","1","1","WININTA","SAPTI","1","");
INSERT INTO penduduk VALUES("924","310","3208175901570002","UJU","KUNINGAN","1957 -19-01","","2","11","1","2","","3","2","3","1","SUKARYA","ASRIMAH","1","");
INSERT INTO penduduk VALUES("925","311","3208172706670003","PRIADI","KUNINGAN","1967 -27-06","","1","11","1","2","","3","20","1","1","SUHIRMAN","ARINI","1","");
INSERT INTO penduduk VALUES("926","311","3208175809720003","ROSIH","KUNINGAN","1972 -18-09","","2","11","1","2","","3","2","3","1","SAHUDI","NARYI","1","");
INSERT INTO penduduk VALUES("927","311","3208171107100003","RIPKI ADITYA","KUNINGAN","2010 -11-07","","1","11","1","1","","1","1","4","1","PRIADI","ROSIH","1","");
INSERT INTO penduduk VALUES("928","311","3208170810920005","ANDAR","KUNINGAN","1992 -08-10","","1","11","1","1","","4","1","4","1","PRIADI","ROSIH","1","");
INSERT INTO penduduk VALUES("929","311","3208171106100002","RIZKI ADITIA","KUNINGAN","2010 -11-06","","1","11","1","1","","1","1","4","1","PRIADI","ROSIH","1","");
INSERT INTO penduduk VALUES("930","312","3208170106430006","IRTA","KUNINGAN","1943 -01-06","","1","11","1","2","","3","9","1","1","MURNASAN","SUKI ","1","");
INSERT INTO penduduk VALUES("931","312","3208174805530001","SUARNI","KUNINGAN","1953 -08-05","","2","11","1","2","","3","2","3","1","WIKARJA","NARWIAH","1","");
INSERT INTO penduduk VALUES("932","312","3208170610870002","AJAT SUDRAJAT","KUNINGAN","1987 -06-10","","1","11","1","1","","3","1","4","1","IRTA","SUARNI","1","");
INSERT INTO penduduk VALUES("933","313","3208171606660001","HARYATNO","KUNINGAN","1966 -05-09","","1","11","1","2","","3","88","1","1","SAHRIDI","RUSTINI","1","");
INSERT INTO penduduk VALUES("934","313","3208174107720302","ASKINAH","KUNINGAN","1972 -01-07","","2","11","1","2","","3","2","3","1","SUHIRNO","SUMI","1","");
INSERT INTO penduduk VALUES("935","313","3208175705070002","REPIANTI","KUNINGAN","2007 -17-05","","2","11","1","1","","1","1","4","1","HARYATNO","ASKINAH","1","");
INSERT INTO penduduk VALUES("936","314","3208171109690003","ADEDI","KUNINGAN","1969 -11-09","","1","11","1","2","","3","88","1","1","SUWIKNO","SUMI","1","");
INSERT INTO penduduk VALUES("937","314","3208175109750006","ROSNANI","KUNINGAN","1975 -11-09","","2","11","1","2","","3","2","3","1","KOSASIH","PATIMAH","1","");
INSERT INTO penduduk VALUES("938","314","3208173107930004","RUDIANTO","KUNINGAN","1993 -31-07","","1","11","1","1","","0","1","4","1","ADEDI","ROSNANI","1","");
INSERT INTO penduduk VALUES("939","314","3208175904010004","SELA APRILIANI","KUNINGAN","2001 -19-04","","2","11","1","1","","1","1","4","1","ADEDI","ROSNANI","1","");
INSERT INTO penduduk VALUES("940","314","3208176402050007","SISKA AULIA","KUNINGAN","2005 -24-02","","2","11","1","1","","1","1","4","1","ADEDI","ROSNANI","1","");
INSERT INTO penduduk VALUES("941","315","3208170806730003","ROHENDI","KUNINGAN","1974 -08-02","","1","11","1","2","","3","20","1","1","WINAHDI","EMI","1","");
INSERT INTO penduduk VALUES("942","315","3208175202830005","RUNIAH","KUNINGAN","1983 -12-02","","2","11","1","2","","3","2","3","1","SAHRI","RUSNI","1","");
INSERT INTO penduduk VALUES("943","315","3208172904030001","REZA SETIADI","KUNINGAN","2003 -29-04","","1","11","1","1","","0","3","4","1","ROHENDI","RUNIAH","1","");
INSERT INTO penduduk VALUES("944","315","3208175703130001","RISMA WATI","KUNINGAN","2013 -17-03","","2","11","1","1","","1","1","4","1","ROHENDI","RUNIAH","1","");
INSERT INTO penduduk VALUES("945","315","3208175702340001","EMI","KUNINGAN","1934 -17-02","","2","11","1","1","","3","1","0","1","SANUKRI","SARYI","1","");
INSERT INTO penduduk VALUES("946","316","3208171108590004","JUHRI","KUNINGAN","1959 -11-08","","1","11","1","2","","3","20","1","1","SUANDI","RESAH","1","");
INSERT INTO penduduk VALUES("947","316","3208174203780002","NIAH","KUNINGAN","1978 -02-03","","2","11","1","2","","3","2","3","1","SUKARNA","NASPI","1","");
INSERT INTO penduduk VALUES("948","316","3208172406050001","RATNO","KUNINGAN","2005 -24-06","","1","11","1","1","","1","1","4","1","JUHRI","NIAH","1","");
INSERT INTO penduduk VALUES("949","316","3208171910940003","ANTON","KUNINGAN","1994 -19-10","","1","11","1","1","","3","1","4","1","JUHRI","NIAH","1","");
INSERT INTO penduduk VALUES("950","317","3208170107580289","KASA","KUNINGAN","1958 -01-07","","1","11","1","2","","3","20","1","1","WINANTA","MURNI","1","");
INSERT INTO penduduk VALUES("951","317","3208174107620354","WARTINI","KUNINGAN","1962 -01-07","","2","11","1","2","","3","2","3","1","SUNIRYA","SUTIRAH","1","");
INSERT INTO penduduk VALUES("952","317","3208176006390002","SUNIRYA","KUNINGAN","1939 -20-06","","2","11","1","4","","3","8","0","1","-","-","1","");
INSERT INTO penduduk VALUES("953","318","3208170107640152","BODI","KUNINGAN","1964 -01-07","","1","11","1","2","","3","20","1","1","SUNARDI","ARKIMAH","1","");
INSERT INTO penduduk VALUES("954","318","3208174107800396","ATINI","KUNINGAN","1980 -01-07","","2","11","1","2","","3","2","3","1","KARI","WARSIH","1","");
INSERT INTO penduduk VALUES("955","318","3208174507050004","SARTIKA","KUNINGAN","2005 -05-07","","2","11","1","1","","0","3","4","1","BODI","ATINI","1","");
INSERT INTO penduduk VALUES("956","319","3208171702460001","WANTA","KUNINGAN","1946 -17-02","","1","11","1","4","","3","20","1","1","BASNAN","RUMSIH","1","");
INSERT INTO penduduk VALUES("957","319","3208170612740002","ROTA","KUNINGAN","1979 -25-07","","1","11","1","3","","3","20","4","1","WANTA","JARNI","1","");
INSERT INTO penduduk VALUES("958","319","3208171202970005","JEKI","KUNINGAN","1997 -12-02","","1","11","1","1","","4","3","6","1","SULIS","SUNI","1","");
INSERT INTO penduduk VALUES("959","320","3208170107420177","SUHIRMAN","KUNINGAN","1942 -01-07","","1","11","1","2","","3","20","1","1","ATMA","SUKINI","1","");
INSERT INTO penduduk VALUES("960","320","3208175012590003","ACAH","KUNINGAN","1959 -10-12","","2","11","1","2","","3","2","3","1","WIHARTA","JUWI","1","");
INSERT INTO penduduk VALUES("961","321","3208170606670003","EBO RUKBAEDI","KUNINGAN","1967 -06-06","","1","11","1","2","","3","88","1","1","WININTA","SAPTI","1","");
INSERT INTO penduduk VALUES("962","321","3208176412720004","SUTIAH","KUNINGAN","1972 -24-12","","2","11","1","2","","3","2","3","1","SUKARJA","ISAH","1","");
INSERT INTO penduduk VALUES("963","321","3208170505070002","ALDO WIJAYA","KUNINGAN","2007 -05-05","","1","11","1","1","","0","3","4","1","EBO RUKBAEDI","SUTIAH","1","");
INSERT INTO penduduk VALUES("964","321","3208170505070001","ALDI WIJAYA","KUNINGAN","2007 -05-05","","1","11","1","1","","0","3","4","1","EBO RUKBAEDI","SUTIAH","1","");
INSERT INTO penduduk VALUES("965","321","3208175306910006","NINA AMELIA","KUNINGAN","1991 -13-06","","2","11","1","1","","4","1","4","1","EBO RUKBAEDI","SUTIAH","1","");
INSERT INTO penduduk VALUES("966","321","3208170510970004","BAYU PERMANA","KUNINGAN","1997 -05-10","","1","11","1","1","","4","3","4","1","EBO RUKBAEDI","SUTIAH","1","");
INSERT INTO penduduk VALUES("967","322","3208170605690002","ANDRI ARYANTO","KUNINGAN","1969 -06-05","","1","11","1","2","","3","88","1","1","SUNAHDI","IBOH","1","");
INSERT INTO penduduk VALUES("968","322","3208175207790001","ANI SURYANI","KUNINGAN","1979 -12-07","","2","11","1","2","","3","2","3","1","SAHYONO","NATI","1","");
INSERT INTO penduduk VALUES("969","322","3208171909070001","GALANG RAMADAN","KUNINGAN","2007 -19-09","","1","11","1","1","","0","3","4","1","ANDRI ARYANTO","ANI SURYANI","1","");
INSERT INTO penduduk VALUES("970","322","3208172401980001","YOGA PRATAMA","KUNINGAN","1998 -24-01","","1","11","1","1","","4","3","4","1","ANDRI ARYANTO","ANI SURYANI","1","");
INSERT INTO penduduk VALUES("971","323","3207101708750005","IPIN ARIPIN","CIAMIS","1975 -17-08","","1","11","1","2","","3","20","1","1","ADNA","KUSNI","1","");
INSERT INTO penduduk VALUES("972","323","3208175108760004","HARYATI","KUNINGAN","1976 -11-08","","2","11","1","2","","3","2","3","1","IRTA","SUARNI","1","");
INSERT INTO penduduk VALUES("973","323","3208172605940006","AGIP ALAMIA","KUNINGAN","1994 -26-05","","1","11","1","1","","4","1","4","1","WIDAYAN","HARYATI","1","");
INSERT INTO penduduk VALUES("974","323","3207105711060001","ADINA ARIANTI","CIAMIS","2006 -17-11","","2","11","1","1","","1","1","4","1","IPIN ARIPIN","HARYATI","1","");
INSERT INTO penduduk VALUES("975","324","3208172103770001","HARTOYO","KUNINGAN","1977 -21-03","","1","11","1","2","","3","88","1","1","SUNARYA","KATNAH","1","");
INSERT INTO penduduk VALUES("976","324","3208174612810003","OCOH","KUNINGAN","1981 -06-12","","2","11","1","2","","3","2","3","1","KASA","WARTINI","1","");
INSERT INTO penduduk VALUES("977","324","3208170508070001","DIMAS HENGKI","KUNINGAN","2007 -05-08","","1","11","1","1","","1","1","4","1","HARTOYO","OCOH","1","");
INSERT INTO penduduk VALUES("978","324","3208171710100001","DENDRA RADITIYA","KUNINGAN","2010 -17-10","","1","11","1","1","","1","1","4","1","HARTOYO","OCOH","1","");
INSERT INTO penduduk VALUES("979","324","3208172301010002","ASEP","KUNINGAN","2001 -23-01","","1","11","1","1","","0","3","4","1","HARTOYO","OCOH","1","");
INSERT INTO penduduk VALUES("980","325","3208172306720005","UJU JUNAWAN","KUNINGAN","1972 -23-06","","1","11","1","2","","3","88","1","1","ADIS","ANIRAH","1","");
INSERT INTO penduduk VALUES("981","325","3208176008740004","ANENGSIH","KUNINGAN","1974 -20-08","","2","11","1","2","","3","2","3","1","IRTA","SUARNI","1","");
INSERT INTO penduduk VALUES("982","325","3208176101130001","INTAN AULIA","KUNINGAN","2013 -21-01","","2","11","1","1","","1","1","4","1","UJU JUNAWAN","ANENGSIH","1","");
INSERT INTO penduduk VALUES("983","325","3208172806030002","AGUNG HIDAYAH","KUNINGAN","2003 -28-06","","1","11","1","1","","0","1","4","1","UJU JUNAWAN","ANENGSIH","1","");
INSERT INTO penduduk VALUES("984","325","3208172404960004","IYAN TRIYANA","KUNINGAN","1996 -24-04","","1","11","1","1","","5","19","4","1","UJU JUNAWAN","ANENGSIH","1","");
INSERT INTO penduduk VALUES("985","326","3208175401820004","KARSIH","KUNINGAN","1982 -14-01","","2","11","1","2","","3","2","1","1","WANTA","JARNI","1","");
INSERT INTO penduduk VALUES("986","326","3208174409140002","SHINTA SINTIANI","KUNINGAN","2014 07:00:00-04-09","","2","11","1","1","","1","1","4","1","SUDIRMAN","KARSIH","1","");
INSERT INTO penduduk VALUES("987","327","3208174107470162","RUSTINI","KUNINGAN","1947 -01-07","","2","11","1","4","","3","1","1","1","-----","ASKINAH","1","");
INSERT INTO penduduk VALUES("988","328","3208170110500003","TARYADI","KUNINGAN","1950 -01-10","","1","11","1","2","","3","20","1","1","SASTRA USWA","SANAH","1","");
INSERT INTO penduduk VALUES("989","328","3208175006580003","NANIH","KUNINGAN","1958 -10-06","","2","11","1","2","","3","2","3","1","SUHANI","SAPNI","1","");
INSERT INTO penduduk VALUES("990","328","3208177008090002","SRI ANDINI","KUNINGAN","2009 -30-08","","2","11","1","1","","1","1","4","1","TARYADI","NANIH","1","");
INSERT INTO penduduk VALUES("991","328","3208175010870005","UTINI","KUNINGAN","1987 -10-10","","2","11","1","2","","3","2","4","1","TARYADI","NANIH","1","");
INSERT INTO penduduk VALUES("992","328","3208170210860001","DENI","BANDUNG","1986 -02-10","","1","11","1","2","","3","20","5","1","-","-","1","");
INSERT INTO penduduk VALUES("993","329","3208170403900003","RUSMANTO","KUNINGAN","1990 -04-03","","1","11","1","2","","3","88","1","1","SARYONO","ARTINI","1","");
INSERT INTO penduduk VALUES("994","329","3207104803920001","DIAN KOMALA","CIAMIS","1992 -08-03","","2","11","1","2","","3","2","3","1","NARYO","ANI","1","");
INSERT INTO penduduk VALUES("995","329","3208170403140001","REYHAN MAULANA","KUNINGAN","2014 12:12:00-04-03","","1","11","1","1","","1","1","4","1","RUSMANTO","DIAN KOMALA","1","");
INSERT INTO penduduk VALUES("996","330","3208170112720008","ADUN","KUNINGAN","1972 -01-12","","1","11","1","2","","3","88","1","1","SUHENDI","NURSIH","1","");
INSERT INTO penduduk VALUES("997","330","3208175907850005","JUNENGSIH","KUNINGAN","1985 -19-07","","2","11","1","2","","3","2","3","1","MAHRUDIN","EBOH","1","");
INSERT INTO penduduk VALUES("998","330","3208173001120001","RENDHI MUHI ALPARIZD","KUNINGAN","2012 -30-01","","1","11","1","1","","1","1","4","1","ADUN","JUNENGSIH","1","");
INSERT INTO penduduk VALUES("999","331","3208172505700003","AMIN PRIYATNA","KUNINGAN","1970 -25-05","","1","11","1","2","","3","19","1","1","PARLAN","SUHAMI","1","");
INSERT INTO penduduk VALUES("1000","331","3208174305690002","ATINI","KUNINGAN","1967 -20-06","","2","11","1","2","","3","2","3","1","HALIMI","SARTILAH","1","");
INSERT INTO penduduk VALUES("1001","331","3208174502040003","SITI NURPAJRIAH","KUNINGAN","2004 12:12:00-05-02","","2","11","1","1","","0","3","4","1","AMIN PRIYATNA","ATINI","1","");
INSERT INTO penduduk VALUES("1002","331","3208172301960003","ARI KURNIAWAN","KUNINGAN","1996 -23-01","","1","11","1","1","","4","19","4","1","AMIN PRIYATNA","ATINI","1","");
INSERT INTO penduduk VALUES("1003","331","3208172705080001","ILHAM NURPAUJAN","KUNINGAN","2008 12:12:00-27-05","","1","11","1","1","","1","1","4","1","AMIN PRIYATNA","ATINI","1","");
INSERT INTO penduduk VALUES("1004","332","3208170107420097","SAHUDI","KUNINGAN","1942 -01-07","","1","11","1","2","","3","9","1","1","WIHATMA","SATI","1","");
INSERT INTO penduduk VALUES("1005","332","3208174107480118","NARYI","KUNINGAN","1948 -01-07","","2","11","1","2","","3","2","3","1","SURJA","NENTI","1","");
INSERT INTO penduduk VALUES("1006","333","3208170406640005","RUDIANA","KUNINGAN","1964 -04-06","","1","1","1","2","","3","9","1","1","SAHUDI","NARYI","1","");
INSERT INTO penduduk VALUES("1007","333","3208174507700003","ARKI`AH","KUNINGAN","1970 -05-07","","2","11","1","2","","3","2","3","1","SANUHRI","KARMI","1","");
INSERT INTO penduduk VALUES("1008","333","3208171312060001","RENALDI","KUNINGAN","2006 -13-12","","1","11","1","1","","1","1","4","1","RUDIANA","ARKIAH","1","");
INSERT INTO penduduk VALUES("1009","333","3208172907990002","DIKI","KUNINGAN","1999 -29-07","","1","11","1","1","","1","1","4","1","RUDIANA","ARKIAH","1","");
INSERT INTO penduduk VALUES("1010","334","3208170506070003","PAREL ADITIA PUTRA","KUNINGAN","2007 -05-06","","1","11","1","1","","1","1","4","1","ROHAMAN","ATING SURYANI","1","");
INSERT INTO penduduk VALUES("1011","334","3208175507030001","ERLIANI PUTRI","KUNINGAN","2003 -12-11","","2","11","1","1","","1","1","4","1","ROHAMAN","ATING SURYANI","1","");
INSERT INTO penduduk VALUES("1012","334","3208174710360001","RUNTI","KUNINGAN","1936 -07-10","","2","11","1","4","","3","20","0","1","SARYA","SARYI","1","");
INSERT INTO penduduk VALUES("1013","335","3208172811650002","OMAN HERMANSYAH","KUNINGAN","1965 -28-11","","1","11","1","2","","3","9","1","1","SANUHRI","KARNI","1","");
INSERT INTO penduduk VALUES("1014","335","3208174107700158","MIMIN","KUNINGAN","1970 -01-07","","2","11","1","2","","3","2","3","1","SUIRTA","RUKANTA","1","");
INSERT INTO penduduk VALUES("1015","335","3208176703060001","AAS AISAH","KUNINGAN","2006 -27-03","","2","11","1","1","","1","1","4","1","OMAN HERMANSYAH","MIMIN","1","");
INSERT INTO penduduk VALUES("1016","335","3208170611000006","ALEK NUROHMAN","KUNINGAN","2000 -06-11","","1","11","1","1","","1","1","4","1","OMAN HERMANSYAH","MIMIN","1","");
INSERT INTO penduduk VALUES("1017","335","3208172701900002","EKO YOHANA","KUNINGAN","1990 -27-01","","1","11","1","1","","3","88","4","1","OMAN HERMANSYAH","MIMIN","1","");
INSERT INTO penduduk VALUES("1018","336","3208171002790002","DONI","KUNINGAN","1979 -10-02","","1","11","1","2","","3","20","1","1","TARYADI","NANIH","1","");
INSERT INTO penduduk VALUES("1019","336","3208175302880002","SARTINAH","KUNINGAN","1988 -13-02","","2","11","1","2","","3","2","3","1","SUADNARI","LUCI","1","");
INSERT INTO penduduk VALUES("1020","336","3208174108060004","NOVIANI","KUNINGAN","2006 -01-08","","2","11","1","1","","0","3","4","1","DONI","SARTINAH","1","");
INSERT INTO penduduk VALUES("1021","336","3208170901140001","YUDYS PRASETIA","KUNINGAN","2014 -09-01","","1","11","1","1","","1","1","4","1","DONI","SARTINAH","1","");
INSERT INTO penduduk VALUES("1022","337","3208170505540001","SUDARNO","KUNINGAN","1954 -05-05","","1","11","1","2","","3","20","1","1","SUHANI","NAPTI","1","");
INSERT INTO penduduk VALUES("1023","337","3208174907630005","SUMINAH","KUNINGAN","1963 -09-07","","2","11","1","2","","3","2","3","1","SUTARYO","NASIH","1","");
INSERT INTO penduduk VALUES("1024","338","3208170107650192","DARMADI","KUNINGAN","1965 -01-07","","1","11","1","2","","3","88","1","1","SUTARYO","NASIH","1","");
INSERT INTO penduduk VALUES("1025","338","3208176010700005","TITIN","KUNINGAN","1970 -20-10","","2","11","1","2","","3","2","3","1","SADI","ARUM","1","");
INSERT INTO penduduk VALUES("1026","338","3208171008020002","AGUS RIANSAH","KUNINGAN","2002 -10-08","","1","11","1","1","","1","1","4","1","DARMADI","TITIN","1","");
INSERT INTO penduduk VALUES("1027","339","3208170509680001","SUHANA","KUNINGAN","1968 -05-09","","1","11","1","2","","3","20","1","1","SANTA","SAIRAH","1","");
INSERT INTO penduduk VALUES("1028","339","3208175707730002","NURYATI","KUNINGAN","1973 -17-07","","2","11","1","2","","3","2","3","1","SUNANDI","RUNANTI","1","");
INSERT INTO penduduk VALUES("1029","339","3208175310020001","SELI MARLINA","KUNINGAN","2002 -13-10","","2","11","1","1","","0","3","4","1","SUHANA","NURYATI","1","");
INSERT INTO penduduk VALUES("1030","339","3208170508080003","RENAL MAULANA","KUNINGAN","2008 -05-08","","1","11","1","1","","1","1","4","1","SUHANA","NURYATI","1","");
INSERT INTO penduduk VALUES("1031","340","3208170107500205","MULYANA","KUNINGAN","1950 -01-07","","1","11","1","2","","3","20","1","1","MADHARI","SUNIRAH","1","");
INSERT INTO penduduk VALUES("1032","340","3208174107530319","RUKINAH","KUNINGAN","1953 -01-07","","2","11","1","2","","3","2","3","1","SANHURI","NARWITA","1","");
INSERT INTO penduduk VALUES("1033","341","3208170106480004","ADIS","KUNINGAN","1948 -01-06","","1","11","1","2","","3","20","1","1","UTA","NAWAT","1","");
INSERT INTO penduduk VALUES("1034","341","3208174704530002","ANIRAH","KUNINGAN","1953 -07-04","","2","11","1","2","","3","2","3","1","SUARMA","UNAH","1","");
INSERT INTO penduduk VALUES("1035","341","3208175507950004","WIWI WINANGSIH","KUNINGAN","1995 -15-07","","2","11","1","1","","3","1","4","1","ADIS","ANIRAH","1","");
INSERT INTO penduduk VALUES("1036","342","3208170608640002","DARKA","KUNINGAN","1964 -06-08","","1","11","1","2","","3","9","1","1","SUHENDI","NURSIH","1","");
INSERT INTO penduduk VALUES("1037","342","3208175007600001","ADMI","KUNINGAN","1960 -10-07","","2","11","1","2","","3","2","3","1","SURYANA","SUWINAH","1","");
INSERT INTO penduduk VALUES("1038","342","3208172512690004","SAPTA","KUNINGAN","1969 -25-12","","1","11","1","1","","3","88","9","1","SUHENDI","NURSIH","1","");
INSERT INTO penduduk VALUES("1039","342","3208170606740003","NADI","KUNINGAN","1974 -06-06","","1","11","1","1","","3","88","9","1","SUHENDI","NURSIH","1","");
INSERT INTO penduduk VALUES("1040","343","3208171112430002","SUDINYA","KUNINGAN","1943 -11-12","","1","11","1","2","","3","9","1","1","WIJATMA","ICOH","1","");
INSERT INTO penduduk VALUES("1041","343","3208174107510119","RUNAH","KUNINGAN","1951 -01-07","","2","11","1","2","","3","2","3","1","AKRIB","RUKINTA","1","");
INSERT INTO penduduk VALUES("1042","343","3208170107770336","SUPENA","KUNINGAN","1977 -01-07","","1","11","1","1","","3","9","4","1","SUDINYA","RUNAH ..","1","");
INSERT INTO penduduk VALUES("1043","344","3208170107580259","SANAN","KUNINGAN","1958 -01-07","","1","11","1","2","","3","9","1","1","SANUHWI","SARSIH","1","");
INSERT INTO penduduk VALUES("1044","344","3208174107640208","USINAH","KUNINGAN","1964 -01-07","","2","11","1","2","","3","2","3","1","NARYA","URITA","1","");
INSERT INTO penduduk VALUES("1045","344","3208171610900008","SUDARNA","KUNINGAN","1990 -16-10","","1","11","1","1","","3","88","4","1","SANAN","USINAH","1","");
INSERT INTO penduduk VALUES("1046","345","3208171603480003","SUNANDI","KUNINGAN","1948 -16-03","","1","11","1","2","","3","20","1","1","ATMA RENEN","RANTA","1","");
INSERT INTO penduduk VALUES("1047","345","3208174101550004","RUNANTI","KUNINGAN","1955 -01-01","","2","11","1","2","","3","2","3","1","DUNHALI","ARINAH","1","");
INSERT INTO penduduk VALUES("1048","345","3208170609780003","UKAR","KUNINGAN","1978 -06-09","","1","11","1","3","","3","19","4","1","SUNANDI","RUNANTI","1","");
INSERT INTO penduduk VALUES("1049","345","3208172811930007","NANA SUHERNA","KUNINGAN","1993 -28-11","","1","11","1","1","","4","15","4","1","SUNANDI","RUNANTI","1","");
INSERT INTO penduduk VALUES("1050","345","3208175407950005","OOM KOMARIAH","KUNINGAN","1995 -14-07","","2","11","1","1","","3","1","4","1","SUNANDI","RUNANTI","1","");
INSERT INTO penduduk VALUES("1051","346","3208170104720009","RAHMAN","KUNINGAN","1972 -01-04","","1","11","1","2","","3","88","1","1","WIHANDI","UKI","1","");
INSERT INTO penduduk VALUES("1052","346","3208174506720008","ARKESIH","KUNINGAN","1972 -05-06","","2","11","1","2","","3","2","3","1","WISANTA","RUNAH","1","");
INSERT INTO penduduk VALUES("1053","346","3208171004930001","HERWAN","KUNINGAN","1993 -10-04","","1","11","1","1","","0","3","4","1","RAHMAN","ARKESIH","1","");
INSERT INTO penduduk VALUES("1054","346","3208171401000002","HIDAYAT","KUNINGAN","2000 -14-01","","1","11","1","1","","1","1","4","1","RAHMAN","ARKESIH","1","");
INSERT INTO penduduk VALUES("1055","347","3208171709570002","HARYONO","KUNINGAN","1957 -17-09","","1","11","1","2","","3","20","1","1","SUKIRTA","ASITA","1","");
INSERT INTO penduduk VALUES("1056","347","3208177009630003","KUSNATI","KUNINGAN","1963 -30-09","","2","11","1","2","","3","2","3","1","WIHANDI","UKI","1","");
INSERT INTO penduduk VALUES("1057","347","3208174108930006","EUIS DIAH","KUNINGAN","1993 -01-08","","2","11","1","1","","4","15","4","1","HARYONO","KUSNATI","1","");
INSERT INTO penduduk VALUES("1058","348","3208171603760002","MEMED","KUNINGAN","1976 -16-03","","1","11","1","2","","3","88","1","1","SUWIRNO","SUMI","1","");
INSERT INTO penduduk VALUES("1059","348","3208174604810004","SARTINI","KUNINGAN","1981 -06-04","","2","11","1","2","","3","2","3","1","WIHARYA","SUKMI","1","");
INSERT INTO penduduk VALUES("1060","348","3208172206100003","RAMA DANI","KUNINGAN","2010 -22-06","","1","11","1","1","","1","1","4","1","MEMED","SARTINI","1","");
INSERT INTO penduduk VALUES("1061","348","3208171412020003","SETIADI","KUNINGAN","2002 -14-12","","1","11","1","1","","0","3","4","1","MEMED","SARTINI","1","");
INSERT INTO penduduk VALUES("1062","348","3208174107270091","WARTI","KUNINGAN","1927 -01-07","","2","11","1","4","","3","1","9","1","-","-","1","");
INSERT INTO penduduk VALUES("1063","349","3208170107380184","SUATNA","KUNINGAN","1938 -01-07","","1","11","1","2","","3","20","1","1","MUSTAWI","KANTI","1","");
INSERT INTO penduduk VALUES("1064","349","3208174305310001","ARMI","KUNINGAN","1931 -03-05","","2","11","1","2","","3","2","3","1","SARYA","SARYI","1","");
INSERT INTO penduduk VALUES("1065","350","3208170405570002","MISNADI","KUNINGAN","1957 -04-05","","1","11","1","2","","3","20","1","1","MINANTA","MURNI","1","");
INSERT INTO penduduk VALUES("1066","350","3208175206730003","ONIH SUKAENAH","KUNINGAN","1973 -12-06","","2","11","1","2","","3","2","3","1","ILON","RUMSAH","1","");
INSERT INTO penduduk VALUES("1067","350","3208175910080001","ERINA","KUNINGAN","2008 -19-10","","2","11","1","1","","1","1","4","1","MISNADI","ONIH SUKAENAH","1","");
INSERT INTO penduduk VALUES("1068","350","3208172904960004","ANANDANG","KUNINGAN","1996 -29-04","","1","11","1","1","","4","19","4","1","MISNADI","ONIH SUKAENAH","1","");
INSERT INTO penduduk VALUES("1069","351","3208170802660004","NURDIANA","KUNINGAN","1966 -08-02","","1","11","1","2","","3","88","1","1","SUMARDI","ARMINAH","1","");
INSERT INTO penduduk VALUES("1070","351","3208175101710002","SUHATI","KUNINGAN","1971 -11-01","","2","11","1","2","","3","2","3","1","SUHIRMAN","ARINI","1","");
INSERT INTO penduduk VALUES("1071","351","3208175404930004","EVA","KUNINGAN","1993 -14-04","","2","11","1","1","","4","3","4","1","NURDIANA","SUHATI","1","");
INSERT INTO penduduk VALUES("1072","351","3208171111990004","ANGGA","KUNINGAN","1999 -11-11","","1","11","1","1","","0","3","4","1","NURDIANA","SUHATI","1","");
INSERT INTO penduduk VALUES("1073","352","3208170107470106","SUWIRNO","KUNINGAN","1947 -01-07","","1","11","1","2","","3","20","1","1","WINARDI","WARTI","1","");
INSERT INTO penduduk VALUES("1074","352","3208174107510243","SUMI","KUNINGAN","1951 -01-07","","2","11","1","2","","3","2","3","1","TARHOMI","UMINAH","1","");
INSERT INTO penduduk VALUES("1075","353","3327021504910003","EDI APRILIYANTO","PEMALANG","1991 -15-04","","1","11","1","2","","3","15","1","1","ROSO SISWANTO","TUTI WINARSIH","1","");
INSERT INTO penduduk VALUES("1076","353","3208176509940001","LINDAWATI","KUNINGAN","1994 -25-09","","2","11","1","2","","4","2","3","1","DARMADI","TITIN","1","");
INSERT INTO penduduk VALUES("1077","353","3208172211130001","ALFIAN RISGIE MUTHA","KUNINGAN","2013 -22-11","","1","11","1","1","","1","1","4","1","EDI APRILIYANTO","LINDAWATI","1","");
INSERT INTO penduduk VALUES("1078","354","3208174508820007","TATI","KUNINGAN","1982 -05-08","","2","11","1","2","","3","2","1","1","SUDARNO","SUMINAH","1","");
INSERT INTO penduduk VALUES("1079","354","3208177105020006","AMELIA","KUNINGAN","2002 -31-05","","2","11","1","1","","3","3","4","1","SARTAM","TATI","1","");
INSERT INTO penduduk VALUES("1080","354","3208172308110001","FADHIL PRADITIA","KUNINGAN","2011 -23-08","","1","11","1","1","","1","1","4","1","SARTAM","TATI","1","");
INSERT INTO penduduk VALUES("1081","355","3208171910740001","ENDANG SUHENDAR","KUNINGAN","1974 -19-10","","1","11","1","2","","5","88","1","1","SAEMAN","ASWINAH","1","");
INSERT INTO penduduk VALUES("1082","355","3208174507760005","IKAH SUTIKAH","KUNINGAN","1976 -05-07","","2","11","1","2","","3","2","3","1","SUTARYO","NASIH","1","");
INSERT INTO penduduk VALUES("1083","355","3208170510030001","ERIK SETIAWAN","KUNINGAN","2003 -05-10","","1","11","1","1","","1","1","4","1","ENDANG SUHENDAR","IKAH SUTIKAH","1","");
INSERT INTO penduduk VALUES("1084","355","3208176509980001","SEPTIANI NURANISA","KUNINGAN","1998 -25-09","","2","11","1","1","","0","3","4","1","ENDANG SUHENDAR","IKAH SUTIKAH","1","");
INSERT INTO penduduk VALUES("1085","355","3208174110400002","NASIH","KUNINGAN","1940 -01-10","","2","11","1","4","","3","1","8","1","SANUKRI","SARYI","1","");
INSERT INTO penduduk VALUES("1086","356","3208173005670002","DARKONO","KUNINGAN","1967 -30-05","","1","11","1","2","","3","88","1","1","WARJAN","UTI","1","");
INSERT INTO penduduk VALUES("1087","356","3208175004720006","TURSIH","KUNINGAN","1972 -10-04","","2","11","1","2","","3","2","3","1","SUHYADI","TIOH","1","");
INSERT INTO penduduk VALUES("1088","356","3208172005050004","ADE PERMANA","KUNINGAN","2005 -20-05","","1","11","1","1","","0","1","4","1","DARKONO","TURSIH","1","");
INSERT INTO penduduk VALUES("1089","357","3208171406880002","HERYANA","KUNINGAN","1988 -14-06","","1","11","1","2","","4","88","1","1","RUDIANA","ARKIAH","1","");
INSERT INTO penduduk VALUES("1090","357","3208174603970003","EVA ERWATI","KUNINGAN","1997 -06-03","","2","11","1","2","","3","2","3","1","SUTARMAN","SUPINI","1","");
INSERT INTO penduduk VALUES("1091","358","3208176403510002","RUKANTI","KUNINGAN","1951 -24-03","","2","11","1","4","","3","20","1","1","MADHARI","SUWIRAH","1","");
INSERT INTO penduduk VALUES("1092","359","3208172909750005","UHA AZHARI","KUNINGAN","1975 -29-09","","1","11","1","2","","0","88","1","1","ABIDIN","SASKI","1","");
INSERT INTO penduduk VALUES("1093","359","3208175211820004","NUR HAETI","KUNINGAN","1982 -12-11","","2","11","1","2","","3","2","3","1","SANAN","USINAH","1","");
INSERT INTO penduduk VALUES("1094","359","3208175208020003","NIDA HOERUNISA","KUNINGAN","2002 -12-08","","2","11","1","1","","1","1","4","1","UHA AZHARI","NUR HAETI","1","");
INSERT INTO penduduk VALUES("1095","360","3208170302680004","ENDI","KUNINGAN","1968 -03-02","","1","11","1","2","","5","85","1","1","SUATNA","ARMI","1","");
INSERT INTO penduduk VALUES("1096","360","3208174206750005","ENTIN","KUNINGAN","1975 -02-06","","2","11","1","2","","3","2","3","1","SANHURI","EROT","1","");
INSERT INTO penduduk VALUES("1097","360","3208172502970002","HARIS HERMAWAN","KUNINGAN","1997 -25-02","","1","11","1","1","","5","1","4","1","ENDI","ENTIN","1","");
INSERT INTO penduduk VALUES("1098","360","3208172907020006","IRPAN ZULIANA","KUNINGAN","2002 -28-07","","1","11","1","1","","3","3","4","1","ENDI","ENTIN","1","");
INSERT INTO penduduk VALUES("1099","361","3208170506800008","HERDIN","KUNINGAN","1980 -05-06","","1","11","1","2","","4","15","1","1","ADIS","ANIRAH","1","");
INSERT INTO penduduk VALUES("1100","361","3208174903810003","NURLAELA","KUNINGAN","1981 -09-03","","2","11","1","2","","3","2","3","1","RUSTANDI","ECOH","1","");
INSERT INTO penduduk VALUES("1101","361","3208171111020009","HAMDAN RAMDANI","KUNINGAN","2002 -11-11","","1","11","1","1","","0","1","4","1","HERDIN","NURLAELA","1","");
INSERT INTO penduduk VALUES("1102","361","3208176610100001","ALDILA NURAFNI","KUNINGAN","2010 -26-10","","2","11","1","1","","1","1","4","1","HERDIN","NURLAELA","1","");
INSERT INTO penduduk VALUES("1103","362","3208174207280001","SARTILAH","KUNINGAN","1928 -02-07","","2","11","1","4","","3","2","1","1","ATMAJA","ATINI","1","");
INSERT INTO penduduk VALUES("1104","362","3208175005650003","IJAH","KUNINGAN","1965 -10-05","","2","11","1","3","","3","4","4","1","HALIMI","SARTILAH","1","");
INSERT INTO penduduk VALUES("1105","362","3208176103900001","TITIN SUPRIATIN","KUNINGAN","1990 -21-03","","2","11","1","1","","3","23","6","1","ROHMAN","ATIMI","1","");
INSERT INTO penduduk VALUES("1106","363","3208170107890234","JAJANG","KUNINGAN","1988 -10-08","","1","11","1","2","","5","15","1","1","MULYANA","RUKINAH","1","");
INSERT INTO penduduk VALUES("1107","363","3208174509970007","MALA KOMALASARI","KUNINGAN","1996 -05-09","","2","11","1","2","","4","2","3","1","DEDI GUNAWAN","IDAH SANTIDAH","1","");
INSERT INTO penduduk VALUES("1108","363","3208171512140002","MUHAMMAD AINAL QOLBI","KUNINGAN","2014 20:30:00-15-12","","1","11","1","1","","1","1","4","1","JAJANG","MALA KOMALASARI","1","");
INSERT INTO penduduk VALUES("1109","364","3208170507890007","MAMAN","KUNINGAN","1989 -05-07","","1","11","1","2","","3","19","1","1","KANCIL","RINAH","1","");
INSERT INTO penduduk VALUES("1110","364","3208175510970003","ANI LESTIANI","KUNINGAN","1997 -15-10","","2","11","1","2","","3","2","3","1","SUHANAN","RATNINGSIH","1","");
INSERT INTO penduduk VALUES("1111","365","3208170906720005","RUSNADI","KUNINGAN","1972 -09-06","","1","11","1","2","","3","88","1","1","ADNA","ISAH","1","");
INSERT INTO penduduk VALUES("1112","365","3208176001000003","ELA NURCAHYANI","KUNINGAN","2000 -20-01","","2","11","1","1","","3","3","4","1","RUSNADI","EROS ROSANAH","1","");
INSERT INTO penduduk VALUES("1113","365","3208171108070003","JASTIN ROSDIANA","KUNINGAN","2007 -11-08","","1","11","1","1","","1","1","4","1","RUSNADI","EROS ROSANAH","1","");
INSERT INTO penduduk VALUES("1114","365","3208175211820002","EROS ROSANAH","KUNINGAN","1982 -12-11","","2","11","1","2","","4","2","9","1","UDIN","RANTINAH","1","");
INSERT INTO penduduk VALUES("1115","366","3208171110520001","LILI SUHARLI","KUNINGAN","1952 -11-10","","1","11","1","2","","3","20","1","1","SUNARTA","RATI","1","");
INSERT INTO penduduk VALUES("1116","366","3208176409520003","MARIAH","KUNINGAN","1952 -24-09","","2","11","1","2","","3","2","3","1","ALWA","SARPAH","1","");
INSERT INTO penduduk VALUES("1117","366","3208172302830001","IMAN SULAIMAN","KUNINGAN","1983 -23-02","","1","11","1","1","","3","88","4","1","LILI SUHARLI","MARIAH","1","");
INSERT INTO penduduk VALUES("1118","367","3208173009570001","RUNADI","KUNINGAN","1957 -30-09","","1","11","1","2","","3","20","1","1","ALWA","SARPAH","1","");
INSERT INTO penduduk VALUES("1119","367","3208176007630003","SANAAH","KUNINGAN","1963 -20-07","","2","11","1","2","","3","2","3","1","SUHADI","MARSITA","1","");
INSERT INTO penduduk VALUES("1120","367","3208171506860011","SUDRAJAT","KUNINGAN","1986 -15-06","","1","11","1","1","","3","1","4","1","RUNADI","SANAAH","1","");
INSERT INTO penduduk VALUES("1121","367","3208175502010001","INDRIYANI","KUNINGAN","2001 -15-02","","2","11","1","1","","1","1","4","1","RUNADI","SANAAH","1","");
INSERT INTO penduduk VALUES("1122","368","3208170703630003","JUHANA","KUNINGAN","1964 -01-07","","1","11","1","2","","3","88","1","1","ALWA","SARPAH","1","");
INSERT INTO penduduk VALUES("1123","368","3208174811660003","RUWI","CIREBON","1966 -08-11","","2","11","1","2","","3","2","3","1","NARTA","ARI","1","");
INSERT INTO penduduk VALUES("1124","368","3208174311940002","EUIS JULAEHA","KUNINGAN","1994 -03-11","","2","11","1","1","","4","19","4","1","JUHANA","RUWI","1","");
INSERT INTO penduduk VALUES("1125","369","3208171708450007","JUARSA","KUNINGAN","1945 -17-08","","1","11","1","2","","3","20","1","1","SUMITRA","ONIH","1","");
INSERT INTO penduduk VALUES("1126","369","3208174509590004","SUKANAH","KUNINGAN","1959 -05-09","","2","11","1","2","","3","2","3","1","KARSA","NAWI","1","");
INSERT INTO penduduk VALUES("1127","369","3208171102090003","TIAN ARDIANSAH","KUNINGAN","2009 -11-02","","1","11","1","1","","1","1","4","1","JUARSA","SUKANAH","1","");
INSERT INTO penduduk VALUES("1128","370","3208171005650001","DUDUNG BAHAR","KUNINGAN","1965 -10-05","","1","11","1","2","","3","88","1","1","SUBANDI","JUNAH","1","");
INSERT INTO penduduk VALUES("1129","370","3208174502650001","TARMINI","KUNINGAN","1965 -05-02","","2","11","1","2","","3","2","3","1","SUKIRJA","SAREH","1","");
INSERT INTO penduduk VALUES("1130","371","3208170107590183","RUSTADI","KUNINGAN","1959 -01-07","","1","11","1","2","","3","20","1","1","NATA DIJAYA","DARMI","1","");
INSERT INTO penduduk VALUES("1131","371","3208174107620393","ISAH","KUNINGAN","1962 -01-07","","2","11","1","2","","3","2","3","1","SUPARDI","NESIH","1","");
INSERT INTO penduduk VALUES("1132","372","3208172006540012","SUKRANI","KUNINGAN","1954 -20-06","","1","11","1","2","","3","20","1","1","ALWA","SARPAH","1","");
INSERT INTO penduduk VALUES("1133","372","3208176011590003","SURTINAH","KUNINGAN","1959 -20-11","","2","11","1","2","","3","2","3","1","ANDA","ARNAH","1","");
INSERT INTO penduduk VALUES("1134","372","3208171107910002","RUSDIANA","KUNINGAN","1991 -11-07","","1","11","1","1","","3","88","4","1","SUKRANI","SURTINAH","1","");
INSERT INTO penduduk VALUES("1135","373","3208172806300001","RUHIMAN","KUNINGAN","1930 -28-06","","1","11","1","2","","3","9","1","1","SUKARNA","NIRAH","1","");
INSERT INTO penduduk VALUES("1136","373","3208176202490001","SARTINI","KUNINGAN","1949 -22-02","","2","11","1","2","","3","2","3","1","WIHARMA (ALM )","URINAH","1","");
INSERT INTO penduduk VALUES("1137","374","3208170901280002","KARWAN SUKIRJA","KUNINGAN","1928 -09-01","","1","11","1","2","","3","4","1","1","JAYA ARGA","ARWITA","1","");
INSERT INTO penduduk VALUES("1138","374","3208174711540002","MARNAH","KUNINGAN","1954 -07-11","","2","11","1","2","","3","2","3","1","SUNARDI","KARNI","1","");
INSERT INTO penduduk VALUES("1139","374","3208176112980003","YASINTA DESRI","KUNINGAN","1998 -21-12","","2","11","1","1","","3","1","6","1","SAREN","K.SUKIRJA","1","");
INSERT INTO penduduk VALUES("1140","374","3208172110060001","DEVA RAMA PRAMUDYA","KUNINGAN","2006 -21-10","","1","11","1","1","","1","1","6","1","-","-","1","");
INSERT INTO penduduk VALUES("1141","375","3208171207680006","ATIK MURSIDIK","KUNINGAN","1968 -12-07","","1","11","1","2","","3","19","1","1","TARHUDI","ATINI","1","");
INSERT INTO penduduk VALUES("1142","375","3208176508790003","NANI","KUNINGAN","1979 -25-08","","2","11","1","2","","3","2","3","1","SURADI","NETRA","1","");
INSERT INTO penduduk VALUES("1143","375","3208172212030001","HAMDAN HIDAYAT","KUNINGAN","2003 -22-12","","1","11","1","1","","1","1","4","1","ATIK MURSIDIK","NANI","1","");
INSERT INTO penduduk VALUES("1144","375","3208171002080002","RANDI ADITA","KUNINGAN","2008 -10-02","","1","11","1","1","","1","1","4","1","ATIK MURSIDIK","NANI","1","");
INSERT INTO penduduk VALUES("1145","375","3208172707990002","PAISAL NURDIANSAH","KUNINGAN","1999 -27-07","","1","11","1","1","","0","3","4","1","ATIK MURSIDIK","NANI","1","");
INSERT INTO penduduk VALUES("1146","376","3208171801520002","SUDIRMAN","KUNINGAN","1952 -18-01","","1","11","1","2","","3","20","1","1","SUANTA","SUTILAH","1","");
INSERT INTO penduduk VALUES("1147","376","3208174202580004","RATNASIH","KUNINGAN","1958 -02-02","","2","11","1","2","","3","2","3","1","TARHUDI","ATINI","1","");
INSERT INTO penduduk VALUES("1148","376","3208175101880001","RINI SUSILA","KUNINGAN","1988 -11-01","","2","11","1","2","","0","2","4","1","SUDIRMAN","RATNASIH","1","");
INSERT INTO penduduk VALUES("1149","377","3208170201730002","RODI","KUNINGAN","1973 -02-01","","1","11","1","2","","3","19","1","1","MIHANTA","SAPTIAH","1","");
INSERT INTO penduduk VALUES("1150","377","3208174604810007","SARTINAH","KUNINGAN","1981 -06-04","","2","11","1","2","","3","2","3","1","WIHARYA","SUKMI","1","");
INSERT INTO penduduk VALUES("1151","377","3208171708030001","RIVAL ARUMAN","KUNINGAN","2003 -17-08","","1","11","1","1","","0","3","4","1","RODI","SARTINAH","1","");
INSERT INTO penduduk VALUES("1152","377","3208174207090002","DETA AULIA","KUNINGAN","2009 -02-07","","2","11","1","1","","1","1","4","1","RODI","SARTINAH","1","");
INSERT INTO penduduk VALUES("1153","378","3208170511210001","SUMARNA","KUNINGAN","1921 -05-11","","1","11","1","2","","3","20","1","1","-","-","1","");
INSERT INTO penduduk VALUES("1154","378","3208171708750006","YANTO","KUNINGAN","1975 -17-08","","1","11","1","1","","3","88","4","1","SUMARNA","SITA","1","");
INSERT INTO penduduk VALUES("1155","379","3208170107510231","ILON","KUNINGAN","1951 -01-07","","1","11","1","2","","3","9","1","1","SUANTA","SAMNAH","1","");
INSERT INTO penduduk VALUES("1156","379","3208174104570001","NARSAH","KUNINGAN","1957 -01-04","","2","11","1","2","","3","2","3","1","WIRA WINATA","RUSITA","1","");
INSERT INTO penduduk VALUES("1157","379","3208174507910002","SAENAH","KUNINGAN","1991 -05-07","","2","11","1","1","","3","1","4","1","ILON","NARSAH","1","");
INSERT INTO penduduk VALUES("1158","379","3208170708770006","HANAN","KUNINGAN","1977 -07-08","","1","11","1","1","","3","88","4","1","ILON","NARSAH","1","");
INSERT INTO penduduk VALUES("1159","380","3208170107650265","TOTO","KUNINGAN","1965 -01-07","","1","11","1","2","","3","88","1","1","WIRJA","IMI","1","");
INSERT INTO penduduk VALUES("1160","380","3208174808640003","TUSNANI","KUNINGAN","1964 -08-08","","2","11","1","2","","3","2","3","1","SUKIRJA","SAREH","1","");
INSERT INTO penduduk VALUES("1161","380","3208176512000002","DESI PITRIANI","KUNINGAN","2000 -25-12","","2","11","1","1","","0","1","4","1","TOTO","TUSNANI","1","");
INSERT INTO penduduk VALUES("1162","381","3208170702580005","ENDANG","KUNINGAN","1958 -07-02","","1","11","1","2","","3","88","1","1","SUKIRJA","SAREH","1","");
INSERT INTO penduduk VALUES("1163","381","3208175103640002","EROT","KUNINGAN","1964 -11-03","","2","11","1","2","","3","2","3","1","SUWADNA","RUSNI","1","");
INSERT INTO penduduk VALUES("1164","381","3208175404030001","IDA NURDIANI","KUNINGAN","2003 -14-04","","2","11","1","1","","1","1","4","1","ENDANG","EROT","1","");
INSERT INTO penduduk VALUES("1165","381","3208174608920009","HARYANI","KUNINGAN","1992 -06-08","","2","11","1","1","","3","1","4","1","ENDANG","EROT","1","");
INSERT INTO penduduk VALUES("1166","381","3208172505840005","SUDINAR","KUNINGAN","1984 -25-05","","1","11","1","1","","3","1","4","1","ENDANG","SUNIRAH","1","");
INSERT INTO penduduk VALUES("1167","382","3208170107900338","JAJA","KUNINGAN","1990 -01-07","","1","11","1","1","","3","1","6","1","-","MIRA","1","");
INSERT INTO penduduk VALUES("1168","382","3208170107800509","NANO","KUNINGAN","1980 -01-07","","1","11","1","1","","3","88","6","1","-","MIRA","1","");
INSERT INTO penduduk VALUES("1169","383","3208170107610081","AJA. D","KUNINGAN","1961 -01-07","","1","11","1","2","","3","88","1","1","SUADMA","SUTIAH","1","");
INSERT INTO penduduk VALUES("1170","383","3208174406630013","TUTI","KUNINGAN","1963 -04-07","","2","11","1","2","","3","2","3","1","SUMARDI","TARYAH","1","");
INSERT INTO penduduk VALUES("1171","383","3208174107910242","YATI NURHAYATI","KUNINGAN","1991 -01-07","","2","11","1","1","","3","1","4","1","AJA. D","TUTI","1","");
INSERT INTO penduduk VALUES("1172","384","3208170508500001","SUKAWA","KUNINGAN","1950 -05-08","","1","11","1","2","","3","88","1","1","MUKRA","ANANTI","1","");
INSERT INTO penduduk VALUES("1173","384","3208174107560265","JUNAH","KUNINGAN","1956 -01-07","","2","11","1","2","","0","2","3","1","SUKIRNA","ARNI","1","");
INSERT INTO penduduk VALUES("1174","385","3208172006490007","SUBARI","KUNINGAN","1949 -20-06","","1","11","1","2","","3","88","1","1","SUTIAH","WIARTA","1","");
INSERT INTO penduduk VALUES("1175","385","3208174107470170","UNINGSIH","KUNINGAN","1947 -01-07","","2","11","1","2","","3","2","3","1","WIHARMA","URINAH","1","");
INSERT INTO penduduk VALUES("1176","386","3208171712540002","UDIN","KUNINGAN","1954 -17-12","","1","11","1","2","","3","5","1","1","MIHANTA","SATIAH","1","");
INSERT INTO penduduk VALUES("1177","386","3208174708550002","RANTINAH","KUNINGAN","1955 -07-08","","2","11","1","2","","3","2","3","1","SUMADLI","ARMINAH","1","");
INSERT INTO penduduk VALUES("1178","387","3208170402520001","KARI","KUNINGAN","1952 -04-02","","1","11","1","2","","3","9","1","1","WIHARTA","SOMAH","1","");
INSERT INTO penduduk VALUES("1179","387","3208175101440002","WARSIH","KUNINGAN","1944 -11-01","","2","11","1","2","","3","9","3","1","WIATMA","NITA","1","");
INSERT INTO penduduk VALUES("1180","387","3208170302610002","MULYAMAN","KUNINGAN","1961 -03-02","","1","11","1","1","","3","88","4","1","KARI","WARSIH","1","");
INSERT INTO penduduk VALUES("1181","388","3208170107410116","WIHARYA","KUNINGAN","1941 -01-07","","1","11","1","2","","3","20","1","1","NATA","RASITA","1","");
INSERT INTO penduduk VALUES("1182","388","3208174107470161","SUKMI","KUNINGAN","1947 -01-07","","2","11","1","2","","3","2","3","1","SUKIRTA","ASITA","1","");
INSERT INTO penduduk VALUES("1183","388","3208176610960003","KUSDIAH","KUNINGAN","1996 -26-10","","2","11","1","1","","3","1","6","1","RUNADI","SUKNAH","1","");
INSERT INTO penduduk VALUES("1184","389","3208170107610089","NURYADI","KUNINGAN","1961 -01-07","","1","11","1","2","","3","9","1","1","RASTAL","KIMOH","1","");
INSERT INTO penduduk VALUES("1185","389","3208174107650185","UTINAH","KUNINGAN","1965 -01-07","","2","11","1","2","","3","9","3","1","WIHARYA","SUKMI","1","");
INSERT INTO penduduk VALUES("1186","389","3208170111860010","SUHIWAN","KUNINGAN","1986 -01-11","","1","11","1","1","","3","88","4","1","NURYADI","UTINAH","1","");
INSERT INTO penduduk VALUES("1187","390","3208170903720008","SUHANAN","KUNINGAN","1972 -09-03","","1","11","1","2","","3","20","1","1","WIHARYA","SUKMI","1","");
INSERT INTO penduduk VALUES("1188","390","3208174804780001","RATNINGSIH","KUNINGAN","1978 -08-04","","2","11","1","2","","3","2","3","1","USNI","ODAH","1","");
INSERT INTO penduduk VALUES("1189","390","3208173004060003","MAMAN PIRMANSAH","KUNINGAN","2006 -30-04","","1","11","1","1","","0","3","4","1","SUHANAN","RATNINGSIH","1","");
INSERT INTO penduduk VALUES("1190","391","3208171408750005","EBO","KUNINGAN","1975 -14-08","","1","11","1","2","","4","20","1","1","AHRI","SAPTI","1","");
INSERT INTO penduduk VALUES("1191","391","3208176008780003","HETI SUHETI","KUNINGAN","1978 -20-08","","2","11","1","2","","4","2","3","1","SUKAWA","JUNAH","1","");
INSERT INTO penduduk VALUES("1192","391","3208171609010005","RIZAL QODRI","KUNINGAN","2001 -16-09","","1","11","1","1","","3","1","4","1","EBO","HETI SUHETI","1","");
INSERT INTO penduduk VALUES("1193","391","3208172511130001","NAUFAL MUZHAFFAR","KUNINGAN","2013 -25-11","","1","11","1","1","","1","1","4","1","EBO","HETI SUHETI","1","");
INSERT INTO penduduk VALUES("1194","391","3208174402030002","ANNISAA","KUNINGAN","2003 -04-02","","2","11","1","1","","0","1","4","1","EBO","HETI SUHETI","1","");
INSERT INTO penduduk VALUES("1195","391","3208176006070001","SIVA NURFALAH","KUNINGAN","2007 -20-06","","2","11","1","1","","0","1","4","1","EBO","HETI SUHETI","1","");
INSERT INTO penduduk VALUES("1196","392","3208171805570002","APIN","KUNINGAN","1957 -18-05","","1","11","1","2","","3","20","1","1","WIHARDI","ANIS","1","");
INSERT INTO penduduk VALUES("1197","392","3208176004640006","NARSAH","KUNINGAN","1964 -20-04","","2","11","1","2","","3","2","3","1","SAHMIDI","JUNAH","1","");
INSERT INTO penduduk VALUES("1198","392","3208171112910003","JAMILUDIN","KUNINGAN","1991 -11-12","","1","11","1","1","","3","19","9","1","KANCIL","RINAH","1","");
INSERT INTO penduduk VALUES("1199","393","3208170107720185","OSID ROSIDIN","KUNINGAN","1972 -01-07","","1","4","1","2","","3","88","1","1","JUHANA","ISAH","1","");
INSERT INTO penduduk VALUES("1200","393","3208174107720181","NINGSIH","KUNINGAN","1972 -01-07","","2","11","1","2","","0","2","3","1","NARWIAH","NARWIAH","1","");
INSERT INTO penduduk VALUES("1201","393","3208176009960003","TIA HERLITA","KUNINGAN","1996 -20-09","","2","11","1","1","","3","1","4","1","OSID ROSIDIN","RUNINGSIH","1","");
INSERT INTO penduduk VALUES("1202","393","3208171609050002","YOGA ADITIYA","KUNINGAN","2005 -16-09","","1","11","1","1","","1","1","4","1","OSID ROSIDIN","RUNINGSIH","1","");
INSERT INTO penduduk VALUES("1203","393","3208175005730008","RUNINGSIH","KUNINGAN","1973 -10-05","","2","11","1","2","","0","2","9","1","WIKARJA","NARWIAH","1","");
INSERT INTO penduduk VALUES("1204","394","3208170107720249","DODO SUHENDRA","KUNINGAN","1971 -17-08","","1","11","1","2","","3","19","1","1","SUMARNA","SITA","1","");
INSERT INTO penduduk VALUES("1205","394","3208174107770235","KAYAH","KUNINGAN","1977 -02-01","","2","11","1","2","","3","2","3","1","TAHYUDIN","NERAH","1","");
INSERT INTO penduduk VALUES("1206","394","3208171803980001","ABDUL MUGNI","KUNINGAN","1998  2-03-18","","1","11","1","1","","3","1","4","1","DODO SUHENDRA","KAYAH","1","");
INSERT INTO penduduk VALUES("1207","394","3208174109080004","NENGSIH","KUNINGAN","2008 12:12:00-01-09","","2","11","1","1","","1","1","4","1","DODO SUHENDRA","KAYAH","1","");
INSERT INTO penduduk VALUES("1208","395","3208170104770016","NANA HARYANA","KUNINGAN","1977 -01-04","","1","11","1","2","","3","20","1","1","APIN","SARIAH","1","");
INSERT INTO penduduk VALUES("1209","395","3208174112810005","RESIN","KUNINGAN","1981 -02-12","","2","11","1","2","","3","2","3","1","KUSMANA","JUNAH","1","");
INSERT INTO penduduk VALUES("1210","395","3208171904090001","FADILLAH","KUNINGAN","2009 -19-04","","1","11","1","1","","1","1","4","1","NANA HARYANA","RESIN","1","");
INSERT INTO penduduk VALUES("1211","395","3208171605000002","FAHRUL HELIAN","KUNINGAN","2000 -16-05","","1","11","1","1","","3","3","4","1","NANA HARYANA","RESIN","1","");
INSERT INTO penduduk VALUES("1212","396","3208170402780001","ANANG SETIANA","KUNINGAN","1978 -04-02","","1","11","1","2","","5","15","1","1","SARTONO","ODAH","1","");
INSERT INTO penduduk VALUES("1213","396","3208176610880001","MULYANI","KUNINGAN","1988 -26-10","","2","11","1","2","","4","2","3","1","JAENI","SUARNI","1","");
INSERT INTO penduduk VALUES("1214","396","3208174806110003","MULAN TIKA JUAINI","KUNINGAN","2011 -08-06","","2","11","1","1","","1","1","4","1","ANANG SETIANA","MULYANI","1","");
INSERT INTO penduduk VALUES("1215","397","3208170108870018","RIKI REDIANA","KUNINGAN","1987 -01-08","","1","11","1","2","","3","84","1","1","YOYO SUNARYO","NINING","1","");
INSERT INTO penduduk VALUES("1216","398","3208174302670003","SURTIAH","KUNINGAN","1967 -03-02","","2","11","1","3","","3","20","1","1","SURYANA","ARMAH","1","");
INSERT INTO penduduk VALUES("1217","398","3208170812860004","ALAN SUHENDAR","KUNINGAN","1986 -08-12","","1","11","1","1","","3","88","4","1","MAMAN","SURTIAH","1","");
INSERT INTO penduduk VALUES("1218","398","3208171503920001","HERDIANA","KUNINGAN","1992 -15-03","","1","11","1","1","","3","1","4","1","MAMAN","SURTIAH","1","");
INSERT INTO penduduk VALUES("1219","399","3208171912840004","OBET RANA SUBAGJA","KUNINGAN","1984 -19-12","","1","11","1","2","","3","20","1","1","AJIS SOPANDI","ENAH","1","");
INSERT INTO penduduk VALUES("1220","399","3208174803940004","ELIS","KUNINGAN","1994 -08-03","","2","11","1","2","","3","2","3","1","ILON","NARSAH","1","");
INSERT INTO penduduk VALUES("1221","399","3208176907140001","RAISHA FITRI","KUNINGAN","2014 12:12:00-29-07","","2","11","1","1","","1","1","4","1","OBET RANA SUBAGJA","ELIS","1","");
INSERT INTO penduduk VALUES("1222","400","3208171501750005","SAMSUDIN","KUNINGAN","1975 -15-01","","1","11","1","2","","5","88","1","1","SUBNI","RATMINI","1","");
INSERT INTO penduduk VALUES("1223","400","3208174211810004","RITA RATNAWATI","KUNINGAN","1981 -02-11","","2","11","1","2","","5","88","3","1","SUDIRMAN","RATNASIH","1","");
INSERT INTO penduduk VALUES("1224","400","3208175504020002","FAIZA DWI ADIANI","KUNINGAN","2002 -15-04","","2","11","1","1","","1","1","4","1","SAMSUDIN","RITA RATNAWATI","1","");
INSERT INTO penduduk VALUES("1225","401","3208170312640001","AHMAD","KUNINGAN","1964 -03-12","","1","11","1","2","","3","88","1","1","SAKUM","MAAH","1","");
INSERT INTO penduduk VALUES("1226","401","3208175201680004","NINGRUM","KUNINGAN","1968 -12-01","","2","11","1","2","","3","2","3","1","WIKARJA","NARWIAH","1","");
INSERT INTO penduduk VALUES("1227","401","3208170808050002","NANANG SUNTORO","KUNINGAN","2005 -08-08","","1","11","1","1","","1","1","4","1","AHMAD","NINGRUM","1","");
INSERT INTO penduduk VALUES("1228","401","3208176903020003","ISNAWATI","KUNINGAN","2002 -29-03","","2","11","1","1","","1","1","4","1","AHMAD","NINGRUM","1","");
INSERT INTO penduduk VALUES("1229","401","3208171606940003","HARYANTO","KUNINGAN","1994 -16-06","","1","11","1","1","","3","3","4","1","AHMAD","NINGRUM","1","");
INSERT INTO penduduk VALUES("1230","402","3208170307750003","NONO SUARNO","KUNINGAN","1975 -03-07","","1","11","1","2","","3","88","1","1","ILON","NARSAH","1","");
INSERT INTO penduduk VALUES("1231","402","3208175706840005","IMAS PERMASIH","KUNINGAN","1984 -17-06","","2","11","1","2","","3","2","3","1","AJA D","TUTI","1","");
INSERT INTO penduduk VALUES("1232","402","3208170104130001","FUZI APRILLIO","KUNINGAN","2013 -01-04","","1","11","1","1","","1","1","4","1","NONO SUARNO","IMAS PERMASIH","1","");
INSERT INTO penduduk VALUES("1233","402","3208175611060003","MILA NOPIKA","KUNINGAN","2006 -16-11","","2","11","1","1","","1","1","4","1","NONO SUARNO","IMAS PERMASIH","1","");
INSERT INTO penduduk VALUES("1234","403","3208171707830005","SUTARYA","KUNINGAN","1983 -17-07","","1","11","1","2","","3","88","1","1","SUKRANI","SURTINAH","1","");
INSERT INTO penduduk VALUES("1235","403","3208174811920001","KARTIKA","KUNINGAN","1992 -08-11","","2","11","1","2","","4","2","3","1","SUKARJA","ISAH","1","");
INSERT INTO penduduk VALUES("1236","403","3208175805130002","NAYLA PUTRI","KUNINGAN","2013 -18-05","","2","11","1","1","","1","1","4","1","SUTARYA","KARTIKA","1","");
INSERT INTO penduduk VALUES("1237","404","3205060202720004","AJANG SAEPULLAH","GARUT","1972 -12-02","","1","11","1","2","","3","88","1","1","PANDI","YAYAH","1","");
INSERT INTO penduduk VALUES("1238","404","3208172003900001","TYO","KUNINGAN","1990 -20-03","","1","11","1","1","","3","1","4","1","SARLAN","MIRA","1","");
INSERT INTO penduduk VALUES("1239","404","3208171411790002","NANO SUPRIATNO","KUNINGAN","1979 -14-11","","1","11","1","1","","3","88","4","1","SUMARNO","MIRA","1","");
INSERT INTO penduduk VALUES("1240","405","3208170604790001","RUSNAEDI","KUNINGAN","1979 -06-04","","1","11","1","2","","3","88","1","1","SAMSUDIN","RANTINAH","1","");
INSERT INTO penduduk VALUES("1241","405","3208174712840005","NURHASANAH","KUNINGAN","1984 -07-12","","2","11","1","2","","3","2","3","1","IRTA","SUWARNI","1","");
INSERT INTO penduduk VALUES("1242","405","3208174901150001","NESYA TANTRI","KUNINGAN","2015 14:00:00-09-01","","2","11","1","1","","1","1","4","1","RUSNAEDI","NURHASANAH","1","");
INSERT INTO penduduk VALUES("1243","405","3208172502060002","RIDWAN PERMANA","KUNINGAN","2006 -25-02","","1","11","1","1","","0","3","4","1","RUSNAEDI","NURHASANAH","1","");
INSERT INTO penduduk VALUES("1244","406","3208170107800275","NONO SUDARNO","KUNINGAN","1980 -01-07","","1","11","1","2","","3","20","1","1","AJA DATO","TUTI","1","");
INSERT INTO penduduk VALUES("1245","406","3208174708820002","TINI SARTINI","KUNINGAN","1982 -07-08","","2","11","1","2","","3","2","3","1","RUSTADI","ROMSAH","1","");
INSERT INTO penduduk VALUES("1246","407","3208170107530315","KUSNAWI","KUNINGAN","1953 -01-07","","1","11","1","2","","3","88","1","1","CAHYA","TIYAH","1","");
INSERT INTO penduduk VALUES("1247","407","3208174107520286","INAH","KUNINGAN","1952 -01-07","","2","11","1","2","","3","2","3","1","SUADMA","-","1","");
INSERT INTO penduduk VALUES("1248","408","3208171805520006","DARTA","KUNINGAN","1952 -18-05","","1","11","1","2","","3","9","1","1","WIKATMA","ASMAH","1","");
INSERT INTO penduduk VALUES("1249","408","3208174309530004","ROSANAH","KUNINGAN","1953 -03-09","","2","11","1","2","","3","2","3","1","WIKARYA","RASINAH","1","");
INSERT INTO penduduk VALUES("1250","408","3208174806790008","DEDE HAYATI","KUNINGAN","1979 -08-06","","2","11","1","2","","3","2","4","1","DARTA","ROSANAH","1","");
INSERT INTO penduduk VALUES("1251","408","3208171110950004","RUSTANA","KUNINGAN","1995 -11-10","","1","11","1","1","","3","3","4","1","DARTA","ROSANAH","1","");
INSERT INTO penduduk VALUES("1252","408","3208176602030003","SITI HANIPA NURSALIMAH","KUNINGAN","2003 -26-02","","2","11","1","1","","0","1","6","1","-","-","1","");
INSERT INTO penduduk VALUES("1253","408","3208175008070002","SITI NASIPA NURSALIMAH","KUNINGAN","2007 -10-08","","2","11","1","1","","1","1","6","1","-","-","1","");
INSERT INTO penduduk VALUES("1254","409","3208170409790004","TARSONO","KUNINGAN","1979 -04-09","","1","11","1","2","","3","20","1","1","SUTIRMAN","UNILAH","1","");
INSERT INTO penduduk VALUES("1255","409","3208176208830006","DEWI GUSTINA","KUNINGAN","1983 -22-08","","2","11","1","2","","3","2","3","1","KUSNAWI","INAH","1","");
INSERT INTO penduduk VALUES("1256","409","3208171007070006","ANGGA PERMANA","KUNINGAN","2007 -10-07","","1","11","1","1","","0","3","4","1","TARSONO","DEWI GUSTINA","1","");
INSERT INTO penduduk VALUES("1257","410","3208170106700005","UYU","KUNINGAN","1979 -05-12","","1","11","1","2","","3","88","1","1","SUTIRMAN","UNILAH","1","");
INSERT INTO penduduk VALUES("1258","410","3207104307890001","LENI HERLINA SETIADI","CIAMIS","1989 -03-07","","2","11","1","2","","4","2","3","1","IDA SETIADI","ISAH","1","");
INSERT INTO penduduk VALUES("1259","410","3208176304580001","UNILAH","KUNINGAN","1958 -23-04","","2","11","1","4","","3","1","0","1","SUKIRTA","USITA","1","");
INSERT INTO penduduk VALUES("1260","411","3208170503730006","KURNIADI","SUMEDANG","1973 -05-03","","1","11","1","2","","3","19","1","1","SUMARNA","SITA","1","");
INSERT INTO penduduk VALUES("1261","411","3208174702790009","KARYATI","SUMEDANG","1979 -07-02","","2","11","1","2","","3","2","3","1","KOSASIH","AMINAH","1","");
INSERT INTO penduduk VALUES("1262","411","3208175904140001","ELSA APRIANI","KUNINGAN","2014 12:12:00-19-04","","2","11","1","1","","1","1","4","1","KURNIADI","KARYATI","1","");
INSERT INTO penduduk VALUES("1263","411","3208176811080004","HENI KHOERUNNISA","KUNINGAN","2008 12:12:00-28-11","","2","11","1","1","","0","3","4","1","KURNIADI","KARYATI","1","");
INSERT INTO penduduk VALUES("1264","411","3208171002000007","ALDI FIRMANSYAH","KUNINGAN","2000 12:12:00-10-02","","1","11","1","1","","3","3","4","1","KURNIADI","KARYATI","1","");
INSERT INTO penduduk VALUES("1265","412","3208170107570326","YOYO SUNARYO","KUNINGAN","1957 -01-07","","1","11","1","2","","4","84","1","1","AAN","UNI","1","");
INSERT INTO penduduk VALUES("1266","412","3208175512640002","NINING","KUNINGAN","1964 -15-12","","2","11","1","2","","3","2","3","1","SUNARJA","SAIRAH","1","");
INSERT INTO penduduk VALUES("1267","412","3208170808910003","DEDEN KURNIA","KUNINGAN","1991 -08-08","","1","11","1","1","","4","88","4","1","YOYO SUNARYO","NINING","1","");
INSERT INTO penduduk VALUES("1268","413","3208172010770005","DIDI SUHENDI","KUNINGAN","1977 -20-10","","1","11","1","2","","3","20","1","1","SANTANI","ARKICIH","1","");
INSERT INTO penduduk VALUES("1269","413","3208174205840004","LIA","CIAMIS","1984 -02-05","","2","11","1","2","","3","2","3","1","KUSNA","OMIH","1","");
INSERT INTO penduduk VALUES("1270","413","3208172810040001","RIVAL NUGRAHA","KUNINGAN","2004 -28-10","","1","11","1","1","","1","1","4","1","DIDI SUHENDI","LIA","1","");
INSERT INTO penduduk VALUES("1271","413","3208175105090003","IRENA NURMAYA","KUNINGAN","2009 -11-05","","2","11","1","1","","1","1","4","1","DIDI SUHENDI","LIA","1","");
INSERT INTO penduduk VALUES("1272","414","3208170405960007","ABI UMBARA","KUNINGAN","1996 -04-05","","1","11","1","1","","5","1","4","1","SUKARDO","KURNIASIH","1","");
INSERT INTO penduduk VALUES("1273","415","3302162408840003","TAUFIK ABIDIN","BANYUMAS","1984 -24-08","","1","11","1","2","","4","20","1","1","TARMAN SUKARDI","WASRI","1","");
INSERT INTO penduduk VALUES("1274","415","3302165305870002","KOKOM KOMARIAH","CIAMIS","1987 -13-05","","2","11","1","2","","3","2","3","1","UJU JUARSA","SUKANAH","1","");
INSERT INTO penduduk VALUES("1275","415","3302163004060001","MUZAKY ALFA RIZKY BILYAHFI","BANYUMAS","2006 -30-04","","1","11","1","1","","0","3","4","1","TAUFIK ABIDIN","KOKOM KOMARIAH","1","");
INSERT INTO penduduk VALUES("1276","415","3302161102090003","TIAN ARDIANSYAH BILYAHFI","BANYUMAS","2009 -11-02","","1","11","1","1","","1","1","4","1","TAUFIK ABIDIN","KOKOM KOMARIAH","1","");
INSERT INTO penduduk VALUES("1277","416","3208100307810009","MUHAMMAD RAMDHAN","KUNINGAN","1981 -03-07","","1","11","1","2","","5","18","1","1","UJU","NURITA","1","");
INSERT INTO penduduk VALUES("1278","416","3208106107060003","NAZWA ASSYIFA AZZAHRA","KUNINGAN","2006 -21-07","","2","11","1","1","","0","1","4","1","MUHAMMAD RAMDHAN","LAYLA ZULHAIJAH","1","");
INSERT INTO penduduk VALUES("1279","417","3208171802630001","MAMAN","KUNINGAN","1963 -18-02","","1","11","1","2","","3","88","1","1","SAURIP","KARWEN","1","");
INSERT INTO penduduk VALUES("1280","417","3208175202760002","RUSNAENI","KUNINGAN","1976 -12-02","","2","11","1","2","","3","2","3","1","ISMAIL","ASIH WATI","1","");
INSERT INTO penduduk VALUES("1281","417","3208175708000001","SRI AGUSTINA","KUNINGAN","2000 -17-08","","2","11","1","1","","3","1","4","1","MAMAN","RUSNAENI","1","");
INSERT INTO penduduk VALUES("1282","417","3208171901130005","PANCA BAYU SUKMA","KUNINGAN","2013 -19-01","","1","11","1","1","","1","1","4","1","MAMAN","RUSNAENI","1","");
INSERT INTO penduduk VALUES("1283","418","3208170111420009","SAKUM","KUNINGAN","1942 -01-11","","1","11","1","2","","3","88","1","1","KARTA WINATA","JASMI","1","");
INSERT INTO penduduk VALUES("1284","418","3208175105600001","ANIH","KUNINGAN","1960 -11-05","","2","11","1","2","","3","2","3","1","MISTAR","ARNIAH","1","");
INSERT INTO penduduk VALUES("1285","418","3208176701820001","EEN ROHAENAH","KUNINGAN","1982 -27-01","","2","11","1","2","","3","2","4","1","SAKUM","ANIH","1","");
INSERT INTO penduduk VALUES("1286","418","3208171601800003","LILI SUKARLI","KUNINGAN","1980 -16-01","","1","11","1","2","","4","88","5","1","M. HOLIL","IRUS","1","");
INSERT INTO penduduk VALUES("1287","418","3208170512030001","EGA PRASETA PRATAMA","KUNINGAN","2003 -05-12","","1","11","1","1","","1","1","6","1","LILI SUKARLI","EEN ROHAENAH","1","");
INSERT INTO penduduk VALUES("1288","419","3208170107520240","UCI SANUSI","KUNINGAN","1952 -01-07","","1","11","1","2","","3","20","1","1","MISTAR","ARNIAH","1","");
INSERT INTO penduduk VALUES("1289","419","3208174508600005","SUTIAH","KUNINGAN","1960 -05-08","","2","11","1","2","","3","2","3","1","HADORI","UKI","1","");
INSERT INTO penduduk VALUES("1290","419","3208172410920002","SENDRA SETIAWAN","KUNINGAN","1992 -24-10","","1","11","1","1","","4","3","4","1","UCI SANUSI","SUTIAH","1","");
INSERT INTO penduduk VALUES("1291","420","3208171508700001","BERLIN","KUNINGAN","1970 -15-08","","1","11","1","2","","3","88","1","1","SUJONO","MUNIRAH","1","");
INSERT INTO penduduk VALUES("1292","420","3208177006720001","NASITA","KUNINGAN","1972 -30-06","","2","11","1","2","","3","2","3","1","SUPARTA","NETRA","1","");
INSERT INTO penduduk VALUES("1293","420","3208174704050001","NUR ALIAWATI","KUNINGAN","2005 -07-04","","2","11","1","1","","1","1","4","1","BERLIN","NASITA","1","");
INSERT INTO penduduk VALUES("1294","421","3208170107460172","JUNTAHA","KUNINGAN","1946 -01-07","","1","11","1","2","","3","9","1","1","MARJUKI","NAYI","1","");
INSERT INTO penduduk VALUES("1295","422","3208170508540002","SUHANAN","KUNINGAN","1954 -05-08","","1","11","1","2","","3","9","1","1","RASID","LASIH","1","");
INSERT INTO penduduk VALUES("1296","422","3208174712630001","ECIH","KUNINGAN","1963 -07-12","","2","11","1","2","","3","2","3","1","SUARTA","NESAH","1","");
INSERT INTO penduduk VALUES("1297","422","3208170711800003","SUPARNO","KUNINGAN","1980 -07-11","","1","11","1","1","","3","88","4","1","SUHANAN","ECIH","1","");
INSERT INTO penduduk VALUES("1298","423","3208171808590002","NONO JUHARNO","KUNINGAN","1959 -18-08","","1","11","1","3","","3","88","1","1","SUMARTA","SATINI","1","");
INSERT INTO penduduk VALUES("1299","423","3208170105060001","DIKA PRATAMA","KUNINGAN","2006 -01-05","","1","11","1","1","","1","1","4","1","JUARNO","SUTIAH","1","");
INSERT INTO penduduk VALUES("1300","424","3208172903620002","KUSDINAR","KUNINGAN","1962 -29-03","","1","11","1","2","","8","5","1","1","SUMARTA","SATINI","1","");
INSERT INTO penduduk VALUES("1301","424","3208175808650003","ENTIN ROHAETIN","KUNINGAN","1965 -18-08","","2","11","1","2","","3","2","3","1","AMIR","AMINAH","1","");
INSERT INTO penduduk VALUES("1302","424","3208172507040002","ANDRE HIDAYAT","KUNINGAN","2004 -25-07","","1","11","1","1","","0","1","4","1","KUSDINAR","ENTIN ROHAETIN","1","");
INSERT INTO penduduk VALUES("1303","424","3208170907110001","LUCKY CEISAR ZELANI","KUNINGAN","2011 -09-07","","1","11","1","1","","1","1","4","1","KUSDINAR","ENTIN ROHAETIN","1","");
INSERT INTO penduduk VALUES("1304","425","3208170406530003","MISKANDA","KUNINGAN","1953 -04-06","","1","11","1","2","","3","20","1","1","HASAN","NARYI","1","");
INSERT INTO penduduk VALUES("1305","425","3208174807570001","USTIN","KUNINGAN","1957 -08-07","","2","11","1","2","","3","2","3","1","SUWIRTA","NERWI","1","");
INSERT INTO penduduk VALUES("1306","426","3208172006590006","JAENI","KUNINGAN","1959 -20-06","","1","11","1","2","","3","9","1","1","SUNARYA","KATNAH","1","");
INSERT INTO penduduk VALUES("1307","426","3208174812630002","SUARNI","KUNINGAN","1963 -08-12","","2","11","1","2","","3","2","3","1","SUDARJA","RATI","1","");
INSERT INTO penduduk VALUES("1308","427","3208174107310046","NARWIAH","KUNINGAN","1931 -01-07","","2","11","1","4","","0","9","1","1","-","-","1","");
INSERT INTO penduduk VALUES("1309","428","3208172301340001","SUTANDI","KUNINGAN","1934 -23-01","","1","11","1","2","","3","9","1","1","SUMAWI BASIR","ARMI","1","");
INSERT INTO penduduk VALUES("1310","428","3208174107380117","IJAH","KUNINGAN","1938 -01-07","","2","11","1","2","","3","2","3","1","MUKID","BONI","1","");
INSERT INTO penduduk VALUES("1311","429","3208171912560002","SARDA","KUNINGAN","1956 -19-12","","1","11","1","2","","3","5","1","1","SUHAPI","ASIH","1","");
INSERT INTO penduduk VALUES("1312","429","3208175810590001","ISAH","KUNINGAN","1959 -18-10","","2","11","1","2","","3","2","3","1","HASAN","DARYI","1","");
INSERT INTO penduduk VALUES("1313","429","3208175008090001","CITRA GUS PRIANTI","KUNINGAN","2009 -10-08","","2","11","1","1","","1","1","4","1","SARDA","ISAH","1","");
INSERT INTO penduduk VALUES("1314","429","3208174204940004","IMAS KOMALA","KUNINGAN","1994 -02-04","","2","11","1","1","","4","1","4","1","SARDA","ISAH","1","");
INSERT INTO penduduk VALUES("1315","430","3208170107460064","JUNAEDI","KUNINGAN","1946 -01-07","","1","11","1","2","","3","9","1","1","ARSA","INA","1","");
INSERT INTO penduduk VALUES("1316","430","3208176006550009","ARKICIH","KUNINGAN","1955 -20-06","","2","11","1","2","","3","2","3","1","MISTAR","ARNIAH","1","");
INSERT INTO penduduk VALUES("1317","431","3208170107690208","ENDI","KUNINGAN","1969 -01-07","","1","11","1","2","","4","88","1","1","IJO","SUKANTI","1","");
INSERT INTO penduduk VALUES("1318","431","3208175508780003","IJAH HODIJAH","KUNINGAN","1978 -15-08","","2","11","1","2","","3","2","3","1","SAKUM","ANIH","1","");
INSERT INTO penduduk VALUES("1319","431","3208172404060001","PARID SETIA NUGRAHA","KUNINGAN","2006 -24-04","","1","11","1","1","","1","1","4","1","ENDI","SITI HODIJAH","1","");
INSERT INTO penduduk VALUES("1320","431","3208174903960003","ANI CYNTHIA RAHMI","KUNINGAN","1996 -09-03","","2","11","1","1","","3","15","4","1","ENDI","SITI HODIJAH","1","");
INSERT INTO penduduk VALUES("1321","432","3208170205770003","NANA NUGRAHA","KUNINGAN","1977 -02-05","","1","11","1","2","","3","88","1","1","JUARSA","SUKANAH","1","");
INSERT INTO penduduk VALUES("1322","432","3208174201820005","NINA ERNAWATI","KUNINGAN","1982 -02-01","","2","11","1","2","","3","2","3","1","NONO JUHARNO","ANTINAH","1","");
INSERT INTO penduduk VALUES("1323","432","3208171804130001","AZRIL JAYA KOMARA","KUNINGAN","2013 -18-04","","1","11","1","1","","1","1","4","1","NANA NUGRAHA","NINA ERNAWATI","1","");
INSERT INTO penduduk VALUES("1324","432","3208174808100002","AMELIA SELPIANI PUTRI","KUNINGAN","2010 -08-08","","2","11","1","1","","1","1","4","1","NANA NUGRAHA","NINA ERNAWATI","1","");
INSERT INTO penduduk VALUES("1325","432","3208171507010008","ADI GILANG PERMANA","KUNINGAN","2001 -15-07","","1","11","1","1","","0","3","4","1","NANA NUGRAHA","NINA ERNAWATI","1","");
INSERT INTO penduduk VALUES("1326","432","3208174107210029","SATINI","KUNINGAN","1921 -01-07","","2","11","1","4","","3","4","0","1","-","-","1","");
INSERT INTO penduduk VALUES("1327","433","3208172505700002","HENDRA RAHADI","KUNINGAN","1970 -25-05","","1","11","1","2","","5","20","1","1","SUDIRMAN","JAENAH","1","");
INSERT INTO penduduk VALUES("1328","433","3208175603730005","TITI SUSANTI","KUNINGAN","1973 -16-03","","2","11","1","2","","3","2","3","1","SAKIM","ANIH","1","");
INSERT INTO penduduk VALUES("1329","433","3208172809120001","BAYU ADI PAMUNGKAS","KUNINGAN","2012 -28-09","","1","11","1","1","","1","1","4","1","HENDRA ROHADI","TITI SUSANTI","1","");
INSERT INTO penduduk VALUES("1330","434","3208172004800005","ADANG","KUNINGAN","1980 -20-04","","1","11","1","2","","3","9","1","1","MISKANDA","USTIN","1","");
INSERT INTO penduduk VALUES("1331","434","3208176605850004","NIA KURNIA","KUNINGAN","1985 -26-05","","2","11","1","2","","3","2","3","1","SUKARI","SUYI","1","");
INSERT INTO penduduk VALUES("1332","434","3208172703040002","IGUN GUNADI","KUNINGAN","2004 -27-03","","1","11","1","1","","1","1","4","1","ADANG","NIA KURNIA","1","");
INSERT INTO penduduk VALUES("1333","435","3208171407580001","BUDIMAN","KUNINGAN","1958 -14-07","","1","11","1","2","","3","88","1","1","RASID","LASIH","1","");
INSERT INTO penduduk VALUES("1334","435","3208174107610134","ENI","KUNINGAN","1961 -01-07","","2","11","1","2","","3","9","3","1","SASMITA","OYOH","1","");
INSERT INTO penduduk VALUES("1335","436","3208170607530006","AMAD","KUNINGAN","1953 -06-07","","1","11","1","4","","3","9","1","1","RUSJAI","DAWI","1","");
INSERT INTO penduduk VALUES("1336","436","3208171504880003","KUSNADI","KUNINGAN","1988 -15-04","","1","11","1","1","","3","9","4","1","AMAD","SACIH","1","");
INSERT INTO penduduk VALUES("1337","436","3208176509080001","INDRIANTI BAHARISKI","KUNINGAN","2008 -25-09","","2","11","1","1","","1","1","6","1","-","JULIA","1","");
INSERT INTO penduduk VALUES("1338","437","3208170211680001","SOBARI","KUNINGAN","1968 -02-11","","1","11","1","2","","3","88","1","1","RUSADI","SARI","1","");
INSERT INTO penduduk VALUES("1339","437","3208174101680002","KOMARIAH","KUNINGAN","1968 -01-01","","2","11","1","2","","5","2","3","1","DANI","SUMINAH","1","");
INSERT INTO penduduk VALUES("1340","437","3208170305950004","ASEP SONJAYA","KUNINGAN","1995 -03-05","","1","11","1","1","","3","3","4","1","SOBARI","KOMARIAH","1","");
INSERT INTO penduduk VALUES("1341","438","3208172512760002","DEWO DIAN ANDRIANA","KUNINGAN","1976 -25-12","","1","11","1","4","","3","88","1","1","WINARDI","MINAH","1","");
INSERT INTO penduduk VALUES("1342","438","3208174511030001","HILDA SEPTIANI","KUNINGAN","2003 -05-11","","2","11","1","1","","0","3","4","1","DEWO DIAN ANDRIANA","ETI ROHAETI","1","");
INSERT INTO penduduk VALUES("1343","439","3208171507380001","SUJONO","KUNINGAN","1938 -15-07","","1","11","1","3","","3","20","1","1","SUMINA TIRJA","SUKI","1","");
INSERT INTO penduduk VALUES("1344","440","3208170301780006","PARDI SUPARDI","KUNINGAN","1978 -03-01","","1","11","1","2","","3","88","1","1","MISTARI","ANENTI","1","");
INSERT INTO penduduk VALUES("1345","440","3208177108820003","TITI SETIASIH","KUNINGAN","1982 -31-08","","2","11","1","2","","3","2","3","1","RASA","KURNIASIH","1","");
INSERT INTO penduduk VALUES("1346","441","3208172111670006","SAMYONO","KUNINGAN","1967 -21-11","","1","11","1","2","","3","20","1","1","SATA","ROSIH","1","");
INSERT INTO penduduk VALUES("1347","441","3208174202690001","UTIMI","KUNINGAN","1969 -02-02","","2","11","1","2","","3","2","3","1","SUNARDI","ARKIMAH","1","");
INSERT INTO penduduk VALUES("1348","441","3208170909890006","EDI HIDAYATH","KUNINGAN","1989 14:25:00-09-09","","1","11","1","1","","3","88","4","1","SAMYONO","UTIMI","1","");
INSERT INTO penduduk VALUES("1349","441","3208172304030003","TRIA SUJI LESMANA","KUNINGAN","2003 12:01:00-23-04","","1","11","1","1","","0","1","4","1","SAMYONO","UTIMI","1","");
INSERT INTO penduduk VALUES("1350","442","3208171206930002","YOPI PERDANA","KUNINGAN","1993 -12-06","","1","11","1","2","","4","88","1","1","HENDRA RAHADI","TITI SUSANTI","1","");
INSERT INTO penduduk VALUES("1351","442","3203015311960007","SANTI ANDRIANI","CIANJUR","1996 -13-11","","2","5","1","2","","3","2","3","1","YAYAN SOPIANDI","YAYAH SOPIAH","1","");
INSERT INTO penduduk VALUES("1352","443","3208170206870001","UDIA","KUNINGAN","1987 -02-06","","1","11","1","2","","3","15","1","1","MISKANDA","USTIN","1","");
INSERT INTO penduduk VALUES("1353","443","3207106604920002","EKA APRIANI","CIAMIS","1992 -26-04","","2","11","1","2","","4","2","3","1","EMAN SUHERMAN","EROS ROSTIKA","1","");
INSERT INTO penduduk VALUES("1354","443","3208175905120002","ZAHRA KHAIRUNISA","KUNINGAN","2012 -19-05","","2","11","1","1","","1","1","4","1","UDIA","EKA APRIANI","1","");
INSERT INTO penduduk VALUES("1355","444","3208172705600001","NUROHMAN","KUNINGAN","1960 -27-05","","1","11","1","2","","3","20","1","1","-","-","1","");
INSERT INTO penduduk VALUES("1356","444","3208175607700003","ASINAH","KUNINGAN","1970 -16-07","","2","11","1","2","","3","2","3","1","RASID","LASIH","1","");
INSERT INTO penduduk VALUES("1357","444","3208176408030002","CICI. N","KUNINGAN","2003 12:12:00-24-08","","2","11","1","1","","1","1","4","1","NUROHMAN","ASINAH","1","");
INSERT INTO penduduk VALUES("1358","444","3208177004950003","YUNI","KUNINGAN","1995 -30-04","","2","11","1","1","","3","1","4","1","NUROHMAN","ASINAH","1","");
INSERT INTO penduduk VALUES("1359","444","3208177001100001","TIKA ANJANI","KUNINGAN","2010 -30-01","","2","11","1","1","","1","1","4","1","NUROHMAN","ASINAH","1","");
INSERT INTO penduduk VALUES("1360","444","3208172601020003","JEJEN","KUNINGAN","2001 12:12:00-26-01","","1","11","1","1","","0","3","4","1","NUROHMAN","ASINAH","1","");
INSERT INTO penduduk VALUES("1361","445","3208170210840003","IUS SUTISNA","KUNINGAN","1984 -02-10","","1","11","1","2","","3","15","1","1","SARDA","ISAH","1","");
INSERT INTO penduduk VALUES("1362","445","3208174110900003","DEVIANA","KUNINGAN","1990 -01-10","","2","11","1","2","","3","2","3","1","NANA","ANENGSIH","1","");
INSERT INTO penduduk VALUES("1363","445","3208176805130001","NAYLA KHAZNA AZZAHRA","KUNINGAN","2013 -28-05","","2","11","1","1","","1","1","4","1","IUS SUTISNA","DEVIANA","1","");
INSERT INTO penduduk VALUES("1364","446","3208172407720002","RUSDANO","KUNINGAN","1972 -24-07","","1","11","1","2","","3","88","1","1","KARNIWA","NARSIH","1","");
INSERT INTO penduduk VALUES("1365","446","3208176909830001","NUNUNG MULYATI","KUNINGAN","1983 -29-09","","2","11","1","2","","4","2","3","1","BUDIMAN","ENI","1","");
INSERT INTO penduduk VALUES("1366","446","3208171606090003","ANDRI MAULANA","KUNINGAN","2009 -16-06","","1","11","1","1","","1","1","4","1","RUSDANO","NUNUNG MULYATI","1","");
INSERT INTO penduduk VALUES("1367","446","3208172802030002","ANDRA LUKMANA","KUNINGAN","2003 -28-02","","1","11","1","1","","1","1","4","1","RUSDANO","NUNUNG MULYATI","1","");
INSERT INTO penduduk VALUES("1368","447","3208170107630297","MULYADI","KUNINGAN","1963 -01-07","","1","11","1","2","","3","20","1","1","EMAN","KOMED","1","");
INSERT INTO penduduk VALUES("1369","447","3208174107750379","SALMAH","KUNINGAN","1975 -01-07","","2","11","1","2","","3","2","3","1","MISKANDA","USTIN","1","");
INSERT INTO penduduk VALUES("1370","447","3208174107020204","NOPI APRIYANI","KUNINGAN","2002 -01-07","","2","11","1","1","","0","3","4","1","MULYADI","SALMAH","1","");
INSERT INTO penduduk VALUES("1371","448","3208172502850006","BENY ANGEL MAOLANY","KUNINGAN","1985 -25-02","","1","11","1","2","","4","88","1","1","KUSDINAR","ENTIN ROHAETIN","1","");
INSERT INTO penduduk VALUES("1372","448","3208174709910001","AYU RARA SEPTIANI","KUNINGAN","1991 -07-09","","2","11","1","2","","5","2","3","1","SUBAGIYO","SANIAH","1","");
INSERT INTO penduduk VALUES("1373","448","3208175106100003","MAELANY YUNITA WULANDARY","KUNINGAN","2010 -11-06","","2","11","1","1","","1","1","4","1","BENY ANGEL MAOLANY","AYU RARA SEPTIANI","1","");
INSERT INTO penduduk VALUES("1374","449","3208174910650002","EDAH","KUNINGAN","1965 -09-10","","2","11","1","2","","3","1","4","1","WINARDI","AMINAH","1","");
INSERT INTO penduduk VALUES("1375","449","3208170404820012","ADITYA ARIA PERMANA","KUNINGAN","1982 -04-04","","1","11","1","1","","4","88","4","1","WINARDI","AMINAH","1","");
INSERT INTO penduduk VALUES("1376","449","3208170805780005","YANA TARYANA","KUNINGAN","1978 -08-05","","1","11","1","1","","3","88","4","1","WINARDI","AMINAH","1","");
INSERT INTO penduduk VALUES("1377","450","3208171404740007","NISWAN","JAKARTA","1974 -14-04","","1","11","1","2","","3","88","1","1","JAMHURI","MARIAH","1","");
INSERT INTO penduduk VALUES("1378","450","3208174804830002","YENI NURHAENI","KUNINGAN","1983 -08-04","","2","11","1","2","","3","2","3","1","NUROHMAN","ASINAH","1","");
INSERT INTO penduduk VALUES("1379","450","3208172208060001","RENDI","KUNINGAN","2006 12:12:00-22-08","","1","11","1","1","","1","1","4","1","NISWAN","YENI NURHAENI","1","");
INSERT INTO penduduk VALUES("1380","450","3208174709020002","VINA NUR HADIYANTI","KUNINGAN","2002 -07-09","","2","11","1","1","","0","3","4","1","NISWAN","YENI NURHAENI","1","");
INSERT INTO penduduk VALUES("1381","451","3208170802790004","SUHANAN","KUNINGAN","1979 -08-02","","1","11","1","2","","0","9","1","1","AMAD","SACIH","1","");
INSERT INTO penduduk VALUES("1382","451","3208174809770003","NIA KURNIASARI","KUNINGAN","1977 -08-09","","2","11","1","2","","3","2","3","1","MAHMUD","ATMIN","1","");
INSERT INTO penduduk VALUES("1383","451","3208172503110001","RIZKI MAULANA","KUNINGAN","2011 -25-03","","1","11","1","1","","1","1","4","1","SUHANAN","NIA KURNIASARI","1","");
INSERT INTO penduduk VALUES("1384","452","3208171302800003","SOPYAN","KUNINGAN","1980 -13-02","","1","11","1","2","","4","88","1","1","SAKUM","ANIH","1","");
INSERT INTO penduduk VALUES("1385","452","3208175109830002","YATI SUPIATI","CIAMIS","1983 -11-09","","2","11","1","2","","4","2","3","1","ATIM","SUNAETI","1","");
INSERT INTO penduduk VALUES("1386","452","3208171708120003","DAFFA AGUSTIAN RAMDANI","KUNINGAN","2012 -17-08","","1","11","1","1","","1","1","4","1","SOPYAN","YATI SUPIATI","1","");
INSERT INTO penduduk VALUES("1387","453","3208095303480005","ENAH JAENAH","KUNINGAN","1948 -13-03","","2","11","1","4","","5","4","1","1","-","-","1","");
INSERT INTO penduduk VALUES("1388","453","3208092005810013","DADAN R. HIDAYAT","KUNINGAN","1981 -20-05","","1","11","1","1","","0","15","4","1","SUDIRMAN","ENAH JAENAH","1","");
INSERT INTO penduduk VALUES("1389","453","3208096010480004","ICIH KURNIASIH","KUNINGAN","1948 -20-10","","2","11","1","1","","3","1","9","1","DARLAN","DARYI","1","");
INSERT INTO penduduk VALUES("1390","454","3208170808520003","MAS SUWITO","KUNINGAN","1952 -08-08","","1","11","1","2","","5","88","1","1","SUNARWA","RANI","1","");
INSERT INTO penduduk VALUES("1391","454","3208175711950001","ELSA NOVIANTY","KUNINGAN","1995 -17-11","","2","11","1","1","","4","1","4","1","MAS SUWITO","MUSRIANAH","1","");
INSERT INTO penduduk VALUES("1392","454","3208174410860001","LELY ANGGRIANI","KUNINGAN","1986 -04-10","","2","11","1","1","","5","74","4","1","MAS SUWITO","MUSRIANAH","1","");
INSERT INTO penduduk VALUES("1393","455","3208170107450227","SUJONO","KUNINGAN","1945 -01-07","","1","11","1","2","","3","20","1","1","HASAN","DARYI","1","");
INSERT INTO penduduk VALUES("1394","455","3208174803540001","NARTI","KUNINGAN","1954 -08-03","","2","11","1","2","","3","2","3","1","SATA","USITA","1","");
INSERT INTO penduduk VALUES("1395","455","3208174112360006","USITA","KUNINGAN","1936 -01-12","","2","11","1","1","","3","1","0","1","-","-","1","");
INSERT INTO penduduk VALUES("1396","456","3273266202770002","SITI HAMIDAH","BANDUNG","1977 -22-02","","2","11","1","3","","4","2","1","1","AGUS RACHMAT","WAWAT ROHAETI","1","");
INSERT INTO penduduk VALUES("1397","456","3208172102020004","KAREL FEBRIANTO SANJAYA","BANDUNG","2002 -21-02","","1","11","1","1","","0","1","4","1","YOHANES SUKMAJAYA","SITI HAMIDAH","1","");
INSERT INTO penduduk VALUES("1398","456","3208173110080002","MUHAMMAD FAJAR NURFALAH","BANDUNG","2008 -31-10","","1","11","1","1","","1","1","4","1","SOLIHIN A.S","SITI HAMIDAH","1","");
INSERT INTO penduduk VALUES("1399","457","3273260101510010","AGUS RACHMAT","BANDUNG","1951 -01-01","","1","11","1","2","","4","88","1","1","ODI","-","1","");
INSERT INTO penduduk VALUES("1400","457","3208175508530001","WAWAT ROHAETI","BANDUNG","1953 -15-08","","2","11","1","2","","4","2","3","1","JUHARI","RUSMIATI","1","");
INSERT INTO penduduk VALUES("1401","457","3208174102060001","ANISSA ZAHRA INDAH GIRANIA","BANDUNG","2006 -01-02","","2","11","1","1","","0","1","6","1","IWAN DARWITA","NURUL FITRIAH","1","");
INSERT INTO penduduk VALUES("1402","458","3273264503370002","RUSMIATI","BANDUNG","1937 -05-03","","2","11","1","3","","3","2","1","1","IDI","TIMOH","1","");
INSERT INTO penduduk VALUES("1403","458","3208172303030001","RIFKA KYSHABILLA","BANDUNG","2003 -23-03","","1","11","1","1","","0","1","6","1","INDRA","SITI AISYAH SOLIHAT","1","");
INSERT INTO penduduk VALUES("1404","459","3208170311660002","ASKANDA","KUNINGAN","1966 -03-11","","1","11","1","2","","3","88","1","1","SUKARJA","UNAN","1","");
INSERT INTO penduduk VALUES("1405","459","3208175205750003","NINING SUPRIATIN","KUNINGAN","1975 -12-05","","2","11","1","2","","3","2","3","1","HERDIANA","RUNTINI","1","");
INSERT INTO penduduk VALUES("1406","459","3208176010980004","AI CUCU MULYANI","KUNINGAN","1998 -20-10","","2","11","1","1","","4","3","4","1","ASKANDA","NINING SUPRIATIN","1","");
INSERT INTO penduduk VALUES("1407","460","3208175604870002","ELIN MARLINA","KUNINGAN","1987 -16-04","","2","11","1","2","","4","2","1","1","SUHARNO","ETI","1","");
INSERT INTO penduduk VALUES("1408","460","3208172305080002","PAUJAN ASIFA","KUNINGAN","2008 -23-05","","1","11","1","1","","1","1","4","1","ALI YULHOWAS","ELIN MARLINA","1","");
INSERT INTO penduduk VALUES("1409","461","3208171108840003","ADANG","KUNINGAN","1984 -11-08","","1","11","1","2","","3","20","1","1","HERDIANA","ANIAH","1","");
INSERT INTO penduduk VALUES("1410","461","3205025111930005","YANTI ROSMAYANTI","GARUT","1993 -11-11","","2","11","1","2","","3","2","3","1","RUHAENDI","ROHAYATI","1","");
INSERT INTO penduduk VALUES("1411","461","3208175011110002","NISA AULIA","KUNINGAN","2011 -10-11","","2","11","1","1","","1","1","4","1","ADANG","YANTI ROSMAYANTI","1","");
INSERT INTO penduduk VALUES("1412","462","3208171004780008","SUTISNA","CIAMIS","1978 -10-04","","1","11","1","2","","3","9","1","1","AMIRJA","ISOH","1","");
INSERT INTO penduduk VALUES("1413","462","3208174107770315","ROHANAH","KUNINGAN","1977 -01-07","","2","11","1","2","","3","2","3","1","SUKARNA","NASTI","1","");
INSERT INTO penduduk VALUES("1414","462","3208173006090001","RIRIN ALIANSYAH","KUNINGAN","2009 -30-06","","1","11","1","1","","1","1","4","1","SUTISNA","ROHANAH","1","");
INSERT INTO penduduk VALUES("1415","463","3208171209550002","SUHERMAN","KUNINGAN","1955 -12-11","","1","11","1","2","","3","20","1","1","HALIMI","OMBO","1","");
INSERT INTO penduduk VALUES("1416","463","3208175209630001","ENTIN","KUNINGAN","1963 -12-11","","2","11","1","2","","3","2","3","1","SUDIA","KUNI","1","");
INSERT INTO penduduk VALUES("1417","463","3208174407990009","EUIS NURHAYATI","KUNINGAN","1999 -04-07","","2","11","1","1","","4","1","4","1","SUHERMAN","ENTIN","1","");
INSERT INTO penduduk VALUES("1418","464","3208171608570003","JUNANTA","KUNINGAN","1957 -16-08","","1","11","1","2","","3","84","1","1","SUDARYA","KUNI","1","");
INSERT INTO penduduk VALUES("1419","464","3208175207630001","ENAH","KUNINGAN","1963 -12-07","","2","11","1","2","","3","2","3","1","JAHIMI","SARTIAH","1","");
INSERT INTO penduduk VALUES("1420","464","3208170303910001","UU KURNIA","KUNINGAN","1991 -03-03","","1","11","1","1","","4","3","4","1","JUNANTA","ENAH","1","");
INSERT INTO penduduk VALUES("1421","465","3208170404720001","JUMA","KUNINGAN","1972 -04-04","","1","11","1","2","","4","88","1","1","SAEPO","RUMINAH","1","");
INSERT INTO penduduk VALUES("1422","465","3208175001720001","UMIN","KUNINGAN","1972 -10-01","","2","11","1","2","","3","2","3","1","SUNIRTA","SUKIRAH","1","");
INSERT INTO penduduk VALUES("1423","465","3208172003070001","AHMAD RIFAI","KUNINGAN","2007 -20-03","","1","11","1","1","","1","1","4","1","JUMA SUPRIATNA","UMIN","1","");
INSERT INTO penduduk VALUES("1424","465","3208172811020001","YUDA ADI SAPUTRA","KUNINGAN","2002 -28-11","","1","11","1","1","","0","1","4","1","JUMA SUPRIATNA","UMIN","1","");
INSERT INTO penduduk VALUES("1425","465","3208170709090002","RASYA LUKMAN NURHAKIM","KUNINGAN","2009 -07-09","","1","11","1","1","","1","1","4","1","JUMA","UMIN","1","");
INSERT INTO penduduk VALUES("1426","465","3208176504930012","YULI YULIANI","KUNINGAN","1993 -25-04","","2","11","1","1","","5","15","4","1","JUMA SUPRIATNA","UMIN","1","");
INSERT INTO penduduk VALUES("1427","465","3208170608370002","SUNIRTA","KUNINGAN","1937 -06-08","","1","11","1","4","","3","20","8","1","ATMA ARKIN","LACI","1","");
INSERT INTO penduduk VALUES("1428","466","3208172102660002","TUKIMAN","KUNINGAN","1966 -21-02","","1","11","1","2","","3","20","1","1","WARMADI","DAWIAH","1","");
INSERT INTO penduduk VALUES("1429","466","3208174906670001","KASMI","KUNINGAN","1967 -09-06","","2","11","1","2","","3","2","3","1","SASTRA USWA","SANAH","1","");
INSERT INTO penduduk VALUES("1430","466","3208175204010004","ATING","KUNINGAN","2001 -12-04","","2","11","1","1","","3","1","4","1","TUKIMAN","KASMI","1","");
INSERT INTO penduduk VALUES("1431","467","3208170107480165","KARMI","KUNINGAN","1948 -01-07","","1","11","1","4","","3","20","1","1","ATMA ATMAJA","DASMI","1","");
INSERT INTO penduduk VALUES("1432","468","3208170107600217","ROSADI. K","KUNINGAN","1960 -01-07","","1","11","1","2","","3","20","1","1","WARTA","UKINAH","1","");
INSERT INTO penduduk VALUES("1433","468","3208174107620246","SUNI","KUNINGAN","1962 -01-07","","2","11","1","2","","3","2","3","1","AHLAN","ASWI","1","");
INSERT INTO penduduk VALUES("1434","469","3208170510680003","KASA","KUNINGAN","1968 -05-10","","1","11","1","2","","3","9","1","1","SURANTA","ECIH","1","");
INSERT INTO penduduk VALUES("1435","469","3208175207730006","TETING","KUNINGAN","1973 -12-07","","2","11","1","2","","3","2","3","1","RUKISMAN","LASIH","1","");
INSERT INTO penduduk VALUES("1436","469","3208175308990001","LISA","KUNINGAN","1999 -13-08","","2","11","1","1","","4","1","4","1","KASA","TETING","1","");
INSERT INTO penduduk VALUES("1437","469","3208171509910005","ADIR","KUNINGAN","1991 -15-09","","1","11","1","1","","3","88","4","1","KASA","TETING","1","");
INSERT INTO penduduk VALUES("1438","469","3208170506080002","RISKI","KUNINGAN","2008 -05-06","","1","11","1","1","","1","1","4","1","KASA","TETING","1","");
INSERT INTO penduduk VALUES("1439","470","3208171709500005","HERDIANA","KUNINGAN","1950 -17-09","","1","11","1","2","","3","9","1","1","SUNINTA","RUKINI","1","");
INSERT INTO penduduk VALUES("1440","470","3208174406630014","ANIAH","KUNINGAN","1963 -04-06","","2","11","1","2","","3","9","3","1","WINANTA","JUMINTA","1","");
INSERT INTO penduduk VALUES("1441","470","3208171401910001","DIDI SURDI","KUNINGAN","1991 -14-01","","1","11","1","1","","3","88","4","1","HERDIANA","ANIAH","1","");
INSERT INTO penduduk VALUES("1442","470","3208170901960003","RUDI","KUNINGAN","1996 -09-01","","1","11","1","1","","3","88","4","1","HERDIANA","ANIAH","1","");
INSERT INTO penduduk VALUES("1443","471","3208170107630200","SUMARYA","KUNINGAN","1963 -01-07","","1","11","1","2","","3","9","1","1","BOMA","RUNASIH","1","");
INSERT INTO penduduk VALUES("1444","471","3208174912670002","KISAH","KUNINGAN","1967 -09-12","","2","11","1","2","","3","2","3","1","JAHRI","NARTI","1","");
INSERT INTO penduduk VALUES("1445","471","3208170507970003","YOGI","KUNINGAN","1997 -05-07","","1","11","1","1","","3","1","4","1","SUMARYA","KISAH","1","");
INSERT INTO penduduk VALUES("1446","472","3208170806480003","SUKARJA","KUNINGAN","1948 -08-06","","1","11","1","2","","3","9","1","1","WIJANTA","SUNAH","1","");
INSERT INTO penduduk VALUES("1447","472","3208174909570001","ISAH","KUNINGAN","1957 -09-09","","2","11","1","2","","3","2","3","1","SANTA","NARSAH","1","");
INSERT INTO penduduk VALUES("1448","473","3208170301780003","USMAN HIDAYAT","KUNINGAN","1978 -04-09","","1","11","1","2","","3","88","1","1","SUHERMAN ","ENTIN","1","");
INSERT INTO penduduk VALUES("1449","473","3208175607830004","SAENAH","KUNINGAN","1983 -16-01","","2","11","1","2","","3","2","3","1","UDINTA","KIMOH","1","");
INSERT INTO penduduk VALUES("1450","473","3208174605000001","INDAH","KUNINGAN","2000 -06-05","","2","11","1","1","","0","3","4","1","USMAN HIDAYAT","SAENAH","1","");
INSERT INTO penduduk VALUES("1451","473","3208174705070001","REHANA","KUNINGAN","2007 -07-05","","2","11","1","1","","0","3","4","1","USMAN HIDAYAT","SAENAH","1","");
INSERT INTO penduduk VALUES("1452","474","3208171506540001","SUHARNO","KUNINGAN","1954 -15-06","","1","11","1","2","","3","88","1","1","WIHANTA","ANTI","1","");
INSERT INTO penduduk VALUES("1453","474","3208176007620001","SUKAESIH","KUNINGAN","1962 -20-07","","2","11","1","2","","3","88","3","1","RAKIM","RUSINAH","1","");
INSERT INTO penduduk VALUES("1454","475","3208170107530223","ANANTA","KUNINGAN","1953 -01-07","","1","11","1","2","","3","20","1","1","MADTOMI","KARSIH","1","");
INSERT INTO penduduk VALUES("1455","475","3208174107640163","ASMAH","KUNINGAN","1964 -01-07","","2","11","1","2","","3","2","3","1","SUNIRTA","ASTI","1","");
INSERT INTO penduduk VALUES("1456","475","3208172601950006","ARIP","KUNINGAN","1995 -26-01","","1","11","1","1","","4","1","4","1","ANANTA","ASMAH","1","");
INSERT INTO penduduk VALUES("1457","475","3208175405060005","SINTA","KUNINGAN","2006 -14-05","","2","11","1","1","","1","1","6","1","SURYO","NURANI","1","");
INSERT INTO penduduk VALUES("1458","476","3208174107490118","KESIH","KUNINGAN","1949 -01-07","","2","11","1","2","","3","2","1","1","SUKARDI","MARSAH","1","");
INSERT INTO penduduk VALUES("1459","476","3208172803850001","ODING","KUNINGAN","1985 -28-03","","1","11","1","1","","4","1","4","1","SUDIMAN","KESIH","1","");
INSERT INTO penduduk VALUES("1460","477","3208171408740003","TOTO KOMARUDIN","KUNINGAN","1974 -14-08","","1","11","1","2","","3","88","1","1","TIRJO","RESWI","1","");
INSERT INTO penduduk VALUES("1461","477","3208174202830006","LILIS","KUNINGAN","1983 -02-02","","2","11","1","2","","3","2","3","1","SARLAN","SANAAH","1","");
INSERT INTO penduduk VALUES("1462","477","3208174608010002","DESI SILVIANI","KUNINGAN","2001 -06-08","","2","11","1","1","","0","3","4","1","TOTO KOMARUDIN","LILIS","1","");
INSERT INTO penduduk VALUES("1463","477","3208172007110003","DEFAN ALPADILAH","KUNINGAN","2011 -20-07","","1","11","1","1","","1","1","4","1","TOTO KOMARUDIN","LILIS","1","");
INSERT INTO penduduk VALUES("1464","478","3208170203580003","SUPRIATNA","KUNINGAN","1958 -02-03","","1","11","1","2","","3","9","1","1","SUKARDI","EDOH","1","");
INSERT INTO penduduk VALUES("1465","478","3208174308610001","SOHANAH","KUNINGAN","1961 -03-08","","2","11","1","2","","3","2","3","1","SUNINTA","RUPINI","1","");
INSERT INTO penduduk VALUES("1466","478","3208170309960004","RUHYAT","KUNINGAN","1996 -03-09","","1","11","1","1","","3","1","4","1","SUPRIATNA","SOHANAH","1","");
INSERT INTO penduduk VALUES("1467","479","3208170109620001","SARLAN","KUNINGAN","1962 -01-09","","1","11","1","2","","3","9","1","1","BOMA","RUNASIH","1","");
INSERT INTO penduduk VALUES("1468","479","3208174107670179","SANAAH","KUNINGAN","1967 -01-07","","2","11","1","2","","3","2","3","1","SUNARTA","ECIH","1","");
INSERT INTO penduduk VALUES("1469","479","3208170107890279","SURYAMAN","KUNINGAN","1989 -01-07","","1","11","1","1","","3","1","4","1","SARLAN","SANAAH","1","");
INSERT INTO penduduk VALUES("1470","479","3208172804930003","OPIK","KUNINGAN","1993 -28-04","","1","11","1","1","","1","1","4","1","SARLAN","SANAAH","1","");
INSERT INTO penduduk VALUES("1471","480","3208170502700001","JUARNA","KUNINGAN","1970 -05-02","","1","11","1","2","","3","20","1","1","SUNARYA","RATINAH","1","");
INSERT INTO penduduk VALUES("1472","480","3208174804740002","SUKINI","KUNINGAN","1974 -08-04","","2","11","1","2","","3","2","3","1","SUNINTA","NINGRUM","1","");
INSERT INTO penduduk VALUES("1473","480","3208174712060001","DEANTI","KUNINGAN","2006 -07-12","","2","11","1","1","","1","1","4","1","JUARNA","SUKINI","1","");
INSERT INTO penduduk VALUES("1474","480","3208175311980005","HALIPAH","KUNINGAN","1998 -13-11","","2","11","1","1","","0","1","4","1","JUARNA","SUKINI","1","");
INSERT INTO penduduk VALUES("1475","480","3208171302020004","ADING","KUNINGAN","2002 -13-02","","1","11","1","1","","0","1","4","1","JUARNA","SUKINI","1","");
INSERT INTO penduduk VALUES("1476","481","3208172508750001","MAMAT RAHMAT","KUNINGAN","1972 -25-08","","1","11","1","2","","4","9","1","1","EMAN SULAEMAN","ASIH","1","");
INSERT INTO penduduk VALUES("1477","481","3208175210900004","MARNI","KUNINGAN","1985 -02-06","","2","11","1","2","","3","2","3","1","JUNANTA","ENAH","1","");
INSERT INTO penduduk VALUES("1478","481","3208171811070001","ANJAR NURHAMSYAH","KUNINGAN","2007 05:00:00-18-11","","1","11","1","1","","0","3","4","1","MAMAT RAHMAT","MARNI","1","");
INSERT INTO penduduk VALUES("1479","482","3208172109500002","SUTIRJO","KUNINGAN","1950 -21-09","","1","11","1","2","","3","9","1","1","MINA","ARHUDI","1","");
INSERT INTO penduduk VALUES("1480","482","3208176010510002","RESWI","KUNINGAN","1951 -20-10","","2","11","1","2","","3","9","3","1","SANHAPI","UTI","1","");
INSERT INTO penduduk VALUES("1481","483","3208171207820002","NONO SARTONO","KUNINGAN","1982 -16-07","","1","11","1","2","","3","88","1","1","SUHERMAN","ARTINI","1","");
INSERT INTO penduduk VALUES("1482","483","3208175503900004","SITI ROPI`AH","KUNINGAN","1990 -15-03","","2","11","1","2","","3","2","3","1","RUKMAN","SARTINI","1","");
INSERT INTO penduduk VALUES("1483","483","3208175304100001","SILFIA ISNAENI","KUNINGAN","2010 -13-04","","2","11","1","1","","1","1","4","1","NONO SARTONO","SITI ROPIAH","1","");
INSERT INTO penduduk VALUES("1484","484","3208171611730004","RATAM","KUNINGAN","1973 -20-09","","1","11","1","2","","4","9","1","1","SUHANI","NAPTI","1","");
INSERT INTO penduduk VALUES("1485","484","3208174910820006","NINGSIH","KUNINGAN","1981 -03-06","","2","11","1","2","","4","2","3","1","JUHRO","KINAH","1","");
INSERT INTO penduduk VALUES("1486","484","3208175104080001","YANI YUNENGSIH","KUNINGAN","2008 05:30:00-11-04","","2","11","1","1","","0","3","4","1","RATAM","NINGSIH","1","");
INSERT INTO penduduk VALUES("1487","484","3208171206030002","RAHMAT HIDAYAT","KUNINGAN","2003 -12-06","","1","11","1","1","","0","3","4","1","RATAM","NINGSIH","1","");
INSERT INTO penduduk VALUES("1488","485","3208172606880003","SUHARNA","KUNINGAN","1988 -26-06","","1","11","1","2","","3","88","1","1","SUPRIATNA","SOHANAH","1","");
INSERT INTO penduduk VALUES("1489","486","3208170203740001","OMAN","KUNINGAN","1974 -02-03","","1","11","1","2","","3","20","1","1","SUNINTA","RUPINI","1","");
INSERT INTO penduduk VALUES("1490","486","3208175206790005","AMINAH","KUNINGAN","1979 -12-06","","2","11","1","2","","3","2","3","1","HADIMAN","OYOH","1","");
INSERT INTO penduduk VALUES("1491","486","3208171510030003","RUSMAWAN","KUNINGAN","2003 -15-10","","1","11","1","1","","0","1","4","1","OMAN","AMINAH","1","");
INSERT INTO penduduk VALUES("1492","486","3208170209110001","AJAT","KUNINGAN","2011 -02-09","","1","11","1","1","","1","1","4","1","OMAN","AMINAH","1","");
INSERT INTO penduduk VALUES("1493","486","3208175207320001","RUPINI","KUNINGAN","1932 -12-07","","2","11","1","4","","3","1","0","1","PARMA","UNAS","1","");
INSERT INTO penduduk VALUES("1494","487","3208170202710001","SAMSUDIN","KUNINGAN","1971 -02-02","","1","11","1","2","","3","20","1","1","SUKARDI","RUNTI","1","");
INSERT INTO penduduk VALUES("1495","487","3208174107800392","YAYAH","CIAMIS","1980 -01-07","","2","11","1","2","","3","2","3","1","KARLI","UCI","1","");
INSERT INTO penduduk VALUES("1496","487","3208176803110005","SISKA AMELLANTI","KUNINGAN","2011 -28-03","","2","11","1","1","","1","1","4","1","SAMSUDIN","YAYAH","1","");
INSERT INTO penduduk VALUES("1497","487","3208170107940301","ANDAR IKMAL ARIPIN","KUNINGAN","1994 -04-09","","1","11","1","1","","5","15","4","1","SAMSUDIN","YAYAH","1","");
INSERT INTO penduduk VALUES("1498","487","3208171103040002","DEDE KURNIA","KUNINGAN","2004 -11-03","","1","11","1","1","","0","3","4","1","SAMSUDIN","YAYAH","1","");
INSERT INTO penduduk VALUES("1499","488","3208171206730005","SURYANA","KUNINGAN","1973 -12-06","","1","11","1","2","","3","88","1","1","KUSWARA","ANAH","1","");
INSERT INTO penduduk VALUES("1500","488","3208176404830007","ENI SUMARNI","KUNINGAN","1983 -24-04","","2","11","1","2","","3","2","3","1","NASDA","RUMSITA","1","");
INSERT INTO penduduk VALUES("1501","488","3208171012010009","GILANG PERMANA","KUNINGAN","2001 -10-12","","1","11","1","1","","0","3","4","1","SURYANA","ENI SUMARNI","1","");
INSERT INTO penduduk VALUES("1502","489","3208175310680001","UKISAH","KUNINGAN","1968 -13-10","","2","11","1","4","","3","20","1","1","WIKATMA","RUMSINAH","1","");
INSERT INTO penduduk VALUES("1503","489","3208174812010003","ULAN","KUNINGAN","2001 -08-12","","2","11","1","1","","0","1","4","1","SUHDI","UKISAH","1","");
INSERT INTO penduduk VALUES("1504","489","3208170709980002","EKA","KUNINGAN","1998 -07-09","","1","11","1","1","","0","1","9","1","SARKUM","UBAY","1","");
INSERT INTO penduduk VALUES("1505","490","3208172005550003","DADANG ISKANDAR","KUNINGAN","1955 -20-05","","1","11","1","2","","5","88","1","1","D. SUTISNA","KARTINI","1","");
INSERT INTO penduduk VALUES("1506","490","3208175608650005","ROHATI","KUNINGAN","1965 -16-08","","2","11","1","2","","3","88","3","1","ANWARI","RUSTINI","1","");
INSERT INTO penduduk VALUES("1507","491","3208170810500002","JUHRO","KUNINGAN","1950 -08-10","","1","11","1","2","","3","9","1","1","EMON","MARI","1","");
INSERT INTO penduduk VALUES("1508","491","3208175607520001","SUTINAH","KUNINGAN","1952 -16-07","","2","11","1","2","","3","2","3","1","SUGANDI","SASIH","1","");
INSERT INTO penduduk VALUES("1509","491","3208174509320003","MARI","KUNINGAN","1932 -05-09","","2","11","1","4","","3","1","0","1","SUMARTA","IYOH","1","");
INSERT INTO penduduk VALUES("1510","491","3208175106280001","SARMAH","KUNINGAN","1928 -11-06","","2","11","1","4","","3","1","9","1","SADKAWI","ARWATI","1","");
INSERT INTO penduduk VALUES("1511","492","3208170406390001","SUARMAN","KUNINGAN","1939 -04-06","","1","11","1","2","","3","88","1","1","SADKAWI","ARWATI","1","");
INSERT INTO penduduk VALUES("1512","492","3208175208460003","SUWIRAH","KUNINGAN","1946 -12-08","","2","11","1","2","","3","2","3","1","MUSNAWI","SURMI","1","");
INSERT INTO penduduk VALUES("1513","492","3208172702940004","SUPRIANA","KUNINGAN","1994 -27-02","","1","11","1","1","","3","1","6","1","NURYADI","ENAH","1","");
INSERT INTO penduduk VALUES("1514","493","3208171209680006","JUHERI","KUNINGAN","1968 -12-09","","1","11","1","2","","3","88","1","1","WIHARTA","LASIH","1","");
INSERT INTO penduduk VALUES("1515","493","3208174410690001","SARIAH","CIAMIS","1969 -04-10","","2","11","1","2","","3","2","3","1","KARNA","UKI","1","");
INSERT INTO penduduk VALUES("1516","493","3208174404000002","AAT ATMIRA","KUNINGAN","2000 -04-04","","2","11","1","1","","0","3","4","1","JUHERI","SARIAH","1","");
INSERT INTO penduduk VALUES("1517","493","3208172704040005","ASEP PURNAMA","KUNINGAN","2004 -27-04","","1","11","1","1","","1","1","4","1","JUHERI","SARIAH","1","");
INSERT INTO penduduk VALUES("1518","494","3208171610750004","SARDI","KUNINGAN","1975 -16-10","","1","11","1","2","","3","20","1","1","SURJA","ARTI","1","");
INSERT INTO penduduk VALUES("1519","494","3208175411770003","ANIH","KUNINGAN","1977 -14-11","","2","11","1","2","","3","2","3","1","WIHARJA","SANIR","1","");
INSERT INTO penduduk VALUES("1520","494","3208170612040004","DEDI SETIANA","KUNINGAN","2004 -06-12","","1","11","1","1","","0","3","4","1","SARDI","ANIH","1","");
INSERT INTO penduduk VALUES("1521","494","3208172311110001","DERI FIRMANSYAH","KUNINGAN","2011 -23-11","","1","11","1","1","","1","1","4","1","SARDI","ANIH","1","");
INSERT INTO penduduk VALUES("1522","494","3208170608990004","DENI SUKMANA","KUNINGAN","1999 -06-08","","1","11","1","1","","3","3","4","1","SARDI","ANIH","1","");
INSERT INTO penduduk VALUES("1523","495","3208172009620003","SURYANTO","KUNINGAN","1962 -20-09","","1","11","1","2","","3","9","1","1","WIHARTA","ICIH","1","");
INSERT INTO penduduk VALUES("1524","495","3208170906000005","NURSIDIK","KUNINGAN","2000 -09-06","","1","11","1","1","","0","3","4","1","SURYANTO","CICIH","1","");
INSERT INTO penduduk VALUES("1525","496","3208170306430001","SUKNADI","KUNINGAN","1943 -03-06","","1","11","1","4","","3","20","1","1","SUNARTA","KARMINI","1","");
INSERT INTO penduduk VALUES("1526","497","3208170505640005","DANU","KUNINGAN","1964 -05-05","","1","11","1","2","","3","9","1","1","TISNA","ARTI","1","");
INSERT INTO penduduk VALUES("1527","497","3208176810690001","DETI","KUNINGAN","1969 -28-10","","2","11","1","2","","5","2","3","1","SAMID","ITIN","1","");
INSERT INTO penduduk VALUES("1528","497","3208175112030001","RISA LESTARI","KUNINGAN","2003 -11-12","","2","11","1","1","","0","3","4","1","DANU","DETI","1","");
INSERT INTO penduduk VALUES("1529","497","3208175412950001","PATIMAH","KUNINGAN","1995 -14-12","","2","11","1","1","","3","1","4","1","DANU","DETI","1","");
INSERT INTO penduduk VALUES("1530","497","3208172402010001","JAMAL PIRDAUS","KUNINGAN","2001 -24-02","","1","11","1","1","","1","1","4","1","DANU","DETI","1","");
INSERT INTO penduduk VALUES("1531","498","3208171607710003","RUSMEDI","KUNINGAN","1971 -16-07","","1","11","1","2","","3","9","1","1","WIHARTA","LASIH","1","");
INSERT INTO penduduk VALUES("1532","498","3208175008720010","IPAH","KUNINGAN","1972 -10-08","","2","11","1","2","","3","2","3","1","MARSUDI","PAINAH","1","");
INSERT INTO penduduk VALUES("1533","498","3208172503000001","TONI SUPRIYADI","KUNINGAN","2000 -25-03","","1","11","1","1","","3","3","4","1","RUSMEDI","IPAH","1","");
INSERT INTO penduduk VALUES("1534","499","3208170107370077","SUPENDI","KUNINGAN","1937 -01-07","","1","11","1","2","","3","20","1","1","WANGSA","KASWI","1","");
INSERT INTO penduduk VALUES("1535","499","3208174107470099","MINAH","KUNINGAN","1947 -01-07","","2","11","1","2","","3","2","3","1","SATU","MANENG","1","");
INSERT INTO penduduk VALUES("1536","500","3208171202630003","JUBED","KUNINGAN","1963 -12-02","","1","11","1","2","","3","20","1","1","JOHAR","KARSIH","1","");
INSERT INTO penduduk VALUES("1537","500","3208175202670002","LINAH","KUNINGAN","1967 -12-02","","2","11","1","2","","3","2","3","1","SUARMAN","SUWIRAH","1","");
INSERT INTO penduduk VALUES("1538","500","3208170904850001","SODIKIN","KUNINGAN","1985 -09-04","","1","11","1","1","","3","88","4","1","JUBED","LINAH","1","");
INSERT INTO penduduk VALUES("1539","500","3208170108920007","ARSONO","KUNINGAN","1993 -28-08","","1","11","1","1","","3","88","4","1","JUBED","LINAH","1","");
INSERT INTO penduduk VALUES("1540","500","3208172709040001","ERIANA","KUNINGAN","2004 -27-09","","1","11","1","1","","0","3","4","1","JUBED","LINAH","1","");
INSERT INTO penduduk VALUES("1541","501","3208171204700003","ROHENDI","KUNINGAN","1970 -12-04","","1","11","1","2","","4","88","1","1","AMIDIN","AMINAH","1","");
INSERT INTO penduduk VALUES("1542","501","3208176010760003","EEN ROHENAH","KUNINGAN","1976 -20-10","","2","11","1","2","","3","2","3","1","JUHANA","KENOH","1","");
INSERT INTO penduduk VALUES("1543","501","3208176111030002","TIAWATI","KUNINGAN","2003 -21-11","","2","11","1","1","","3","3","4","1","ROHENDI","EEN ROHENAH","1","");
INSERT INTO penduduk VALUES("1544","502","3208170107580200","SANIM","KUNINGAN","1958 -01-07","","1","11","1","2","","3","20","1","1","SAPJA","LASIH","1","");
INSERT INTO penduduk VALUES("1545","502","3208174107570132","AMI","KUNINGAN","1957 -01-07","","2","11","1","2","","3","2","3","1","SANTAWI","ATMIRAH","1","");
INSERT INTO penduduk VALUES("1546","503","3208177112280004","TARSIH","KUNINGAN","1928 -31-12","","2","11","1","4","","3","4","1","1","SACA MARKIN","ATMIRAH","1","");
INSERT INTO penduduk VALUES("1547","504","3208171207650002","RUSADI","KUNINGAN","1965 -12-07","","1","11","1","2","","3","9","1","1","SUKINTA","SAPNAH","1","");
INSERT INTO penduduk VALUES("1548","504","3208176006710001","ANER","KUNINGAN","1971 -20-06","","2","11","1","2","","3","2","3","1","SAMSUHNI","RASINAH","1","");
INSERT INTO penduduk VALUES("1549","504","3208175606910003","YANI NURYANI","KUNINGAN","1991 -16-06","","2","11","1","1","","4","1","4","1","RUSADI","ANER","1","");
INSERT INTO penduduk VALUES("1550","504","3208170211070003","APIP CAHYADI","KUNINGAN","2007 -02-11","","1","11","1","1","","1","1","4","1","RUSADI","ANER","1","");
INSERT INTO penduduk VALUES("1551","504","3208175008980004","SUSANTI","KUNINGAN","1998 -10-08","","2","11","1","1","","0","1","4","1","RUSADI","ANER","1","");
INSERT INTO penduduk VALUES("1552","505","3208172002670002","AHMAD","KUNINGAN","1967 -20-02","","1","11","1","2","","3","88","1","1","AHYUDIN","JUARSIH","1","");
INSERT INTO penduduk VALUES("1553","505","3208174608720007","KINAH","KUNINGAN","1972 -06-08","","2","11","1","2","","3","2","3","1","NARDI","UKI","1","");
INSERT INTO penduduk VALUES("1554","505","3208170808910002","ANDI","KUNINGAN","1991 -08-08","","1","11","1","1","","3","88","4","1","AHMAD","KINAH","1","");
INSERT INTO penduduk VALUES("1555","505","3208170202100002","DADAN","KUNINGAN","2010 -02-02","","1","11","1","1","","1","1","4","1","AHMAD","KINAH","1","");
INSERT INTO penduduk VALUES("1556","505","3208175806070005","AAN HASANAH","KUNINGAN","2007 -18-06","","2","11","1","1","","0","3","4","1","AHMAD","KINAH","1","");
INSERT INTO penduduk VALUES("1557","505","3208170812040001","ADE ARIF HAERUL","KUNINGAN","2004 -08-12","","1","11","1","1","","0","3","4","1","AHMAD","KINAH","1","");
INSERT INTO penduduk VALUES("1558","505","3208174107300099","UKI","KUNINGAN","1930 -01-07","","2","11","1","4","","3","1","8","1","SACA","ATMIRAH","1","");
INSERT INTO penduduk VALUES("1559","506","3208170107450123","SUMIRTA","KUNINGAN","1945 -01-07","","1","11","1","2","","3","20","1","1","RAKSA SANTANA","IMOH","1","");
INSERT INTO penduduk VALUES("1560","506","3208174107500169","JUARSIH","KUNINGAN","1950 -01-07","","2","11","1","2","","3","2","3","1","SALIM","OYOH","1","");
INSERT INTO penduduk VALUES("1561","506","3208170107800331","DIDI","KUNINGAN","1980 -01-07","","1","11","1","1","","3","1","4","1","SUMIRTA","JUARSIH","1","");
INSERT INTO penduduk VALUES("1562","507","3208174708710011","JUANAH","KUNINGAN","1971 -07-08","","2","11","1","4","","3","88","1","1","HERMAN","ENDOH","1","");
INSERT INTO penduduk VALUES("1563","507","3208171207990003","PIAN SOPYAN","KUNINGAN","1999 -12-07","","1","11","1","1","","0","3","4","1","AMAN","JUANAH","1","");
INSERT INTO penduduk VALUES("1564","507","3208174109070001","AYU ANA SOPIA","KUNINGAN","2007 -01-09","","2","11","1","1","","1","1","4","1","AMAN","JUANAH","1","");
INSERT INTO penduduk VALUES("1565","508","3208171703480001","RUHIMAN","KUNINGAN","1948 -17-03","","1","11","1","2","","3","88","1","1","ANTAWI","EJOH","1","");
INSERT INTO penduduk VALUES("1566","508","3208176206550001","KARSITI","KUNINGAN","1955 -22-06","","2","11","1","2","","3","88","3","1","BOMA WIJAYA","RUNASIH","1","");
INSERT INTO penduduk VALUES("1567","509","3208171608720004","KUSWARA","KUNINGAN","1972 -16-08","","1","11","1","2","","3","88","1","1","SUHDI","ANAH","1","");
INSERT INTO penduduk VALUES("1568","509","3208175003750005","JUJU JULAEHA","KUNINGAN","1975 -10-03","","2","11","1","2","","3","2","3","1","WINARTA","EMOH","1","");
INSERT INTO penduduk VALUES("1569","509","3208175903990007","IKA PITRIYANI","KUNINGAN","1999 -19-03","","2","11","1","1","","3","3","4","1","KUSWARA","JUJU JULAEHA","1","");
INSERT INTO penduduk VALUES("1570","509","3208171704040001","ADITIA LESMANA","KUNINGAN","2004 07:20:00-17-04","","1","11","1","1","","0","3","4","1","KUSWARA","JUJU JULAEHA","1","");
INSERT INTO penduduk VALUES("1571","509","3208171902140001","OZAT DAROZAT","KUNINGAN","2014 -19-02","","1","11","1","1","","1","1","4","1","KUSWARA","JUJU JULAEHA","1","");
INSERT INTO penduduk VALUES("1572","509","3208174907080003","IRMAWATI","KUNINGAN","2008 12:12:00-09-07","","2","11","1","1","","1","1","4","1","KUSWARA","JUJU JULAEHA","1","");
INSERT INTO penduduk VALUES("1573","510","3208170111690004","AHMAD SUJANA","KUNINGAN","1969 -01-11","","1","11","1","2","","3","88","1","1","SAMSUHNI","KASINAH","1","");
INSERT INTO penduduk VALUES("1574","510","3208176202050001","RISNA ANJANI","KUNINGAN","2005 -22-02","","2","11","1","1","","1","1","4","1","AHMAD SUJANA","CICIH SUANGSIH","1","");
INSERT INTO penduduk VALUES("1575","510","3208175407960001","RINA PUJANINGSIH","KUNINGAN","1996 -07-08","","2","11","1","1","","4","3","4","1","AHMAD SUJANA","CICIH SUANGSIH","1","");
INSERT INTO penduduk VALUES("1576","511","3208171408450002","AMIDIN","KUNINGAN","1945 -14-08","","1","11","1","2","","3","88","1","1","SANROJI","ANTEN","1","");
INSERT INTO penduduk VALUES("1577","511","3208176209490001","AMINAH","KUNINGAN","1949 -22-09","","2","11","1","2","","3","2","3","1","PADMA","KARNI","1","");
INSERT INTO penduduk VALUES("1578","512","3208170101710009","ESON","KUNINGAN","1971 -01-01","","1","11","1","2","","3","88","1","1","MADTOMI","KARSIH","1","");
INSERT INTO penduduk VALUES("1579","512","3208175009780009","EEN ROHAENAH","KUNINGAN","1978 -10-09","","2","11","1","2","","3","2","3","1","AMIDIN","AMIMAH","1","");
INSERT INTO penduduk VALUES("1580","512","3208174101090003","KEYZA PUTRI ANINDI","KUNINGAN","2009 -01-01","","2","11","1","1","","1","1","4","1","ESON","EEN ROHAENAH","1","");
INSERT INTO penduduk VALUES("1581","512","3208170402960003","ARI PURWANTO","KUNINGAN","1996 -04-02","","1","11","1","1","","3","3","4","1","ESON","EEN ROHAENAH","1","");
INSERT INTO penduduk VALUES("1582","512","3208170801030003","ALDY REZA SETIAWAN","KUNINGAN","2003 -08-01","","1","11","1","1","","1","1","4","1","ESON","EEN ROHAENAH","1","");
INSERT INTO penduduk VALUES("1583","513","3208172006380011","SANUDIN","KUNINGAN","1938 -20-06","","1","11","1","2","","3","9","1","1","WIANTA","SAKEM","1","");
INSERT INTO penduduk VALUES("1584","513","3208174709440001","UCIH","KUNINGAN","1944 -07-09","","2","11","1","2","","3","9","3","1","WIKARTA","NANTI","1","");
INSERT INTO penduduk VALUES("1585","514","3208171803890003","HERIYANTO","KUNINGAN","1989 -18-03","","1","11","1","2","","3","19","1","1","HAERUDIN","CARINAH","1","");
INSERT INTO penduduk VALUES("1586","514","3208176503950003","UMI HANI","KUNINGAN","1995 -25-03","","2","11","1","2","","5","2","3","1","RUSMEDI","IPAH","1","");
INSERT INTO penduduk VALUES("1587","515","3208172702750001","MAMAN SUHAMAN","KUNINGAN","1975 -27-02","","1","11","1","2","","4","88","1","1","WARTA","SARSIH","1","");
INSERT INTO penduduk VALUES("1588","515","3208174606830004","SRI PURWANTI","KUNINGAN","1983 -06-06","","2","11","1","2","","4","2","3","1","DADANG","ROHATI","1","");
INSERT INTO penduduk VALUES("1589","515","3208172210020003","RIO PURBAYA","KUNINGAN","2002 -22-10","","1","11","1","1","","0","3","4","1","MAMAN SUHAMAN","SRI PURWANTI","1","");
INSERT INTO penduduk VALUES("1590","515","3208171110080003","RAI CANDRA RAHAYU","KUNINGAN","2008 -11-10","","1","11","1","1","","1","1","4","1","MAMAN SUHAMAN","SRI PURWANTI","1","");
INSERT INTO penduduk VALUES("1591","516","3208170702510004","SUYARDI","KUNINGAN","1951 -07-02","","1","11","1","2","","3","88","1","1","NAWAWI","ANTEN","1","");
INSERT INTO penduduk VALUES("1592","516","3208175206550003","ANAH","KUNINGAN","1955 -12-06","","2","11","1","2","","3","2","3","1","SUDIA","KUNI","1","");
INSERT INTO penduduk VALUES("1593","517","3208170107460156","EDI KUSMANA","KUNINGAN","1946 -01-07","","1","11","1","4","","3","19","1","1","JUANDI","JUBAEDAH","1","");
INSERT INTO penduduk VALUES("1594","518","3208170810780002","ERI SUKRIA","KUNINGAN","1978 -08-10","","1","11","1","2","","4","88","1","1","SUPIADI","KUSNIAH","1","");
INSERT INTO penduduk VALUES("1595","518","3208175001850007","EROS ROSMIATI","KUNINGAN","1985 -10-01","","2","11","1","2","","4","2","3","1","AMIDIN","AMINAH","1","");
INSERT INTO penduduk VALUES("1596","518","3208175210090001","NALLDA PUTRY","KUNINGAN","2009 -12-10","","2","11","1","1","","1","1","4","1","ERI SUKRIA","EROS ROSMIATI","1","");
INSERT INTO penduduk VALUES("1597","518","3208172505050002","NALDI KRISTIO","KUNINGAN","2005 -25-05","","1","11","1","1","","0","3","4","1","ERI SUKRIA","EROS ROSMIATI","1","");
INSERT INTO penduduk VALUES("1598","518","3208170609140002","DHION HELLMIKO","KUNINGAN","2014 17:30:00-06-09","","1","11","1","1","","1","1","4","1","ERI SUKRIA","EROS ROSMIATI","1","");
INSERT INTO penduduk VALUES("1599","519","3208081205840001","DANI","KUNINGAN","1984 -12-05","","1","11","1","2","","5","15","1","1","M. KASTOR","SUWI","1","");
INSERT INTO penduduk VALUES("1600","519","3208174310940002","IDA RISNAWATI","KUNINGAN","1994 -03-10","","2","11","1","2","","4","2","3","1","KUSWARA","JEHA JULAEHA","1","");
INSERT INTO penduduk VALUES("1601","519","3208172905140001","RIPKI MAULANI","KUNINGAN","2014 20:30:00-29-05","","1","11","1","1","","1","1","4","1","DANI","IDA RISNAWATI","1","");
INSERT INTO penduduk VALUES("1602","520","3208175201300001","ARTI","KUNINGAN","1930 -12-01","","2","11","1","2","","3","2","1","1","SAJAM","MURNI","1","");
INSERT INTO penduduk VALUES("1603","521","3208171708750014","WAWAN IRAWAN","KUNINGAN","1975 -17-08","","1","11","1","2","","5","88","1","1","RUHIMAN","KARSITI","1","");
INSERT INTO penduduk VALUES("1604","521","3208175002820007","RULIAN","KUNINGAN","1982 -08-02","","2","11","1","2","","5","2","3","1","U. SUHYADI","SURTIAH","1","");
INSERT INTO penduduk VALUES("1605","521","3208171010000011","RENDI FERDIAWAN","KUNINGAN","2000 -10-10","","1","11","1","1","","3","3","4","1","WAWAN IRAWAN","RULIAN","1","");
INSERT INTO penduduk VALUES("1606","521","3208175712050003","DIAS SOFIA","KUNINGAN","2005 -17-12","","2","11","1","1","","0","3","4","1","WAWAN IRAWAN","RULIAN","1","");
INSERT INTO penduduk VALUES("1607","522","3208170903720007","DODO SUKANDAR","KUNINGAN","1972 -09-03","","1","11","1","2","","3","88","1","1","SUKNADI","KARTINI","1","");
INSERT INTO penduduk VALUES("1608","522","3208174204740003","TATI","CIAMIS","1974 -02-04","","2","11","1","2","","3","2","3","1","UJU","SUTIAH","1","");
INSERT INTO penduduk VALUES("1609","522","3208172707030001","PRASETIO","KUNINGAN","2003 -27-07","","1","11","1","1","","0","3","4","1","DODO SUKANDAR","TATI","1","");
INSERT INTO penduduk VALUES("1610","523","3208170107820267","NANA","KUNINGAN","1982 -01-07","","1","11","1","2","","3","9","1","1","SUPENDI","MINAH","1","");
INSERT INTO penduduk VALUES("1611","523","3208174107830269","SUSI","KUNINGAN","1983 -01-07","","2","11","1","2","","3","2","3","1","KUSMA","MISNAM","1","");
INSERT INTO penduduk VALUES("1612","524","3208150507910002","DERI PRIANA","KUNINGAN","1991 -05-07","","1","11","1","2","","5","65","1","1","JUMAN","ENAH","1","");
INSERT INTO penduduk VALUES("1613","524","3208174912920001","ICEU KARLINA","KUNINGAN","1992 -09-12","","2","11","1","2","","5","65","3","1","DODO SUKANDAR","TATI","1","");
INSERT INTO penduduk VALUES("1614","525","3208171002820001","ARI IRAWAN","KUNINGAN","1982 -02-10","","1","11","1","2","","3","20","1","1","SAURI","ANIAH","1","");
INSERT INTO penduduk VALUES("1615","525","3208174508860001","NENI NURAENI","KUNINGAN","1985 -04-06","","2","11","1","2","","3","2","3","1","JUHRO","KINAH","1","");
INSERT INTO penduduk VALUES("1616","525","3208170210140001","WIRA PADILLAH","KUNINGAN","2014 06:30:00-02-10","","1","11","1","1","","1","1","4","1","ARI IRAWAN","NENI NURAENI","1","");
INSERT INTO penduduk VALUES("1617","525","3208175503070001","WULAN PUSPITASARI","KUNINGAN","2007 -15-03","","2","11","1","1","","0","3","4","1","ARI IRAWAN","NENI NURAENI","1","");
INSERT INTO penduduk VALUES("1618","526","3208170102540002","SUHIDIN","KUNINGAN","1954 -01-02","","1","11","1","2","","3","9","1","1","SUTARMA","SUHWI","1","");
INSERT INTO penduduk VALUES("1619","526","3208175202630004","ONOH","KUNINGAN","1963 -12-02","","2","11","1","2","","3","9","3","1","SUARMAN","SUWIRAH","1","");
INSERT INTO penduduk VALUES("1620","526","3208175811890005","ATIN","KUNINGAN","1989 -18-11","","2","11","1","1","","3","88","4","1","SUHIDIN","ONOH","1","");
INSERT INTO penduduk VALUES("1621","527","3208170107300107","WIHARTA","KUNINGAN","1930 -01-07","","1","11","1","2","","3","20","1","1","WILANTA","USIH","1","");
INSERT INTO penduduk VALUES("1622","527","3208174107370079","USI","KUNINGAN","1937 -01-07","","2","11","1","2","","3","2","3","1","KERTA","NEMRES","1","");
INSERT INTO penduduk VALUES("1623","528","3208171505760013","ASLAN","KUNINGAN","1976 -15-05","","1","11","1","2","","3","88","1","1","SUDIMAN","KESIH","1","");
INSERT INTO penduduk VALUES("1624","528","3208174607790001","EMAH","KUNINGAN","1979 -06-07","","2","11","1","2","","3","2","3","1","MAJID","NARSIH","1","");
INSERT INTO penduduk VALUES("1625","528","3208170910010007","AGIS","KUNINGAN","2001 -09-10","","1","11","1","1","","1","1","4","1","ASLAN","EMAH","1","");
INSERT INTO penduduk VALUES("1626","528","3208175610090001","AIRA ZAHARA","KUNINGAN","2009 -16-10","","2","11","1","1","","1","1","4","1","ASLAN","EMAH","1","");
INSERT INTO penduduk VALUES("1627","529","3208171504920006","ANDRI","CIAMIS","1992 -15-04","","1","11","1","2","","3","88","1","1","CINAN E. HADI","ROOM","1","");
INSERT INTO penduduk VALUES("1628","529","3208175410110005","INDI OKTAVIANI","KUNINGAN","2011 -14-10","","2","11","1","1","","1","1","4","1","ANDRI","ATIN","1","");
INSERT INTO penduduk VALUES("1629","530","3208171708780007","JAJA RUSMANA","KUNINGAN","1978 -17-08","","1","11","1","2","","3","88","1","1","SAHRUDIN","OSIH","1","");
INSERT INTO penduduk VALUES("1630","530","3208175012830002","EROS ROSIDAH","KUNINGAN","1983 -10-12","","2","11","1","2","","4","2","3","1","SUWARDI","ILAH","1","");
INSERT INTO penduduk VALUES("1631","530","3208171312070003","DIKI PAIRUS","KUNINGAN","2007 -13-12","","1","11","1","1","","1","1","4","1","JAJA RUSMANA","EROS ROSIDAH","1","");
INSERT INTO penduduk VALUES("1632","530","3208175603570001","OSIH","KUNINGAN","1957 -16-03","","2","11","1","4","","3","1","0","1","SAPJA","LASIH","1","");
INSERT INTO penduduk VALUES("1633","531","3208171611710003","ENDANG SUPRIATNA HIDAYAT","CIAMIS","1971 -16-11","","1","11","1","2","","4","88","1","1","K. HIDAYAT","UMINAH","1","");
INSERT INTO penduduk VALUES("1634","532","3208170107860353","ADE","KUNINGAN","1986 -01-07","","1","11","1","2","","4","8","1","1","SARLAN","SANAAH","1","");
INSERT INTO penduduk VALUES("1635","532","3208176606910005","ISHARYANI","KUNINGAN","1991 -26-06","","2","11","1","2","","4","2","3","1","JUHERI","SARIAH","1","");
INSERT INTO penduduk VALUES("1636","532","3208172007110005","DERIS SETIANSAH","KUNINGAN","2011 -20-07","","1","11","1","1","","1","1","4","1","ADE","ISHARYANI","1","");
INSERT INTO penduduk VALUES("1637","533","3208170505680001","NURYADIN","CIAMIS","1968 -05-05","","1","11","1","2","","4","9","1","1","SUTARMAN","TARSIH","1","");
INSERT INTO penduduk VALUES("1638","533","3208174806830004","JUJU","KUNINGAN","1983 -08-06","","2","11","1","2","","3","2","3","1","SUKIRJA","KARNAH","1","");
INSERT INTO penduduk VALUES("1639","533","3208170103090003","DONI KURNIAWAN","KUNINGAN","2009 -01-03","","1","11","1","1","","1","1","4","1","NURYADIN","JUJU","1","");
INSERT INTO penduduk VALUES("1640","533","3208171110990003","NENDI","KUNINGAN","1999 -11-10","","1","11","1","1","","4","3","4","1","NURYADIN","JUJU","1","");
INSERT INTO penduduk VALUES("1641","533","3208175005420005","KARNAH","KUNINGAN","1942 -10-05","","2","11","1","4","","3","20","0","1","MUSKANA","UNAH","1","");
INSERT INTO penduduk VALUES("1642","534","3208170507700007","NASA NASEHUDIN","KUNINGAN","1970 -05-07","","1","11","1","2","","4","20","1","1","SUWITNO","TIRAH","1","");
INSERT INTO penduduk VALUES("1643","534","3208176002790003","TITIN","KUNINGAN","1973 -01-07","","2","11","1","2","","5","2","3","1","ONDI","ONEH","1","");
INSERT INTO penduduk VALUES("1644","534","3208175001100002","MAESAROH","KUNINGAN","2010 -10-01","","2","11","1","1","","1","1","4","1","NASA NASEHUDIN","TITIN","1","");
INSERT INTO penduduk VALUES("1645","534","3208176001020003","SITI PATIMAH","KUNINGAN","2002 -20-01","","2","11","1","1","","3","3","4","1","NASA NASEHUDIN","TITIN","1","");
INSERT INTO penduduk VALUES("1646","535","3208176108400002","JUNINGSIH","KUNINGAN","1940 -21-08","","2","11","1","4","","3","1","1","1","KARTAPRAJA","ARSAH","1","");
INSERT INTO penduduk VALUES("1647","536","3208170405420002","SAHRUDIN","KUNINGAN","1942 -04-05","","1","11","1","2","","3","9","1","1","WIA.RTA","UKINAH","1","");
INSERT INTO penduduk VALUES("1648","536","3208174605500002","SUTIAH","KUNINGAN","1950 -06-05","","2","11","1","2","","3","2","3","1","WININTA","SUKNI","1","");
INSERT INTO penduduk VALUES("1649","536","3208172107760003","SAHRONI","KUNINGAN","1976 -21-07","","1","11","1","2","","4","9","4","1","SAMRUDIN","SUTIAH","1","");
INSERT INTO penduduk VALUES("1650","537","3208170107661057","OJO","KUNINGAN","1966 -01-07","","1","11","1","2","","3","9","1","1","UNIRJA","EMI","1","");
INSERT INTO penduduk VALUES("1651","537","3208174606670003","KARTINAH","KUNINGAN","1967 -06-06","","2","11","1","2","","3","2","3","1","SANHAPI","UTI","1","");
INSERT INTO penduduk VALUES("1652","537","3208176202920003","FENI CENDRAWATI","KUNINGAN","1992 -22-02","","2","11","1","1","","5","15","4","1","OJO","KARTINAH","1","");
INSERT INTO penduduk VALUES("1653","537","3208171402970001","GIGIN SUGIANTO","KUNINGAN","1997 -14-02","","1","11","1","1","","5","15","4","1","OJO","KARTINAH","1","");
INSERT INTO penduduk VALUES("1654","537","3208174108040001","LAELATUN NASIPAH","KUNINGAN","2004 -01-08","","2","11","1","1","","0","3","4","1","OJO","KARTINAH","1","");
INSERT INTO penduduk VALUES("1655","538","3208170305700004","BEBEN RUSNANTO","KUNINGAN","1970 -03-05","","1","11","1","2","","4","15","1","1","SUKIRJA","KARNAH","1","");
INSERT INTO penduduk VALUES("1656","538","3208174107750270","ODAH","KUNINGAN","1975 -01-07","","2","11","1","2","","4","2","3","1","PAI","ONI","1","");
INSERT INTO penduduk VALUES("1657","538","3208170107970220","DEKI JUNALDI","KUNINGAN","1997 -01-07","","1","11","1","1","","1","1","4","1","BEBEN","ODAH","1","");
INSERT INTO penduduk VALUES("1658","538","3208171511920002","FERI ARYANTO","KUNINGAN","1992 -15-11","","1","11","1","2","","4","15","4","1","BEBEN RUSNANTO","ODAH","1","");
INSERT INTO penduduk VALUES("1659","538","3208176509060004","RIMA RAMANDA","KUNINGAN","2006 -25-09","","2","11","1","1","","0","3","4","1","BEBEN RUSNANTO","ODAH","1","");
INSERT INTO penduduk VALUES("1660","539","3208172004680001","SUDIN","KUNINGAN","1968 -20-04","","1","11","1","2","","3","9","1","1","SUKIRJA","UNINGSIH","1","");
INSERT INTO penduduk VALUES("1661","539","3208174107700216","SARI","KUNINGAN","1970 -01-07","","2","11","1","2","","3","2","3","1","SUHEWI","NAPTI","1","");
INSERT INTO penduduk VALUES("1662","539","3208171609030001","UMARDANI","KUNINGAN","2003 -16-09","","1","11","1","1","","1","1","4","1","SUDIN","SARI","1","");
INSERT INTO penduduk VALUES("1663","540","3208170405650010","MAMAN SUPRATMAN","KUNINGAN","1965 -04-05","","1","11","1","2","","4","88","1","1","ENDUN","OOH","1","");
INSERT INTO penduduk VALUES("1664","540","3208174310700005","NINING RATNINGSIH","KUNINGAN","1970 -03-10","","2","11","1","2","","4","2","3","1","HARUN","UMIN","1","");
INSERT INTO penduduk VALUES("1665","541","3208171112520002","PENDI","KUNINGAN","1952 -11-12","","1","11","1","2","","3","9","1","1","WIKATMA","SUMIATI","1","");
INSERT INTO penduduk VALUES("1666","541","3208174412560001","NASIAH","KUNINGAN","1956 -04-12","","2","11","1","2","","3","2","3","1","SUWINTA","ANESIH","1","");
INSERT INTO penduduk VALUES("1667","542","3208170902980001","ERIK","KUNINGAN","1998 -09-02","","1","11","1","1","","4","3","4","1","WAWAN KURNIAWAN","ATIH HASANAH","1","");
INSERT INTO penduduk VALUES("1668","542","3208172901060001","RIKO","KUNINGAN","2006 -29-01","","1","11","1","1","","0","3","4","1","WAWAN KURNIAWAN","ATIH HASANAH","1","");
INSERT INTO penduduk VALUES("1669","543","3208171311700001","HODIN","KUNINGAN","1970 -13-11","","1","11","1","2","","3","88","1","1","PENDI","NASIAH","1","");
INSERT INTO penduduk VALUES("1670","543","3208175902770001","ATIKAH","KUNINGAN","1977 -19-02","","2","11","1","2","","3","2","3","1","SUARMAN","SUWIRAH","1","");
INSERT INTO penduduk VALUES("1671","543","3208170911050001","YOGA MAULANA","KUNINGAN","2005 -09-11","","1","11","1","1","","0","1","4","1","HODIN","ATIKAH","1","");
INSERT INTO penduduk VALUES("1672","543","3208176807120002","CIKA ADIA RAHMADANI","KUNINGAN","2012 -28-07","","2","11","1","1","","1","1","4","1","HODIN","ATIKAH","1","");
INSERT INTO penduduk VALUES("1673","543","3208175503990008","EGA SANTIKA","KUNINGAN","1999 -15-03","","2","11","1","1","","3","1","4","1","HODIN","ATIKAH","1","");
INSERT INTO penduduk VALUES("1674","544","3208170107350050","SASIH","KUNINGAN","1935 -01-07","","1","11","1","4","","0","9","1","1","ASTKA","ISOH","1","");
INSERT INTO penduduk VALUES("1675","544","3208174107530270","LUCI","KUNINGAN","1953 -01-07","","2","11","1","4","","3","2","4","1","SUGANDI","OSASIH","1","");
INSERT INTO penduduk VALUES("1676","545","3208170107550158","ROHADI","KUNINGAN","1955 -01-07","","1","11","1","2","","3","9","1","1","JATNA","ANERI","1","");
INSERT INTO penduduk VALUES("1677","545","3208174107590168","ROKAYAH","KUNINGAN","1959 -01-07","","2","11","1","2","","3","2","3","1","WINAHDI","SARSAH","1","");
INSERT INTO penduduk VALUES("1678","545","3208174311970004","NOPASARI","KUNINGAN","1997 -03-11","","2","11","1","1","","3","15","4","1","ROHADI","ROKAYAH","1","");
INSERT INTO penduduk VALUES("1679","545","3208177101940002","ROPIAH","KUNINGAN","1994 -31-01","","2","11","1","1","","3","15","4","1","ROHADI","ROKAYAH","1","");
INSERT INTO penduduk VALUES("1680","545","3208174101960007","SAPITRI","KUNINGAN","1996 -01-01","","2","11","1","1","","3","15","4","1","ROHADI","ROKAYAH","1","");
INSERT INTO penduduk VALUES("1681","545","3208174107950171","ROPI`AH","KUNINGAN","1995 -01-07","","2","11","1","1","","1","88","4","1","ROHANDI","ROKAYAH","1","");
INSERT INTO penduduk VALUES("1682","546","3208170107460078","SUGANDA","KUNINGAN","1946 -01-07","","1","11","1","2","","3","9","1","1","WIHARDI","SANAH","1","");
INSERT INTO penduduk VALUES("1683","546","3208176405520002","SUNIRAH","KUNINGAN","1952 -24-05","","2","11","1","2","","3","2","3","1","NATA","KAWIS","1","");
INSERT INTO penduduk VALUES("1684","547","3208171308600001","SARINO","KUNINGAN","1960 -13-08","","1","11","1","2","","3","20","1","1","SANTANI","SAWEN","1","");
INSERT INTO penduduk VALUES("1685","547","3208174804700002","RUMSONAH","KUNINGAN","1970 -08-04","","2","11","1","2","","3","2","3","1","SUGANDA","SUNIRAH","1","");
INSERT INTO penduduk VALUES("1686","547","3208171310970012","ASEP TEGUH NUGROHO","KUNINGAN","1997 -13-10","","1","11","1","1","","4","3","4","1","SARINO","RUMSONAH","1","");
INSERT INTO penduduk VALUES("1687","547","3208172006110001","ALPIN SETIAWAN","KUNINGAN","2011 -20-06","","1","11","1","1","","1","1","4","1","SARINO","RUMSONAH","1","");
INSERT INTO penduduk VALUES("1688","547","3208174304070002","SINTA RAHMAWATI","KUNINGAN","2007 -03-04","","2","11","1","1","","1","1","4","1","SARINO","RUMSONAH","1","");
INSERT INTO penduduk VALUES("1689","547","3208170109000010","M. KAMALUDIN","KUNINGAN","2000 -01-09","","1","11","1","1","","0","3","4","1","SARINO","RUMSONAH","1","");
INSERT INTO penduduk VALUES("1690","548","3208174107430239","KARSIH","KUNINGAN","1943 -01-07","","2","11","1","2","","0","2","1","1","SASTAA","TEWI .","1","");
INSERT INTO penduduk VALUES("1691","548","3208176304990001","ERLITA","KUNINGAN","1999 -23-04","","2","11","1","1","","1","1","6","1","KUSNADI","OMAH","1","");
INSERT INTO penduduk VALUES("1692","549","3208170102520003","RUHYANA","KUNINGAN","1952 -01-02","","1","11","1","2","","3","20","1","1","-","-","1","");
INSERT INTO penduduk VALUES("1693","549","3208174806600002","KASIH","KUNINGAN","1960 -08-06","","2","11","1","2","","3","20","3","1","-","-","1","");
INSERT INTO penduduk VALUES("1694","549","3208172605990001","SADE LUKPI","KUNINGAN","1999 -26-05","","1","11","1","1","","1","1","6","1","ESO","KUSTINI","1","");
INSERT INTO penduduk VALUES("1695","549","3208175407010003","SINDI","KUNINGAN","2001 -14-07","","2","11","1","1","","1","1","6","1","ESO","KUSTINI","1","");
INSERT INTO penduduk VALUES("1696","550","3208171101580004","AHMAD","KUNINGAN","1958 -11-01","","1","11","1","2","","3","20","1","1","TAYUMI","KARSAH ","1","");
INSERT INTO penduduk VALUES("1697","550","3208174107630329","KASIH","KUNINGAN","1963 -01-07","","2","11","1","2","","3","2","3","1","SUTARMA","SUHWI","1","");
INSERT INTO penduduk VALUES("1698","550","3208174107830307","NINING","KUNINGAN","1983 -01-07","","2","11","1","2","","3","2","4","1","AHMAD","KASIH","1","");
INSERT INTO penduduk VALUES("1699","550","3208171902790004","SYAMSU","CIAMIS","1979 -19-02","","1","11","1","2","","3","9","5","1","KUSMA","NATI","1","");
INSERT INTO penduduk VALUES("1700","550","3208174609030002","NENG MELLY YULIANTI","KUNINGAN","2003 -06-09","","2","2","1","1","","0","1","6","1","SYAMSU","NINING","1","");
INSERT INTO penduduk VALUES("1701","551","3208171704600004","AJO","KUNINGAN","1960 -17-04","","1","11","1","2","","3","20","1","1","HAMIDI","SUTI","1","");
INSERT INTO penduduk VALUES("1702","551","3208175005710007","OMSAH","KUNINGAN","1971 -10-05","","2","11","1","2","","3","2","3","1","WITARMA","SUHWI","1","");
INSERT INTO penduduk VALUES("1703","551","3208170201010001","ANANG","KUNINGAN","2001 -02-01","","1","11","1","1","","0","3","4","1","JUHANI","OMSAH","1","");
INSERT INTO penduduk VALUES("1704","552","3208170405670009","SUTRISNA","KUNINGAN","1967 -04-05","","1","11","1","2","","5","88","1","1","HASIM","KOASIH","1","");
INSERT INTO penduduk VALUES("1705","552","3208174801700001","YANTI","KUNINGAN","1970 -08-01","","2","11","1","2","","5","2","3","1","SAMSUDIN","DODOH JUBAEDAH","1","");
INSERT INTO penduduk VALUES("1706","552","3208174908920003","NOVIANA","KUNINGAN","1992 -09-08","","2","11","1","1","","4","3","4","1","SUTRISNA","YANTI","1","");
INSERT INTO penduduk VALUES("1707","552","3208171308070002","DENYISTIAN","KUNINGAN","2007 -13-08","","1","11","1","1","","1","1","4","1","SUTRISNA","YANTI","1","");
INSERT INTO penduduk VALUES("1708","553","3208171801570002","UTARYO","KUNINGAN","1957 -18-01","","1","11","1","2","","5","4","1","1","SUTIRJA","GINI","1","");
INSERT INTO penduduk VALUES("1709","553","3208174101660009","SUKANAH","KUNINGAN","1966 -01-01","","2","11","1","2","","3","2","3","1","SUKARDI","RUMTI","1","");
INSERT INTO penduduk VALUES("1710","553","3208172501950004","ADE RIDWAN","KUNINGAN","1995 -25-01","","1","11","1","1","","5","1","4","1","UTARYO","SUKANAH","1","");
INSERT INTO penduduk VALUES("1711","553","3208170103840009","HERDIYANTO","KUNINGAN","1984 -01-03","","1","11","1","1","","5","7","4","1","UTARYO","SUKANAH","1","");
INSERT INTO penduduk VALUES("1712","554","3208171504660001","NANA","CIAMIS","1966 -15-04","","1","11","1","2","","3","88","1","1","SUTARYA","EHA","1","");
INSERT INTO penduduk VALUES("1713","554","3208175406750001","NANIH","KUNINGAN","1975 -14-06","","2","11","1","2","","4","2","3","1","PARDI","NURSIH","1","");
INSERT INTO penduduk VALUES("1714","554","3208171008000003","SIGIT SUGIANTO","KUNINGAN","2000 -10-08","","1","11","1","1","","3","3","4","1","NANA","NANIH","1","");
INSERT INTO penduduk VALUES("1715","554","3208170809940008","EGY RISTIADI","KUNINGAN","1994 -08-09","","1","11","1","1","","4","84","4","1","NANA","NANIH","1","");
INSERT INTO penduduk VALUES("1716","555","3208176006730014","SANINGSIH","KUNINGAN","1973 -20-06","","2","11","1","2","","3","2","1","1","SUGANDA","SUNIRAH","1","");
INSERT INTO penduduk VALUES("1717","555","3208172404060002","ADI FAUZI","KUNINGAN","2006 -24-04","","1","11","1","1","","0","3","4","1","SUHENDRA","SANINGSIH","1","");
INSERT INTO penduduk VALUES("1718","555","3208170811100003","IKBAL SULISTIO","KUNINGAN","2010 -08-11","","1","11","1","1","","1","1","4","1","SUHENDRA","SANINGSIH","1","");
INSERT INTO penduduk VALUES("1719","555","3208171405020004","HERU LESMANA","KUNINGAN","2002 -14-05","","1","11","1","1","","0","3","4","1","SUHENDRA","SANINGSIH","1","");
INSERT INTO penduduk VALUES("1720","556","3208171212690015","SUHENDAR","KUNINGAN","1969 -12-12","","1","11","1","2","","3","88","1","1","PADLI","NASITA","1","");
INSERT INTO penduduk VALUES("1721","556","3208176212750001","NONOH","KUNINGAN","1975 -22-12","","2","11","1","2","","3","2","3","1","HALIMI","DARNI","1","");
INSERT INTO penduduk VALUES("1722","556","3208172211900001","ASEP ARJONO","KUNINGAN","1990 -22-11","","1","11","1","1","","5","3","4","1","SUHENDAR","NONOH","1","");
INSERT INTO penduduk VALUES("1723","556","3208170601040002","INDRA LESMANA","KUNINGAN","2004 -06-01","","1","11","1","1","","1","1","4","1","SUHENDAR","NONOH","1","");
INSERT INTO penduduk VALUES("1724","557","3208171705800008","ENDI","KUNINGAN","1980 -17-05","","1","11","1","2","","3","8","1","1","TARMAN","SANEM","1","");
INSERT INTO penduduk VALUES("1725","557","3208175410860004","YULIANA","KUNINGAN","1986 -14-10","","2","11","1","2","","4","8","3","1","UTARYO","SUKANAH","1","");
INSERT INTO penduduk VALUES("1726","557","3208176408060003","FINA ELYA","KUNINGAN","2006 -24-08","","2","11","1","1","","1","1","4","1","ENDI","YULIANA","1","");
INSERT INTO penduduk VALUES("1727","557","3208174505110002","NATASYA SUHENDA","KUNINGAN","2011 -05-05","","2","11","1","1","","1","1","4","1","ENDI","YULIANA","1","");
INSERT INTO penduduk VALUES("1728","558","3208172006700011","SAHIDI","KUNINGAN","1970 -20-06","","1","11","1","2","","3","88","1","1","MIHARDI","ARSITI","1","");
INSERT INTO penduduk VALUES("1729","558","3208174308760001","ELI","KUNINGAN","1976 -03-08","","2","11","1","2","","3","2","3","1","SUNANDI","RUNANTI","1","");
INSERT INTO penduduk VALUES("1730","558","3208172303020001","SUTIONO","KUNINGAN","2002 -23-03","","1","11","1","1","","0","1","4","1","SAHIDI","ELI","1","");
INSERT INTO penduduk VALUES("1731","559","3208170204440001","SAHRUDIN","KUNINGAN","1944 -02-04","","1","11","1","2","","3","9","1","1","SUBANDI","MARSITI","1","");
INSERT INTO penduduk VALUES("1732","559","3208174711530001","TIAH","KUNINGAN","1953 -07-11","","2","11","1","2","","3","2","3","1","SANHUDI","SATI","1","");
INSERT INTO penduduk VALUES("1733","560","3208172006480007","SUWITNO","KUNINGAN","1948 -20-06","","1","11","1","2","","3","9","1","1","KARWA","UNAS","1","");
INSERT INTO penduduk VALUES("1734","560","3208175009560001","TIRAH","KUNINGAN","1956 -10-09","","2","11","1","2","","3","2","3","1","WIKARJA","NIRTA","1","");
INSERT INTO penduduk VALUES("1735","561","3208172006660002","ATA SUTIRTA","KUNINGAN","1966 -20-06","","1","11","1","2","","3","9","1","1","SUGANDI","SASIH","1","");
INSERT INTO penduduk VALUES("1736","561","3208175211740002","TUTI MULYATI","KUNINGAN","1974 -12-11","","2","11","1","2","","3","2","3","1","SUTARDI","UMSIH","1","");
INSERT INTO penduduk VALUES("1737","561","3208171810960005","HENDRA","KUNINGAN","1996 -18-10","","1","11","1","1","","3","1","4","1","ATA SUTIRTA","TUTI MULYATI","1","");
INSERT INTO penduduk VALUES("1738","561","3208172002090001","TETEN REVANA","KUNINGAN","2009 -20-02","","1","11","1","1","","1","1","4","1","ATA SUTIRTA","TUTI MULYATI","1","");
INSERT INTO penduduk VALUES("1739","561","3208176405990003","IKA SANTIKA","KUNINGAN","1999 -24-05","","2","11","1","1","","0","3","4","1","ATA SUTIRTA","TUTI MULYATI","1","");
INSERT INTO penduduk VALUES("1740","562","3208175010810005","IKA SUHARTIKA","KUNINGAN","1981 -10-10","","2","11","1","2","","4","2","1","1","BARANG","SARNATI","1","");
INSERT INTO penduduk VALUES("1741","562","3208174106130001","EVIA ARROFAH","KUNINGAN","2013 -01-06","","2","11","1","1","","1","1","4","1","HASAN","IKA SUHARTIKA","1","");
INSERT INTO penduduk VALUES("1742","562","3208177105060002","DEVA FERNANDA SANTIKA","KUNINGAN","2006 -31-05","","2","11","1","1","","0","3","4","1","HASAN","IKA SUHARTIKA","1","");
INSERT INTO penduduk VALUES("1743","562","3208172005830001","HASAN","KUNINGAN","1983 -20-05","","1","11","1","2","","3","9","9","1","YAHYA","ROKAYAH","1","");
INSERT INTO penduduk VALUES("1744","563","3208174203440003","KOASIH","KUNINGAN","1944 -02-03","","2","11","1","4","","3","4","1","1","WIHARJA","UKINAH","1","");
INSERT INTO penduduk VALUES("1745","563","3208170608700003","DEDE","KUNINGAN","1970 -06-08","","1","11","1","3","","3","88","4","1","HASIM","KOASIH","1","");
INSERT INTO penduduk VALUES("1746","564","3208171002740003","SUNARYO","CIAMIS","1974 -10-02","","1","11","1","2","","3","9","1","1","-","-","1","");
INSERT INTO penduduk VALUES("1747","564","3208174608750010","ODAH","KUNINGAN","1975 -06-08","","2","11","1","2","","3","1","3","1","SAKIRJA","KARNAH","1","");
INSERT INTO penduduk VALUES("1748","564","3208174304060002","ANI","KUNINGAN","2006 -03-04","","2","11","1","1","","1","1","4","1","SUNARYO","ODAH","1","");
INSERT INTO penduduk VALUES("1749","565","3208175001850004","YATI MARYATI","KUNINGAN","1985 -10-01","","2","11","1","2","","3","2","1","1","OJO","KARTINAH","1","");
INSERT INTO penduduk VALUES("1750","566","3208171504640002","KARNIWA","KUNINGAN","1964 -20-01","","1","11","1","2","","3","15","1","1","MADTOMI","KASIH","1","");
INSERT INTO penduduk VALUES("1751","566","3208174706710001","SULASTRI","SUKABUMI","1971 -07-08","","2","11","1","2","","4","2","3","1","WATMA","ECEH","1","");
INSERT INTO penduduk VALUES("1752","566","3208176005040002","ANISA MEILANI","KUNINGAN","2004 -20-05","","2","11","1","1","","0","3","4","1","KARNIWA","ENENG SULASTRI","1","");
INSERT INTO penduduk VALUES("1753","566","3208170506910011","MAMAN HIDAYAT","KUNINGAN","1993 -05-06","","1","11","1","1","","5","15","4","1","KARNIWA","SULASTRI","1","");
INSERT INTO penduduk VALUES("1754","567","3208171212940007","RUSDINAR","KUNINGAN","1994 -12-12","","1","11","1","2","","3","88","1","1","JUHANA","UTIAH","1","");
INSERT INTO penduduk VALUES("1755","567","3208174802960004","NUR SARININGSIH","KUNINGAN","1996 -08-02","","2","11","1","2","","4","2","3","1","SAHIDI","ELI","1","");
INSERT INTO penduduk VALUES("1756","568","3208174602970007","SUTINI","KUNINGAN","1997 -06-02","","2","11","1","2","","3","2","1","1","SAMUD","ODAH","1","");
INSERT INTO penduduk VALUES("1757","569","3208172407760004","RONI SAHRONI","KUNINGAN","1976 -21-07","","1","11","1","2","","4","81","1","1","SAHRUDIN","SUTINAH","1","");
INSERT INTO penduduk VALUES("1758","569","3208095108880004","FETI SITI PATIMAH","KUNINGAN","1988 -11-08","","2","11","1","2","","5","2","3","1","ARWA","KUSNIAH","1","");
INSERT INTO penduduk VALUES("1759","569","3208090709110001","MUHAMMAD FATHIR AL FARIZI","KUNINGAN","2011 -07-09","","1","11","1","1","","1","1","4","1","RONI SAHRONI","FETI SITI PATIMAH","1","");
INSERT INTO penduduk VALUES("1760","570","3208171504600001","JAHRI","KUNINGAN","1960 -15-04","","1","0","1","2","","3","20","1","1","SUHNI","NAPTI","1","");
INSERT INTO penduduk VALUES("1761","570","3208174107680220","SOHEDAH","KUNINGAN","1965 -11-07","","2","11","1","2","","3","20","3","1","SUKARNA","NASTI","1","");
INSERT INTO penduduk VALUES("1762","570","3208174510020001","KUSTINAH","KUNINGAN","2002 -05-10","","2","11","1","1","","0","3","4","1","JAHRI","SOHEDAH","1","");
INSERT INTO penduduk VALUES("1763","571","3208174107680252","HENI SONIA","KUNINGAN","1968 -01-07","","2","11","1","3","","4","88","1","1","SALEH","JUNIAH","1","");
INSERT INTO penduduk VALUES("1764","571","3208170204880004","JAJANG ADIMAN","KUNINGAN","1988 -22-04","","1","11","1","1","","1","1","4","1","DIDI UKARNA","HENI SONIA","1","");
INSERT INTO penduduk VALUES("1765","572","3208171201840001","AYE HEDIANTO","KUNINGAN","1984 -12-01","","1","11","1","2","","4","19","1","1","RUHYANA","NURI","1","");
INSERT INTO penduduk VALUES("1766","572","3208175012920010","HERNAWATI","KUNINGAN","1992 -10-12","","2","11","1","2","","4","2","3","1","SARDI","UCIH","1","");
INSERT INTO penduduk VALUES("1767","572","3208176705120001","MEYSA FITRIANI","KUNINGAN","2012 -27-05","","2","11","1","1","","1","1","4","1","AYE HEDIANTO","HERNAWATI","1","");
INSERT INTO penduduk VALUES("1768","573","3208174305440001","INAH","KUNINGAN","1944 -03-05","","2","11","1","4","","3","20","1","1","SUWINTA","ANESIH","1","");
INSERT INTO penduduk VALUES("1769","574","3208171103420004","JUHANA","KUNINGAN","1942 -11-03","","1","11","1","2","","3","9","1","1","WINTA","SAHAH","1","");
INSERT INTO penduduk VALUES("1770","574","3208175606520003","TARSIH","KUNINGAN","1952 -16-06","","2","11","1","2","","3","2","3","1","SUDARYA","KUNI","1","");
INSERT INTO penduduk VALUES("1771","574","3208170308910001","RIKA TRIANI","KUNINGAN","1991 -03-08","","1","11","1","1","","4","1","4","1","JUHANA","TARSIH","1","");
INSERT INTO penduduk VALUES("1772","574","3208170107060003","AMELIA","KUNINGAN","2006 -01-07","","1","11","1","1","","1","1","6","1","JOJO","TATI","1","");
INSERT INTO penduduk VALUES("1773","575","3208171310680002","ARIS SURISNO","KUNINGAN","1968 -13-10","","1","11","1","2","","5","9","1","1","JUHANA","TARSIH","1","");
INSERT INTO penduduk VALUES("1774","575","3208174902790006","HENI NURHAENI","KUNINGAN","1979 -09-02","","2","11","1","2","","4","2","3","1","HASIM","KOASIH","1","");
INSERT INTO penduduk VALUES("1775","575","3208171210960001","ARIZQI NUGRAHA","KUNINGAN","1996 -12-10","","1","11","1","1","","4","3","4","1","ARIS SURISNO","HENI NURHAENI","1","");
INSERT INTO penduduk VALUES("1776","575","3208174904090001","REFNI HELYA","KUNINGAN","2009 -09-04","","2","11","1","1","","1","1","4","1","ARIS SURISNO","HENI NURHAENI","1","");
INSERT INTO penduduk VALUES("1777","575","3208172412990007","ARUL LESMANA","KUNINGAN","1999 -24-12","","1","11","1","1","","3","3","4","1","ARIS SURISNO","HENI NURHAENI","1","");
INSERT INTO penduduk VALUES("1778","575","3208174108060002","CITRA NURLIANI","KUNINGAN","2006 -01-08","","2","11","1","1","","1","1","4","1","ARIS SURISNO","HENI NURHAENI","1","");
INSERT INTO penduduk VALUES("1779","576","3208172008690001","DUNYA","KUNINGAN","1969 -20-08","","1","11","1","2","","3","9","1","1","UNIRJA","EMI","1","");
INSERT INTO penduduk VALUES("1780","576","3208174906760001","JUNAH","KUNINGAN","1976 -09-06","","2","11","1","2","","3","2","3","1","JAENUDIN","AMINAH","1","");
INSERT INTO penduduk VALUES("1781","576","3208171810070002","AGUNG HIDAYATULOH","KUNINGAN","2007 -18-10","","1","11","1","1","","1","1","4","1","ADING","JUNAH","1","");
INSERT INTO penduduk VALUES("1782","576","3208170509080002","AGUNG HIDAYATTULOH","KUNINGAN","2008 -05-09","","1","11","1","1","","1","1","4","1","DUNYA","JUNAH","1","");
INSERT INTO penduduk VALUES("1783","576","3208174911950001","DIANA NOVIANTI","KUNINGAN","1995 -09-11","","2","11","1","1","","3","19","4","1","DUNYA","JUNAH","1","");
INSERT INTO penduduk VALUES("1784","576","3208172706050003","REZA ANANDA","KUNINGAN","2005 -27-06","","1","11","1","1","","0","3","4","1","DUNYA","JUNAH","1","");
INSERT INTO penduduk VALUES("1785","577","3208170103300003","UNIRJA","KUNINGAN","1930 -01-03","","1","11","1","2","","3","4","1","1","SURADIRAKSA","MARSITA","1","");
INSERT INTO penduduk VALUES("1786","577","3208174711400002","EMI","KUNINGAN","1940 -07-11","","2","11","1","2","","3","2","3","1","WIRADINATA","SITA","1","");
INSERT INTO penduduk VALUES("1787","578","3208171006490002","DAMAN","KUNINGAN","1949 -10-06","","1","11","1","2","","3","9","1","1","SANUKRI","SUMI","1","");
INSERT INTO penduduk VALUES("1788","578","3208176006590007","ASTI","KUNINGAN","1959 -20-06","","2","11","1","2","","3","2","3","1","WIHARNA","NETI","1","");
INSERT INTO penduduk VALUES("1789","578","3208171212950005","ALI LUKMAN","KUNINGAN","1995 -12-12","","1","11","1","1","","4","1","4","1","DAMAN","ASTI","1","");
INSERT INTO penduduk VALUES("1790","579","3208172011370001","MARHUDI","KUNINGAN","1937 -20-11","","1","11","1","2","","3","9","1","1","ARHAWI","JAMI","1","");
INSERT INTO penduduk VALUES("1791","579","3208175210400001","MARYI","KUNINGAN","1940 -12-10","","2","11","1","2","","3","2","3","1","JUYA","JUMI","1","");
INSERT INTO penduduk VALUES("1792","580","3208171011610002","RUNDI","KUNINGAN","1961 -10-11","","1","11","1","2","","3","20","1","1","WIHARTA","RANI","1","");
INSERT INTO penduduk VALUES("1793","580","3208175207650008","TARSINI","KUNINGAN","1965 -12-07","","2","11","1","2","","3","2","3","1","WANDI","ARUMI","1","");
INSERT INTO penduduk VALUES("1794","580","3208172607850007","MAIN","KUNINGAN","1985 -26-07","","1","11","1","2","","3","20","4","1","RUNDI","TINI","1","");
INSERT INTO penduduk VALUES("1795","580","3208174805220001","RANI","KUNINGAN","1922 -08-05","","2","11","1","4","","3","1","0","1","AHID","OMBO","1","");
INSERT INTO penduduk VALUES("1796","581","3208176404500001","ASRI","KUNINGAN","1950 -24-04","","2","11","1","4","","3","9","1","1","MADSAI","MUSLI","1","");
INSERT INTO penduduk VALUES("1797","581","3208170905930001","AWALUDIN","KUNINGAN","1993 -09-05","","1","11","1","1","","3","88","4","1","MUDI","ASRI","1","");
INSERT INTO penduduk VALUES("1798","582","3208171002520005","KARTAM","KUNINGAN","1952 -10-02","","1","11","1","2","","3","9","1","1","SUPANDI","ANTASIH","1","");
INSERT INTO penduduk VALUES("1799","582","3208174806630003","NONOH","KUNINGAN","1963 -08-06","","2","11","1","2","","3","2","3","1","HANDA","NARWITI","1","");
INSERT INTO penduduk VALUES("1800","582","3208176802000007","IYAN SETIANI","KUNINGAN","2000 -28-02","","2","11","1","1","","0","1","4","1","KARTAM","NONOH","1","");
INSERT INTO penduduk VALUES("1801","583","3208171006560002","M YUNUS","KUNINGAN","1956 -10-06","","1","11","1","2","","3","1","1","1","HANDA","NARWITI","1","");
INSERT INTO penduduk VALUES("1802","583","3208175809630002","ARKICIH","KUNINGAN","1963 -18-09","","2","11","1","2","","3","2","3","1","SANHUDI","SATI","1","");
INSERT INTO penduduk VALUES("1803","583","3208176202970001","SITI PURNAMA","KUNINGAN","1997 -22-02","","2","11","1","1","","0","3","4","1","M YUNUS","ARKICIH","1","");
INSERT INTO penduduk VALUES("1804","584","3208175201680005","NENI NURHAYATI","KUNINGAN","1968 -12-01","","2","11","1","2","","3","88","1","1","TARHUDIN","ASKINAH","1","");
INSERT INTO penduduk VALUES("1805","584","3208170608980007","ANDRE HESDI PRASETIA","KUNINGAN","1998 -06-08","","1","11","1","1","","0","3","4","1","MISDI IRWANTO","NENI NURHAYATI","1","");
INSERT INTO penduduk VALUES("1806","585","3208173112290005","SALEH","KUNINGAN","1929 -31-12","","1","11","1","2","","3","4","1","1","ATMA JAYA","JARNI","1","");
INSERT INTO penduduk VALUES("1807","585","3208177112450003","JUNIAH","KUNINGAN","1945 -31-12","","2","11","1","2","","3","2","3","1","ATMA SAPYA","NESPI","1","");
INSERT INTO penduduk VALUES("1808","586","3208171212820001","ASEP SONJAYA PERMANA","KUNINGAN","1982 -12-12","","1","11","1","2","","5","88","1","1","WARYA TARYANA","NENENG AKOM KOMARIAH","1","");
INSERT INTO penduduk VALUES("1809","586","3208174402820008","ULFA MAYA SOFA","MALANG","1982 -04-02","","2","11","1","2","","5","2","3","1","ABOE AMIN KHIDIR","LULUK PATIMAH","1","");
INSERT INTO penduduk VALUES("1810","586","3208171212060002","GALUH ARYA SANJAYA","MALANG","2006 -12-12","","1","11","1","1","","1","1","4","1","ASEP SONJAYA PERMANA","ULFA MAYA SOFA","1","");
INSERT INTO penduduk VALUES("1811","586","3208174408020003","ANGGEL BEBY PERMANA","MALANG","2002 -04-08","","2","11","1","1","","0","3","4","1","ASEP SONJAYA PERMANA","ULFA MAYA SOFA","1","");
INSERT INTO penduduk VALUES("1812","586","3208177101080002","INTAN BELLA PUSPITA","KUNINGAN","2008 -31-01","","2","11","1","1","","1","1","4","1","ASEP SONJAYA PERMANA","ULFA MAYA SOFA","1","");
INSERT INTO penduduk VALUES("1813","586","3208175212640001","NENENG AKOM KOMARIAH","KUNINGAN","1964 -12-12","","2","11","1","4","","4","1","0","1","SALEH","JUNIAH","1","");
INSERT INTO penduduk VALUES("1814","587","3208172006350005","TIRYA","KUNINGAN","1935 -20-06","","1","11","1","2","","3","9","1","1","ARHAWI","JAMI","1","");
INSERT INTO penduduk VALUES("1815","588","3208172010520004","SAIM KEYO","KUNINGAN","1952 -20-10","","1","11","1","2","","3","9","1","1","SUWIRYA","SANOH","1","");
INSERT INTO penduduk VALUES("1816","588","3208175208550008","SANEM","KUNINGAN","1955 -12-08","","2","11","1","2","","3","2","3","1","NATA ASLAM","KAWIS.","1","");
INSERT INTO penduduk VALUES("1817","588","3208170909930003","SONY IRWANTO","KUNINGAN","1993 -09-09","","1","11","1","1","","4","1","6","1","MAMAN","NURYATI","1","");
INSERT INTO penduduk VALUES("1818","589","3208172006520005","DARMO","KUNINGAN","1952 -20-06","","1","11","1","2","","3","20","1","1","WAUN","DAIMAH","1","");
INSERT INTO penduduk VALUES("1819","589","3208175503530002","TARSIH","KUNINGAN","1953 -15-03","","2","11","1","2","","3","2","3","1","NASTA WIRYA","SANOH","1","");
INSERT INTO penduduk VALUES("1820","589","3208175004790003","UTIN","KUNINGAN","1979 -10-04","","2","11","1","2","","3","2","4","1","DARMO","TARSIH","1","");
INSERT INTO penduduk VALUES("1821","589","3208170811750001","JODI","KUNINGAN","1975 -08-11","","1","11","1","2","","3","19","5","1","SUKARMAN","SUWIRAH","1","");
INSERT INTO penduduk VALUES("1822","589","3208176305990006","HOLIPAH","KUNINGAN","1999 -23-05","","2","11","1","1","","0","1","6","1","JODI","UTIN","1","");
INSERT INTO penduduk VALUES("1823","589","3208176308050003","WILDA","KUNINGAN","2005 -23-08","","2","11","1","1","","1","1","6","1","JODI","UTIN","1","");
INSERT INTO penduduk VALUES("1824","590","3208170101620003","NASKIM","KUNINGAN","1962 -01-01","","1","11","1","2","","3","9","1","1","DAHOMI","SIBUK","1","");
INSERT INTO penduduk VALUES("1825","590","3208177004670001","NAAH","KUNINGAN","1967 -30-04","","2","11","1","2","","3","2","3","1","SUKARTA","SAKTINAH","1","");
INSERT INTO penduduk VALUES("1826","590","3208172810980001","ROBI WIJAYA","KUNINGAN","1998 -28-10","","1","11","1","1","","1","1","4","1","NASKIM","NAAH","1","");
INSERT INTO penduduk VALUES("1827","590","3208172403050001","FINGKAN PAUJIAH","KUNINGAN","2005 -24-03","","1","11","1","1","","1","1","4","1","NASKIM","NAAH","1","");
INSERT INTO penduduk VALUES("1828","591","3208172012500003","MULYANA","KUNINGAN","1950 -20-12","","1","11","1","2","","3","9","1","1","DAHOMI","CIBUK","1","");
INSERT INTO penduduk VALUES("1829","591","3208175210560002","ANER","KUNINGAN","1956 -12-10","","2","11","1","2","","3","2","3","1","UNIRJA","EMI","1","");
INSERT INTO penduduk VALUES("1830","592","3208173112150002","SUWINTA","KUNINGAN","1915 -31-12","","1","11","1","2","","3","4","1","1","NATA ASLIM","RATMITA","1","");
INSERT INTO penduduk VALUES("1831","592","3208177112290001","MISNATI","KUNINGAN","1929 -31-12","","2","11","1","2","","3","2","3","1","WIRA","RUSITA","1","");
INSERT INTO penduduk VALUES("1832","593","3208174107350097","RUKNI","KUNINGAN","1935 -01-07","","2","11","1","4","","3","2","1","1","ARWADI","SURWI","1","");
INSERT INTO penduduk VALUES("1833","593","3208170107670199","ASDA","KUNINGAN","1960 -03-08","","1","11","1","1","","1","1","4","1","MIHANTA","RUKNI","1","");
INSERT INTO penduduk VALUES("1834","594","3208171010890005","NANANG MARYANA","KUNINGAN","1989 -10-10","","1","11","1","2","","4","88","1","1","JUHIM","KARSINI","1","");
INSERT INTO penduduk VALUES("1835","594","3202045707940006","YULIA KISTIANI","SUKABUMI","1994 -17-07","","2","11","1","2","","4","2","3","1","ADE YOHANA","ATI","1","");
INSERT INTO penduduk VALUES("1836","594","3208174411140002","BILQIS NURUL FADILLAH","KUNINGAN","2014 08:30:00-04-11","","2","11","1","1","","1","1","4","1","NANANG MARYANA","YULIA KISTIANI","1","");
INSERT INTO penduduk VALUES("1837","595","3274041007610003","NANA RUKMANA","CIREBON","1961 12:12:00-05-06","","1","11","1","2","","4","9","1","1","NURASA","SAERAH","1","");
INSERT INTO penduduk VALUES("1838","595","3274044510630008","ICIH RUKMANA","KUNINGAN","1963 -05-10","","2","11","1","2","","3","2","3","1","APANDI","INOH","1","");
INSERT INTO penduduk VALUES("1839","596","3208170908470001","RUSDA","KUNINGAN","1947 -09-08","","1","11","1","2","","3","19","1","1","WANGSA","SASWI","1","");
INSERT INTO penduduk VALUES("1840","596","3208175208570003","ARTI","KUNINGAN","1957 -12-08","","2","11","1","2","","3","2","3","1","KASPU","JUMANTI","1","");
INSERT INTO penduduk VALUES("1841","597","3208170411730006","SURGA SUNANDAR","KUNINGAN","1973 -04-11","","1","11","1","2","","3","9","1","1","UNIRJA","EMI","1","");
INSERT INTO penduduk VALUES("1842","597","3208174711710004","NURATI","KUNINGAN","1971 -07-11","","2","11","1","2","","3","2","3","1","WIHANDI","UKI","1","");
INSERT INTO penduduk VALUES("1843","598","3208171607530002","KARYONO","KUNINGAN","1953 -16-07","","1","11","1","2","","3","9","1","1","SUNARTA","NERAH","1","");
INSERT INTO penduduk VALUES("1844","598","3208176009620007","AMI","KUNINGAN","1962 -20-09","","2","11","1","2","","3","2","3","1","ADNA","SACIH","1","");
INSERT INTO penduduk VALUES("1845","599","3208171005520006","DEDI SUTENDI","KUNINGAN","1952 -10-05","","1","11","1","2","","3","88","1","1","SUKARYA","SARTINAH","1","");
INSERT INTO penduduk VALUES("1846","599","3208174805620003","ANAH","KUNINGAN","1962 -08-05","","2","11","1","2","","3","88","3","1","SANHAWI","BONI","1","");
INSERT INTO penduduk VALUES("1847","599","3208175110920005","KRISTINA","KUNINGAN","1992 -11-10","","2","11","1","1","","3","1","4","1","DEDI SUTENDI","ANAH","1","");
INSERT INTO penduduk VALUES("1848","600","3208171606530001","RUHYANA","KUNINGAN","1953 -16-06","","1","11","1","2","","3","9","1","1","SUANTA","NARSIH","1","");
INSERT INTO penduduk VALUES("1849","600","3208174107750292","NURI","KUNINGAN","1956 -01-07","","2","11","1","2","","3","9","3","1","SUWINTA","SANAH","1","");
INSERT INTO penduduk VALUES("1850","600","3208170107010213","DIKI PERMANA","KUNINGAN","2001 -01-07","","1","11","1","1","","1","1","6","1","SURDANA","TATI","1","");
INSERT INTO penduduk VALUES("1851","601","3208171110590003","SURYANTO","KUNINGAN","1959 -11-10","","1","11","1","2","","3","9","1","1","SUHANI","ENON","1","");
INSERT INTO penduduk VALUES("1852","601","3208176011630001","ROHANAH","KUNINGAN","1963 -20-11","","2","11","1","2","","3","2","3","1","UNIRJA","EMI","1","");
INSERT INTO penduduk VALUES("1853","601","3208175001920003","EHA JULAEHA","KUNINGAN","1992 -10-01","","2","11","1","1","","4","1","4","1","SURYANTO","ROHANAH","1","");
INSERT INTO penduduk VALUES("1854","602","3208170107500269","SUHANDI","KUNINGAN","1950 -01-07","","1","11","1","2","","3","9","1","1","BALANAK","-","1","");
INSERT INTO penduduk VALUES("1855","602","3208174107600365","TASIH","KUNINGAN","1960 -01-07","","2","11","1","2","","3","2","3","1","ENON","-","1","");
INSERT INTO penduduk VALUES("1856","602","3208170107840403","SODIKIN","KUNINGAN","1984 -01-07","","1","11","1","1","","3","1","4","1","SUHANDI","TASIH","1","");
INSERT INTO penduduk VALUES("1857","603","3208171204640003","SARDI","KUNINGAN","1964 -12-04","","1","11","1","2","","3","20","1","1","MARHUDI","MARYI","1","");
INSERT INTO penduduk VALUES("1858","603","3208176006690003","UCIH","KUNINGAN","1969 -20-06","","2","11","1","2","","3","2","3","1","SURAHMAN","NARMI","1","");
INSERT INTO penduduk VALUES("1859","603","3208177001900006","YANTI","KUNINGAN","1990 -30-01","","2","11","1","2","","3","2","4","1","SARDI","UCIH","1","");
INSERT INTO penduduk VALUES("1860","603","3208170103960005","YOGI ISKANDAR","KUNINGAN","1996 -01-03","","1","11","1","1","","0","3","4","1","SARDI","UCIH","1","");
INSERT INTO penduduk VALUES("1861","604","3208171510610004","JUHADI","KUNINGAN","1961 -15-10","","1","11","1","2","","3","9","1","1","ASRAIL","TARWI","1","");
INSERT INTO penduduk VALUES("1862","604","3208174806670005","UKANAH","KUNINGAN","1967 -08-06","","2","11","1","2","","3","2","3","1","WIHARDI","SANAH","1","");
INSERT INTO penduduk VALUES("1863","605","3208170107640168","NANA","KUNINGAN","1964 -01-07","","1","2","1","2","","3","9","1","1","WINANTA","SUNANTI","1","");
INSERT INTO penduduk VALUES("1864","605","3208174107690222","NARKIAH","KUNINGAN","1969 -01-07","","2","2","1","2","","3","2","3","1","JUMINTO","DARSIH","1","");
INSERT INTO penduduk VALUES("1865","605","3208171004850006","KUSWANTO","KUNINGAN","1985 -10-04","","1","2","1","1","","3","84","4","1","NANA","NARKIAH","1","");
INSERT INTO penduduk VALUES("1866","605","3208174307930003","IRMA SUSANTI","KUNINGAN","1996 -03-07","","2","11","1","1","","3","1","4","1","NANA","NARKIAH","1","");
INSERT INTO penduduk VALUES("1867","605","3208172312920003","ASEP PRIYANTO","KUNINGAN","1992 -23-12","","1","11","1","1","","4","84","4","1","NANA","NARKIAH","1","");
INSERT INTO penduduk VALUES("1868","606","3208176010450004","RASIH","KUNINGAN","1945 -20-10","","2","11","1","4","","3","20","1","1","AHID","RAMI","1","");
INSERT INTO penduduk VALUES("1869","607","3208174107620298","KINAH","KUNINGAN","1962 -01-07","","2","11","1","2","","3","2","1","1","WIRYA","SANAH .","1","");
INSERT INTO penduduk VALUES("1870","607","3208171608850006","ASEP","KUNINGAN","1985 -16-08","","1","11","1","1","","5","88","4","1","AMAT","KINAH","1","");
INSERT INTO penduduk VALUES("1871","608","3208171510730004","KAMID","KUNINGAN","1973 -15-10","","1","11","1","2","","3","20","1","1","SUKANA","SARSIH","1","");
INSERT INTO penduduk VALUES("1872","608","3208175808770001","KARTINI","KUNINGAN","1977 -18-08","","2","11","1","2","","3","2","3","1","RUHYANA","NURI","1","");
INSERT INTO penduduk VALUES("1873","608","3208171611040002","YUDI ADITIA","KUNINGAN","2004 -16-11","","1","11","1","1","","0","3","4","1","KAMID","KARTINI","1","");
INSERT INTO penduduk VALUES("1874","609","3208171202430001","SUDARYA","KUNINGAN","1943 -12-02","","1","11","1","2","","3","9","1","1","SURADINATA","SUKATI","1","");
INSERT INTO penduduk VALUES("1875","609","3208175608550004","KUSTINI","KUNINGAN","1955 -16-08","","2","11","1","2","","3","2","3","1","SUHARYA","EMAH","1","");
INSERT INTO penduduk VALUES("1876","610","3208171309670004","MAMAT","KUNINGAN","1967 -13-09","","1","11","1","2","","3","20","1","1","MIHARDI","ARSITI","1","");
INSERT INTO penduduk VALUES("1877","610","3208175210660007","KURSIH","KUNINGAN","1966 -12-10","","2","11","1","2","","3","2","3","1","WINIRTA","AMAH","1","");
INSERT INTO penduduk VALUES("1878","610","3208172010950006","SETIA ROHMANA","KUNINGAN","1995 -20-10","","1","11","1","1","","0","1","4","1","MAMAT","KURSIH","1","");
INSERT INTO penduduk VALUES("1879","611","3208172008450001","SAURI","KUNINGAN","1945 -20-08","","1","11","1","2","","3","9","1","1","WIASAN","MENIL","1","");
INSERT INTO penduduk VALUES("1880","611","3208175610540001","ANIAH","KUNINGAN","1954 -16-10","","2","11","1","2","","3","2","3","1","SUATMA","SUKI","1","");
INSERT INTO penduduk VALUES("1881","612","3208171011560003","SUTARYO","KUNINGAN","1956 -10-11","","1","11","1","2","","3","20","1","1","SUHATMA","SUKI","1","");
INSERT INTO penduduk VALUES("1882","612","3208175806660005","NURSARI","CIAMIS","1966 -18-06","","2","11","1","2","","4","2","3","1","SUMINTA","RUSTI","1","");
INSERT INTO penduduk VALUES("1883","612","3208173011000001","KAMALUDIN","KUNINGAN","2000 -30-11","","1","11","1","1","","0","1","4","1","SUTARYO","NURSARI","1","");
INSERT INTO penduduk VALUES("1884","612","3208174603050001","SOPIANI","KUNINGAN","2005 -06-03","","2","11","1","1","","1","1","4","1","SUTARYO","NURSARI","1","");
INSERT INTO penduduk VALUES("1885","612","3208172304890001","HENDRA","KUNINGAN","1989 -23-04","","1","11","1","1","","3","1","4","1","SUTARYO","NURSARI","1","");
INSERT INTO penduduk VALUES("1886","612","3208175010950003","SETIYANI","KUNINGAN","1995 -10-10","","2","11","1","1","","0","1","4","1","SUTARYO","NURSARI","1","");
INSERT INTO penduduk VALUES("1887","613","3208171706550003","SUHENDAR","KUNINGAN","1955 -17-06","","1","11","1","2","","3","20","1","1","DAHOMI","CIBUK","1","");
INSERT INTO penduduk VALUES("1888","613","3208174107610174","WINOH","KUNINGAN","1961 -01-07","","2","11","1","2","","3","2","3","1","SUHATMA","SUKI","1","");
INSERT INTO penduduk VALUES("1889","613","3208174906900003","SUTINI","KUNINGAN","1990 -09-06","","2","11","1","1","","3","1","4","1","SUHENDAR","WINOH","1","");
INSERT INTO penduduk VALUES("1890","613","3208170802950001","IMAN RUSLI","KUNINGAN","1995 -08-02","","1","11","1","1","","5","1","4","1","SUHENDAR","WINOH","1","");
INSERT INTO penduduk VALUES("1891","614","3208170604810006","SARIM","KUNINGAN","1981 -06-04","","1","11","1","2","","3","88","1","1","TARYADI","NANIH","1","");
INSERT INTO penduduk VALUES("1892","614","3208174807830002","SOHANAH","KUNINGAN","1983 -08-07","","2","11","1","2","","3","2","3","1","KATMA","USITI","1","");
INSERT INTO penduduk VALUES("1893","614","3208175901090001","SILVA ZENITA","KUNINGAN","2009 -19-01","","2","11","1","1","","1","1","4","1","SARIM","SOHANAH","1","");
INSERT INTO penduduk VALUES("1894","614","3208171011000001","DENI RISMANTO","KUNINGAN","2000 -10-11","","1","11","1","1","","4","3","4","1","SARIM","SOHANAH","1","");
INSERT INTO penduduk VALUES("1895","615","3208170701730001","NARJA","KUNINGAN","1973 -07-01","","1","11","1","2","","3","20","1","1","DAMAN","ASTI","1","");
INSERT INTO penduduk VALUES("1896","615","3208174806760006","NARTI","PATI","1976 -08-06","","2","11","1","2","","3","2","3","1","SAMADI","DEWI","1","");
INSERT INTO penduduk VALUES("1897","615","3208170606950003","SUSWANTO","KUNINGAN","1995 -06-06","","1","11","1","1","","0","1","4","1","NARJA","NARTI","1","");
INSERT INTO penduduk VALUES("1898","615","3208176201060002","JARAH","KUNINGAN","2006 -22-01","","2","11","1","1","","1","1","4","1","NARJA","NARTI","1","");
INSERT INTO penduduk VALUES("1899","616","3208172012460001","SAHUDIN","KUNINGAN","1946 -20-12","","1","11","1","2","","3","9","1","1","DOHAMI","CIBUK","1","");
INSERT INTO penduduk VALUES("1900","616","3208175707550002","KARNAH","KUNINGAN","1955 -17-07","","2","11","1","2","","3","2","3","1","SANHURI","USILAH","1","");
INSERT INTO penduduk VALUES("1901","616","3208171204890007","RUSDIANA","KUNINGAN","1989 -12-04","","1","11","1","1","","3","88","4","1","SAHUDIN","KARNAH","1","");
INSERT INTO penduduk VALUES("1902","617","3208171205780004","ANDI","KUNINGAN","1978 -12-05","","1","11","1","2","","3","9","1","1","SARTA","TURSIH","1","");
INSERT INTO penduduk VALUES("1903","617","3208175509780002","JUARTI","KUNINGAN","1978 -15-09","","2","11","1","2","","3","9","3","1","SAHUDIN","KARNAH","1","");
INSERT INTO penduduk VALUES("1904","617","3208172608050004","ANGGI","KUNINGAN","2005 08:00:00-26-08","","1","11","1","1","","0","3","4","1","ANDI","JUARTI","1","");
INSERT INTO penduduk VALUES("1905","617","3208172611070001","DIDIN","KUNINGAN","2007 -26-11","","1","11","1","1","","1","1","4","1","ANDI","JUARTI","1","");
INSERT INTO penduduk VALUES("1906","617","3208170112000011","TEDI IRAWAN","KUNINGAN","2000 -01-12","","1","11","1","1","","3","3","4","1","ANDI","JUARTI","1","");
INSERT INTO penduduk VALUES("1907","618","3208170406530004","SUTADI","KUNINGAN","1953 -04-06","","1","11","1","2","","3","9","1","1","SUANI","MARWAT","1","");
INSERT INTO penduduk VALUES("1908","618","3208174908560004","ISAH","KUNINGAN","1956 -09-08","","2","11","1","2","","3","2","3","1","HALIMI","IMI","1","");
INSERT INTO penduduk VALUES("1909","619","3208170107540237","SUHYANA","KUNINGAN","1954 -01-07","","1","11","1","2","","3","9","1","1","SAKUM","SUKATNI","1","");
INSERT INTO penduduk VALUES("1910","619","3208174107620270","KIMOH","KUNINGAN","1962 -01-07","","2","11","1","2","","3","2","3","1","WININTA","SAPTI","1","");
INSERT INTO penduduk VALUES("1911","620","3208172109810003","SARIM","KUNINGAN","1981 -21-09","","1","11","1","1","","3","9","1","1","SUKARMAN","SUWIRAH","1","");
INSERT INTO penduduk VALUES("1912","621","3208175008590001","SARSIH","KUNINGAN","1959 -10-08","","2","11","1","4","","3","20","1","1","SUKARMA","JANTI","1","");
INSERT INTO penduduk VALUES("1913","622","3208175010670002","NINING","KUNINGAN","1967 -10-10","","2","11","1","3","","3","88","1","1","WIRYA","SANOH","1","");
INSERT INTO penduduk VALUES("1914","622","3208171106920002","DITO SUSANTO","KUNINGAN","1992 -11-06","","1","11","1","1","","4","88","4","1","AAN MARYANA","NINING","1","");
INSERT INTO penduduk VALUES("1915","622","3208174604960003","LIA ASIH","KUNINGAN","1996 -06-04","","2","11","1","1","","4","88","4","1","AAN MARYANA","NINING","1","");
INSERT INTO penduduk VALUES("1916","623","3208174810560001","KASMI","KUNINGAN","1956 -08-10","","2","11","1","2","","3","20","1","1","ARIMI","RASIH","1","");
INSERT INTO penduduk VALUES("1917","623","3208172707920003","NURJAMAN","KUNINGAN","1992 -27-07","","1","11","1","1","","3","1","4","1","SUKIRJA","KASMI","1","");
INSERT INTO penduduk VALUES("1918","624","3208175808880001","NUNUNG NURLELA","KUNINGAN","1988 -18-08","","2","11","1","1","","3","88","1","1","SUKIRJA","KASMI","1","");
INSERT INTO penduduk VALUES("1919","625","3208171806800002","SUDIA","KUNINGAN","1980 -18-06","","1","11","1","2","","3","88","1","1","SAHLIMI","RANENG","1","");
INSERT INTO penduduk VALUES("1920","625","3208174107830410","KURNIATI","KUNINGAN","1983 -01-07","","2","11","1","2","","3","2","3","1","SUHENDAR","WINOH","1","");
INSERT INTO penduduk VALUES("1921","625","3208175502080002","SINDY YULYIANA","KUNINGAN","2008 -15-02","","2","11","1","1","","1","1","4","1","SUDIA","KURNIATI","1","");
INSERT INTO penduduk VALUES("1922","626","3208172707760005","JOHAN","KUNINGAN","1976 -27-07","","1","11","1","2","","3","88","1","1","JUNED","MARKONAH","1","");
INSERT INTO penduduk VALUES("1923","626","3208174505800010","ANING","KUNINGAN","1980 -05-05","","2","11","1","2","","3","2","3","1","SUHENDI","RUMINI","1","");
INSERT INTO penduduk VALUES("1924","626","3208177012070004","ARIANI","KUNINGAN","2007 -30-12","","2","11","1","1","","1","1","4","1","JOHAN","ANING","1","");
INSERT INTO penduduk VALUES("1925","626","3208171609000002","SONI ANGGARA","KUNINGAN","2000 -16-09","","1","11","1","1","","0","3","4","1","JOHAN","ANING","1","");
INSERT INTO penduduk VALUES("1926","627","3208173107860001","GITO","KUNINGAN","1986 -31-07","","1","11","1","2","","4","88","1","1","KASMAN","SITI UMI","1","");
INSERT INTO penduduk VALUES("1927","627","3208176207860010","JUANAH","KUNINGAN","1986 -22-07","","2","11","1","2","","4","2","3","1","MAMAT","KURSIH","1","");
INSERT INTO penduduk VALUES("1928","627","3208174405090003","FRIEALLA MAY FANNA","KUNINGAN","2009 -04-05","","2","11","1","1","","1","1","4","1","GITO","JUANAH","1","");
INSERT INTO penduduk VALUES("1929","628","3208171708630003","ADANG JUNAEDI","KUNINGAN","1963 -17-08","","1","11","1","2","","3","88","1","1","ARIMI","RINTI","1","");
INSERT INTO penduduk VALUES("1930","628","3208175605670001","RODIAH","KUNINGAN","1967 -16-05","","2","11","1","2","","3","2","3","1","SANHUDI","SATI","1","");
INSERT INTO penduduk VALUES("1931","628","3208174807950004","LINDA WULANDARI","KUNINGAN","1995 -08-07","","2","11","1","1","","4","1","4","1","ADANG JUNAEDI","RODIAH","1","");
INSERT INTO penduduk VALUES("1932","629","3208174107850285","YATI","KUNINGAN","1985 -01-07","","2","11","1","2","","3","1","1","1","SAURI","ANIAH","1","");
INSERT INTO penduduk VALUES("1933","630","3275122711730003","LAYUNG ABDUL HASYIM","KUNINGAN","1973 -27-11","","1","11","1","4","","4","88","1","1","M SYAMSUDIN","SAPTI","1","");
INSERT INTO penduduk VALUES("1934","630","3275125302010001","NADA NABILAH","KUNINGAN","2001 -13-02","","2","11","1","1","","3","3","4","1","LAYUNG ABDUL HASYIM","MULYANI","1","");
INSERT INTO penduduk VALUES("1935","631","3208170107940280","AHYANA","KUNINGAN","1994 -01-07","","1","11","1","1","","4","3","1","1","NANA","UMINI","1","");
INSERT INTO penduduk VALUES("1936","632","3208172006570008","SUJANA","KUNINGAN","1957 -20-06","","1","11","1","2","","3","20","1","1","-","-","1","");
INSERT INTO penduduk VALUES("1937","632","3208174107750297","JUNAH","KUNINGAN","1963 -01-07","","2","11","1","2","","3","2","3","1","-","-","1","");
INSERT INTO penduduk VALUES("1938","633","3208172508580001","KARMAN","KUNINGAN","1958 -25-08","","1","11","1","2","","3","5","1","1","HAPIDIN","SARSIH","1","");
INSERT INTO penduduk VALUES("1939","633","3208174101600003","IDAH","KUNINGAN","1960 -01-01","","2","11","1","2","","3","2","3","1","EMON","ASKINAH","1","");
INSERT INTO penduduk VALUES("1940","633","3208175206940004","EVI YULIANI","KUNINGAN","1994 -09-06","","2","11","1","1","","4","15","4","1","KARMAN","IDAH","1","");
INSERT INTO penduduk VALUES("1941","633","3208170105830001","USEP MAULANA","KUNINGAN","1983 -01-05","","1","11","1","1","","5","88","4","1","KARMAN","IDAH","1","");
INSERT INTO penduduk VALUES("1942","634","3208170107580260","UDIN","KUNINGAN","1958 -01-07","","1","11","1","2","","3","9","1","1","DARSONO","TARSIH","1","");
INSERT INTO penduduk VALUES("1943","634","3208174107620305","SANIRAH","KUNINGAN","1962 -01-07","","2","11","1","2","","3","2","3","1","SUKARYA","SARTINAH","1","");
INSERT INTO penduduk VALUES("1944","635","3208170107620254","WAHYU","KUNINGAN","1962 -01-07","","1","11","1","2","","3","8","1","1","JUNAMDI","AMTINAH","1","");
INSERT INTO penduduk VALUES("1945","635","3208174107650290","YOYOH","KUNINGAN","1965 -01-07","","2","11","1","2","","3","2","3","1","BAJAMG","AMAH","1","");
INSERT INTO penduduk VALUES("1946","635","3208170809990001","IRPAN IRAWAN","KUNINGAN","1999 -08-09","","1","11","1","1","","1","1","4","1","WAHYU","YOYOH","1","");
INSERT INTO penduduk VALUES("1947","635","3208176806020005","PEPI LESTARI","KUNINGAN","2002 -28-06","","2","11","1","1","","1","1","4","1","WAHYU","YOYOH","1","");
INSERT INTO penduduk VALUES("1948","635","3208171204890010","HARTOYO","KUNINGAN","1989 -12-04","","1","11","1","1","","5","3","4","1","WAHYU","YOYOH","1","");
INSERT INTO penduduk VALUES("1949","635","3208172802990004","IPAH","KUNINGAN","1999 -28-02","","1","11","1","1","","1","1","4","1","-","YOYOH","1","");
INSERT INTO penduduk VALUES("1950","635","3208170512020002","REPI","KUNINGAN","2002 -05-12","","1","11","1","1","","1","1","4","1","WAMYU","YOYOH","1","");
INSERT INTO penduduk VALUES("1951","636","3208171705530001","USEN","KUNINGAN","1953 -17-05","","1","11","1","2","","3","9","1","1","HALIMI","SARYI","1","");
INSERT INTO penduduk VALUES("1952","636","3208176106610001","USIH","KUNINGAN","1961 -21-06","","2","11","1","2","","3","2","3","1","SAHRIDI","RASITA","1","");
INSERT INTO penduduk VALUES("1953","637","3208172506680001","RUSNA","KUNINGAN","1966 -18-04","","1","11","1","2","","3","20","1","1","WINAHRI","RATNAH","1","");
INSERT INTO penduduk VALUES("1954","637","3208174804690002","RUSMAETI","KUNINGAN","1969 -01-07","","2","11","1","2","","3","2","3","1","MARDI","EDOH","1","");
INSERT INTO penduduk VALUES("1955","637","3208174902990002","SANTIKA","KUNINGAN","1999 -09-02","","2","11","1","1","","4","3","4","1","RUSNA","RUSMAETI","1","");
INSERT INTO penduduk VALUES("1956","638","3208171807530003","SARIPUDIN","KUNINGAN","1953 -18-07","","1","2","1","2","","3","88","1","1","SUKINTA","TIJAH","1","");
INSERT INTO penduduk VALUES("1957","638","3208174107610186","RATINAH","KUNINGAN","1961 -01-07","","2","11","1","2","","3","9","3","1","SUGANDA","SASIH .","1","");
INSERT INTO penduduk VALUES("1958","638","3208171708930005","AGUN JAPAR","KUNINGAN","1993 -17-08","","1","11","1","1","","4","88","4","1","SARIPUDIN","RATINAH","1","");
INSERT INTO penduduk VALUES("1959","639","3208170608750007","YUSMAN","KUNINGAN","1975 -06-08","","1","11","1","2","","3","8","1","1","KOSASIH","SACIH","1","");
INSERT INTO penduduk VALUES("1960","639","3208174703800005","ARKICIH","KUNINGAN","1980 -07-03","","2","11","1","2","","3","2","3","1","SUPARMAN","SARINAH","1","");
INSERT INTO penduduk VALUES("1961","639","3208170108070003","ADE RUKISMAN","KUNINGAN","2007 -01-08","","1","11","1","1","","1","1","4","1","YUSMAN","ARKICIH","1","");
INSERT INTO penduduk VALUES("1962","639","3208174802000005","NANI SOPIAH","KUNINGAN","2000 -08-02","","2","11","1","1","","0","3","4","1","YUSMAN","ARKICIH","1","");
INSERT INTO penduduk VALUES("1963","640","3208174107600297","NINGRUM","KUNINGAN","1960 -20-06","","2","11","1","2","","3","2","1","1","KASIM","MISMAWATI","1","");
INSERT INTO penduduk VALUES("1964","641","3208170107580271","HERI GUNAWAM","KUNINGAN","1958 -01-07","","1","11","1","2","","3","9","1","1","HHLIMI","SRYI","1","");
INSERT INTO penduduk VALUES("1965","641","3208174107670239","SARINAH","KUNINGAN","1967 -01-07","","2","11","1","2","","3","2","3","1","SAMMAHKI","SAPTI .","1","");
INSERT INTO penduduk VALUES("1966","641","3208170909910009","RUSDIMAN","KUNINGAN","1991 -09-09","","1","11","1","1","","0","1","4","1","HERI GUMAWAN","SARINAH","1","");
INSERT INTO penduduk VALUES("1967","642","3208170107310071","WINAHRI","KUNINGAN","1931 -20-05","","1","11","1","4","","3","20","1","1","USMA","RUSWI","1","");
INSERT INTO penduduk VALUES("1968","642","3208174107720256","JUNI","KUNINGAN","1972 -10-05","","2","11","1","3","","3","20","4","1","WINAHRI","RATMAH","1","");
INSERT INTO penduduk VALUES("1969","642","3208170409010002","SUTIANA","KUNINGAN","2001 -04-09","","1","11","1","1","","0","3","6","1","SAPRI","JUJU","1","");
INSERT INTO penduduk VALUES("1970","643","3208170202640003","SUHERLAN","KUNINGAN","1964 -02-02","","1","11","1","2","","3","9","1","1","SUTARDI","KARNITA","1","");
INSERT INTO penduduk VALUES("1971","643","3208174404700003","NURSIAH","KUNINGAN","1970 -04-04","","2","11","1","2","","3","2","3","1","SUHERMAN","RASIH","1","");
INSERT INTO penduduk VALUES("1972","643","3208175403060005","SELA LESTARI","KUNINGAN","2006 -14-03","","2","11","1","1","","1","1","4","1","SUHERLAN","NURSIAH","1","");
INSERT INTO penduduk VALUES("1973","644","3208171605710004","SAHRO SUHENDRA","KUNINGAN","1971 -16-05","","1","11","1","2","","4","15","4","1","SUTARDI","KARNITA","1","");
INSERT INTO penduduk VALUES("1974","644","3208170107040024","NOPA","KUNINGAN","2004 -01-07","","1","11","1","1","","1","1","6","1","RATAB","ATMAH","1","");
INSERT INTO penduduk VALUES("1975","645","3208170611660001","EMAN","KUNINGAN","1966 -06-11","","1","11","1","2","","3","88","1","1","DARMINI","ISAH","1","");
INSERT INTO penduduk VALUES("1976","645","3208176907730001","CICIN","KUNINGAN","1973 -29-07","","2","11","1","2","","3","2","3","1","AMIL","OMBAH","1","");
INSERT INTO penduduk VALUES("1977","645","3208172408070002","RAJIL RUSTANDI","KUNINGAN","2007 -24-08","","1","11","1","1","","0","3","4","1","EMAN","CICIN","1","");
INSERT INTO penduduk VALUES("1978","645","3208171002920004","SUKMARA","KUNINGAN","1995 -10-02","","1","11","1","1","","3","15","4","1","EMAN","CICIN","1","");
INSERT INTO penduduk VALUES("1979","646","3208170204600002","SUKDI","KUNINGAN","1959 -01-07","","1","11","1","2","","3","20","1","1","WIHANI","NEMOM","1","");
INSERT INTO penduduk VALUES("1980","646","3208175502620003","ADMI","KUNINGAN","1962 -15-02","","2","11","1","2","","3","2","3","1","SUHANAN","KARSITI","1","");
INSERT INTO penduduk VALUES("1981","646","3208175602940001","SRI YUNINGSIH","KUNINGAN","1994 -16-02","","2","11","1","1","","3","88","4","1","SUKDI","ADMI","1","");
INSERT INTO penduduk VALUES("1982","646","3208171210020008","HERA","KUNINGAN","2002 -12-10","","1","11","1","1","","1","1","6","1","ROHENDI","SANISAH","1","");
INSERT INTO penduduk VALUES("1983","647","3208170107650246","IDI","KUNINGAN","1965 -01-07","","1","11","1","2","","3","20","1","1","SUNARYA","ACAH URI","1","");
INSERT INTO penduduk VALUES("1984","647","3208174107690001","KENTI","KUNINGAN","1969 -01-07","","2","11","1","2","","3","2","3","1","MISTAR","KASMI","1","");
INSERT INTO penduduk VALUES("1985","647","3208175301880004","ELA NURLELA","KUNINGAN","1988 -13-01","","2","11","1","1","","3","19","4","1","IDI","KENTI","1","");
INSERT INTO penduduk VALUES("1986","647","3208170211930001","TAUPIK","KUNINGAN","1993 -02-11","","1","11","1","1","","3","19","4","1","IDI","KENTI","1","");
INSERT INTO penduduk VALUES("1987","648","3208176710080001","MELYANI","KUNINGAN","2008 -27-10","","2","11","1","1","","1","1","4","1","BARMAN","SANIH","1","");
INSERT INTO penduduk VALUES("1988","648","3208170403990005","RIDKA","KUNINGAN","1999 -04-03","","1","11","1","1","","0","3","4","1","BARMAN","SANIH","1","");
INSERT INTO penduduk VALUES("1989","648","3208175807300001","ACAH URI","KUNINGAN","1930 -18-07","","2","11","1","4","","3","1","8","1","KERTADINATA","SURKI","1","");
INSERT INTO penduduk VALUES("1990","649","3208170506720013","DADI INDRAYANA","KUNINGAN","1972 -05-06","","1","11","1","2","","3","88","1","1","SUPARMAN","ASKINAH","1","");
INSERT INTO penduduk VALUES("1991","649","3208174201770005","NURWANTI","KUNINGAN","1977 -02-01","","2","11","1","2","","4","2","3","1","ARMIN","NENDAH","1","");
INSERT INTO penduduk VALUES("1992","649","3208172206100001","FAUZAN SANJAYA","KUNINGAN","2010 -22-06","","1","11","1","1","","1","1","4","1","DADI INDRAYANA","NURWANTI","1","");
INSERT INTO penduduk VALUES("1993","649","3208170908990003","DIMAS BASTIAN","KUNINGAN","1999 -09-08","","1","11","1","1","","0","1","4","1","DADI INDRAYANA","NURWANTI","1","");
INSERT INTO penduduk VALUES("1994","649","3208177103050001","RIFANI YUNANDA","KUNINGAN","2005 -31-03","","2","11","1","1","","1","1","4","1","DADI INDRAYANA","NURWANTI","1","");
INSERT INTO penduduk VALUES("1995","650","3208172812600001","DARYONO","KUNINGAN","1960 -28-12","","1","11","1","2","","3","88","1","1","SUANI","ENOH","1","");
INSERT INTO penduduk VALUES("1996","650","3208174111600003","UCU","KUNINGAN","1960 -01-11","","2","11","1","2","","3","2","3","1","HAPIDIN","SARSIH","1","");
INSERT INTO penduduk VALUES("1997","651","3208170907930003","DENI YULIANDRI","KUNINGAN","1993 -09-07","","1","11","1","2","","4","15","1","1","KARMAN","IDAH","1","");
INSERT INTO penduduk VALUES("1998","651","3207106810940003","PIPIT PITRIAWATI","CIAMIS","1994 -28-10","","2","11","1","2","","4","2","3","1","SURTA","UNIRAH","1","");
INSERT INTO penduduk VALUES("1999","652","3208171004860006","NANA RUSDIANA","CIAMIS","1986 -10-04","","1","11","1","2","","5","88","1","1","ANDA","SURTI","1","");
INSERT INTO penduduk VALUES("2000","652","3208174805890007","WIWIN WINARSIH","KUNINGAN","1989 -08-05","","2","11","1","2","","3","2","3","1","SARIPUDIN","RASINAH","1","");
INSERT INTO penduduk VALUES("2001","652","3208174301110001","TESYA AAT AMINAH","KUNINGAN","2011 -03-01","","2","11","1","1","","1","1","4","1","NANA RUSDIANA","WIWIN WINARSIH","1","");
INSERT INTO penduduk VALUES("2002","653","3208176206400001","SAPTI","KUNINGAN","1940 -22-06","","2","11","1","2","","3","2","1","1","SUMIRTI","UNAS","1","");
INSERT INTO penduduk VALUES("2003","653","3208174411050001","WULAN ROMADONA","KUNINGAN","2005 -04-11","","2","11","1","1","","1","1","6","1","LAYUNG ABDUL HASIM","YANI","1","");
INSERT INTO penduduk VALUES("2004","653","3208175302010001","NADA NABILAH","KUNINGAN","2001 -13-02","","2","11","1","1","","0","1","6","1","LAYUNG ABDUL HASIM","YANI","1","");
INSERT INTO penduduk VALUES("2005","653","3208171505450001","SYAMSUDIN","KUNINGAN","1930 -15-05","","1","11","1","2","","3","9","9","1","NATA WARJA ARJI","SUWI","1","");
INSERT INTO penduduk VALUES("2006","654","3208170812910002","ANDRI","KUNINGAN","1991 -08-12","","1","11","1","2","","0","20","1","1","RUSNA","RUSMETI","1","");
INSERT INTO penduduk VALUES("2007","655","3208262803900001","FIRMAN SANTOSA","KUNINGAN","1990 -28-03","","1","11","1","2","","4","20","1","1","AENDI","BADRIAH","1","");
INSERT INTO penduduk VALUES("2008","656","3208170608700004","JONI","KUNINGAN","1970 -06-08","","1","11","1","2","","3","88","1","1","SUTISMAN","MINI","1","");
INSERT INTO penduduk VALUES("2009","656","3208174903790003","ELIN","KUNINGAN","1979 -09-03","","2","11","1","2","","3","2","3","1","IWAN","EMI","1","");
INSERT INTO penduduk VALUES("2010","656","3208170102100001","FREDI SAPUTRA","KUNINGAN","2010 -01-02","","1","11","1","1","","1","1","4","1","RUSLAN","ELIN","1","");
INSERT INTO penduduk VALUES("2011","656","3208174108030001","ANITA YULIANTI","KUNINGAN","2003 -01-08","","2","11","1","1","","1","1","4","1","RUSLAN","ELIN","1","");
INSERT INTO penduduk VALUES("2012","656","3208177101000002","NIA AMELIA","KUNINGAN","2000 -31-01","","2","11","1","1","","3","1","4","1","RUSLAN","ELIN","1","");
INSERT INTO penduduk VALUES("2013","657","3208170604730006","DARNO","KUNINGAN","1973 -06-04","","1","11","1","2","","3","84","1","1","SUNARYA","ACAH URI","1","");
INSERT INTO penduduk VALUES("2014","657","3208175901820002","SUMARNI","KUNINGAN","1982 -19-01","","2","11","1","2","","3","2","3","1","SUJANGI","SOPINAH","1","");
INSERT INTO penduduk VALUES("2015","657","3208175605020003","LISNAWATI","KUNINGAN","2002 -16-05","","2","11","1","1","","0","1","4","1","DARNO","SUMARNI","1","");
INSERT INTO penduduk VALUES("2016","657","3208172402110001","YUDA SAPUTRA","KUNINGAN","2011 -24-02","","1","11","1","1","","1","1","4","1","DARNO","SUMARNI","1","");
INSERT INTO penduduk VALUES("2017","658","3208170607490001","KOSASIH","KUNINGAN","1949 -06-07","","1","11","1","2","","3","27","1","1","KANTA","TIJAH","1","");
INSERT INTO penduduk VALUES("2018","658","3208174806550003","SACIH","KUNINGAN","1955 -08-06","","2","11","1","2","","3","2","3","1","ARDI","WINTA","1","");
INSERT INTO penduduk VALUES("2019","659","3208171212710003","WAHYO","KUNINGAN","1971 -12-12","","1","11","1","2","","3","20","1","1","SUKARYA","SARTINAH","1","");
INSERT INTO penduduk VALUES("2020","659","3208175305720003","KARSINAH","KUNINGAN","1972 -13-05","","2","11","1","2","","3","2","3","1","SAHMAD","SAHIR","1","");
INSERT INTO penduduk VALUES("2021","659","3208174911960003","EVA NURSARI","KUNINGAN","1996 -09-11","","2","11","1","1","","4","1","4","1","WAHYO","KARSINAH","1","");
INSERT INTO penduduk VALUES("2022","659","3208176801050002","WINDI PADILAH","KUNINGAN","2005 -28-01","","2","11","1","1","","0","1","4","1","WAHYO","KARSINAH","1","");
INSERT INTO penduduk VALUES("2023","659","3208171010110003","AKBAR SETIAWAN","KUNINGAN","2011 -10-10","","1","11","1","1","","1","1","4","1","WAHYO","KARSINAH","1","");
INSERT INTO penduduk VALUES("2024","659","3208172506980009","RAMDANI","KUNINGAN","1998 -25-06","","1","11","1","1","","4","1","4","1","WAHYO","KARSINAH","1","");
INSERT INTO penduduk VALUES("2025","660","3208171111850003","ARI ASYARI ULIYAH","CIANJUR","1985 -11-11","","1","11","1","2","","5","15","1","1","ASEP ABDULAH","IMAS SAADAH","1","");
INSERT INTO penduduk VALUES("2026","660","3208176306830006","UJU JUHALAEHA","KUNINGAN","1983 -23-06","","2","11","1","2","","5","2","3","1","SYAMSUDIN","SAPTI","1","");
INSERT INTO penduduk VALUES("2027","660","3208176909130001","NEYSA MUTIARA ANINDYA","KUNINGAN","2013 -29-09","","2","11","1","1","","1","1","4","1","ARI ASYARI ULIYAH","UJU JUHALAEHA","1","");
INSERT INTO penduduk VALUES("2028","660","3208170912070002","KEVAN RAYHAN AYYASI","KUNINGAN","2007 -09-12","","1","11","1","1","","0","3","4","1","ARI ASYARI ULIYAH","UJU JUHALAEHA","1","");
INSERT INTO penduduk VALUES("2029","661","3208172006420005","SUPARMAN","KUNINGAN","1942 -20-06","","1","11","1","2","","3","9","1","1","MADSAI AMSAR","MUSLI","1","");
INSERT INTO penduduk VALUES("2030","661","3208175507470001","ASKINAH","KUNINGAN","1947 -15-07","","2","11","1","2","","3","9","3","1","KARTOMI","ENTEN","1","");
INSERT INTO penduduk VALUES("2031","662","3208170107580241","NANA","KUNINGAN","1967 -05-08","","1","11","1","2","","3","20","1","1","ADHARI","SAITI","1","");
INSERT INTO penduduk VALUES("2032","662","3208174107720230","UMINI","KUNINGAN","1968 -08-08","","2","11","1","2","","3","2","3","1","SUKANDI","TASIH","1","");
INSERT INTO penduduk VALUES("2033","663","3208170107550206","SUKARJO","KUNINGAN","1955 -01-07","","1","11","1","2","","3","9","1","1","SASTRA","AYI","1","");
INSERT INTO penduduk VALUES("2034","663","3208174107530362","AMI","KUNINGAN","1953 -01-07","","2","11","1","2","","3","2","3","1","JANTA","RUSWI","1","");
INSERT INTO penduduk VALUES("2035","663","3208174107930237","ANIH","KUNINGAN","1993 -01-07","","2","11","1","1","","3","1","4","1","SUKARJO","AMI","1","");
INSERT INTO penduduk VALUES("2036","663","3208170107910290","SUPANDI","KUNINGAN","1991 -01-07","","1","11","1","1","","3","88","4","1","SUKARJO","AMI","1","");
INSERT INTO penduduk VALUES("2037","663","3208170107930282","JONO","KUNINGAN","1993 -01-07","","1","11","1","1","","0","1","4","1","SUKAKJO`","AMI","1","");
INSERT INTO penduduk VALUES("2038","664","3208170506650006","KOSID","KUNINGAN","1965 -05-06","","1","11","1","2","","3","88","1","1","SAHRONI","SARMAH","1","");
INSERT INTO penduduk VALUES("2039","664","3208176604700002","UNING","KUNINGAN","1970 -26-04","","2","11","1","2","","3","2","3","1","SUKIRYA","SUTIRAH","1","");
INSERT INTO penduduk VALUES("2040","664","3208171107990001","AGI SAPUTRA","KUNINGAN","1999 -11-07","","1","11","1","1","","3","1","4","1","KOSID","UNING","1","");
INSERT INTO penduduk VALUES("2041","664","3208176205060001","MELI ANGGRAENI","KUNINGAN","2006 -22-05","","2","11","1","1","","0","1","4","1","KOSID","UNING","1","");
INSERT INTO penduduk VALUES("2042","664","3208170111110004","LATIP NUR ARIFIN","KUNINGAN","2011 -01-11","","1","11","1","1","","1","1","4","1","KOSID","UNING","1","");
INSERT INTO penduduk VALUES("2043","665","3208170107430225","HAMIDIN","KUNINGAN","1943 -01-07","","1","11","1","2","","3","9","1","1","ABDUL","ROSITA","1","");
INSERT INTO penduduk VALUES("2044","665","3208174107480221","NASMI","KUNINGAN","1948 -01-07","","2","11","1","2","","3","2","3","1","SAWAL","ILAH","1","");
INSERT INTO penduduk VALUES("2045","665","3208174301740005","NUNUNG NURHAYANI","KUNINGAN","1974 -03-01","","2","11","1","3","","3","2","4","1","HAMIDIN","NASMI","1","");
INSERT INTO penduduk VALUES("2046","665","3208176906990002","INDRIYANI","KUNINGAN","1999 -29-06","","2","11","1","1","","0","3","6","1","SUKENDAR","NUNUNG NURHAYANI","1","");
INSERT INTO penduduk VALUES("2047","665","3208170202930004","DEDEN ANDRIANTO","KUNINGAN","1993 -02-02","","1","11","1","1","","3","1","6","1","SUKENDAR","NUNUNG NURHAYANI","1","");
INSERT INTO penduduk VALUES("2048","666","3208170411320003","SUNINTA","KUNINGAN","1932 -04-11","","1","11","1","2","","0","9","1","1","SANTAWI","ASRAH","1","");
INSERT INTO penduduk VALUES("2049","666","3208174107420245","YATMI","KUNINGAN","1942 -01-07","","2","11","1","2","","0","2","3","1","SAMIAN","RUSMI","1","");
INSERT INTO penduduk VALUES("2050","666","3208176109750001","JUNIRAH","KUNINGAN","1975 -21-09","","2","11","1","2","","3","2","4","1","SUNINTA","YATMI","1","");
INSERT INTO penduduk VALUES("2051","666","3208171205720006","MARYONO","KUNINGAN","1963 -02-06","","1","11","1","2","","3","84","5","1","-","-","1","");
INSERT INTO penduduk VALUES("2052","667","3208171107610003","DIDI PERMANA","KUNINGAN","1961 -11-07","","1","11","1","2","","3","88","1","1","SANTOMI","WARSITI","1","");
INSERT INTO penduduk VALUES("2053","667","3208175005700005","RUMINAH","KUNINGAN","1970 -10-05","","2","11","1","2","","3","2","3","1","SUPARMAN","ASKINAH","1","");
INSERT INTO penduduk VALUES("2054","667","3208174506840012","KENI SETIAWATI","KUNINGAN","1984 -05-06","","2","11","1","1","","3","88","4","1","DIDI PERMANA","RUMINAH","1","");
INSERT INTO penduduk VALUES("2055","667","3208170108940009","AGUS IRAWAN","KUNINGAN","1994 -01-08","","1","11","1","1","","4","1","4","1","DIDI PERMANA","RUMINAH","1","");
INSERT INTO penduduk VALUES("2056","667","3208170603910014","SURYANA","KUNINGAN","1991 -06-03","","1","11","1","1","","4","1","4","1","DIDI PERMANA","RUMINAH","1","");
INSERT INTO penduduk VALUES("2057","668","3208170407350001","SUKANDI","KUNINGAN","1935 -04-07","","1","11","1","2","","3","9","1","1","ATMADINATA","TASIH","1","");
INSERT INTO penduduk VALUES("2058","669","3208170506530003","MAMUN MAHPUDIN","KUNINGAN","1953 -05-06","","1","11","1","2","","5","5","1","1","HATOMI","TARYI","1","");
INSERT INTO penduduk VALUES("2059","669","3208175611590003","SANIRAH","KUNINGAN","1959 -16-11","","2","11","1","2","","3","88","3","1","TARMAN","SANEM","1","");
INSERT INTO penduduk VALUES("2060","669","3208170912000005","ASEP RAMDANI","KUNINGAN","2000 -09-12","","1","11","1","1","","0","3","4","1","MAMUN MAHPUDIN","SANIRAH","1","");
INSERT INTO penduduk VALUES("2061","670","3208170107300159","WIHANI","KUNINGAN","1930 -01-07","","1","11","1","2","","3","9","1","1","SURA ANAB","MISREM","1","");
INSERT INTO penduduk VALUES("2062","670","3208174107380241","NEMOH","KUNINGAN","1935 -12-06","","2","11","1","2","","3","2","3","1","ARNAWI","ARNASAH","1","");
INSERT INTO penduduk VALUES("2063","671","3208171510470001","SUTISMAN","KUNINGAN","1947 -15-10","","1","11","1","2","","3","9","1","1","WIRA ENONG","RUSITA","1","");
INSERT INTO penduduk VALUES("2064","672","3208171010680002","NANANG","KUNINGAN","1968 -10-10","","1","11","1","2","","3","19","1","1","TARMIDI","NAWI","1","");
INSERT INTO penduduk VALUES("2065","672","3208175807760004","SAINI","KUNINGAN","1976 -18-07","","2","11","1","2","","3","2","3","1","SAHRUDIN","TIAH","1","");
INSERT INTO penduduk VALUES("2066","672","3208176308070002","RISTIN NURHIDAYAH","KUNINGAN","2007 -23-08","","2","11","1","1","","1","1","4","1","NANANG","SAINI","1","");
INSERT INTO penduduk VALUES("2067","672","3208170509970004","EKI NUGRAHA","KUNINGAN","1997 -05-09","","1","11","1","1","","4","15","4","1","NANANG","SAINI","1","");
INSERT INTO penduduk VALUES("2068","673","3208172011360001","WINARYO","KUNINGAN","1936 -20-11","","1","11","1","2","","0","9","1","1","ARWA","AYI","1","");
INSERT INTO penduduk VALUES("2069","673","3208174201420001","DARSIH","KUNINGAN","1942 -02-01","","2","11","1","2","","3","2","3","1","SUHAWI","RUMIAH","1","");
INSERT INTO penduduk VALUES("2070","673","3208175807670002","NARNI","KUNINGAN","1967 -18-07","","2","11","1","3","","3","8","4","1","WINARYO","DARSIH","1","");
INSERT INTO penduduk VALUES("2071","674","3208171110610001","ALI TEA","KUNINGAN","1961 -11-10","","1","11","1","2","","3","84","1","1","KANDA","KALSIUM","1","");
INSERT INTO penduduk VALUES("2072","674","3208174504710003","ASIH","KUNINGAN","1971 -05-04","","2","11","1","2","","3","2","3","1","SUNANDI","DARSIH","1","");
INSERT INTO penduduk VALUES("2073","674","3208174401100001","NABILA NUR CAHYANI","KUNINGAN","2010 -04-01","","2","11","1","1","","1","1","4","1","ALI TEA","ASIH","1","");
INSERT INTO penduduk VALUES("2074","674","3208171908020001","ALDI KURNIAWAN","KUNINGAN","2002 -19-08","","1","11","1","1","","0","3","4","1","ALI TEA","ASIH","1","");
INSERT INTO penduduk VALUES("2075","674","3208170512950007","RIZKI NUR ALI","KUNINGAN","1995 -05-12","","1","11","1","1","","3","3","4","1","ALI TEA","ASIH","1","");
INSERT INTO penduduk VALUES("2076","675","3208174909890001","ENI ROHYANI","KUNINGAN","1989 -19-09","","2","11","1","2","","4","2","1","1","KOSID","UNING","1","");
INSERT INTO penduduk VALUES("2077","676","3208174504920005","SUMIATI","CIAMIS","1992 -05-04","","2","11","1","2","","4","2","1","1","SULAEMAN","SUTIMAH","1","");
INSERT INTO penduduk VALUES("2078","676","3208171507120001","MUHAMAD RANDY","KUNINGAN","2012 -15-07","","1","11","1","1","","1","1","4","1","SUPANDI","SUMIATI","1","");
INSERT INTO penduduk VALUES("2079","677","3208171007840003","ARMAN MAULANA","KUNINGAN","1984 -10-07","","1","11","1","2","","3","8","1","1","SUKARJO","NASIAH","1","");
INSERT INTO penduduk VALUES("2080","677","3208175701860001","INDRI SUPRIYATIN","CIREBON","1986 -17-01","","2","11","1","2","","4","2","3","1","KAMLI","SUNARIAH","1","");
INSERT INTO penduduk VALUES("2081","678","3208174107490175","NENGSIH","KUNINGAN","1949 -01-07","","2","11","1","1","","3","88","1","1","TDK ADA DATA","TDK ADA DATA","1","");
INSERT INTO penduduk VALUES("2082","679","3208170608700006","SUPRIYATNA","KUNINGAN","1970 -06-08","","1","11","1","2","","3","88","1","1","RUHENDI","ONIH","1","");
INSERT INTO penduduk VALUES("2083","679","3208174510830002","NURLINA","KUNINGAN","1983 -05-10","","2","11","1","2","","3","2","3","1","ILON","NARSAH","1","");
INSERT INTO penduduk VALUES("2084","679","3208176101060003","VERA PEBRIANI","KUNINGAN","2006 -21-01","","2","11","1","1","","0","3","4","1","SUPRIYATNA","NURLINA","1","");
INSERT INTO penduduk VALUES("2085","679","3208172801120004","ADIT","KUNINGAN","2012 -28-01","","1","11","1","1","","1","1","4","1","SUPRIYATNA","NURLINA","1","");
INSERT INTO penduduk VALUES("2086","679","3208174806460001","ONIH","KUNINGAN","1946 -08-06","","2","11","1","2","","3","2","0","1","WIRA DINATA DARHAM","SUWI","1","");
INSERT INTO penduduk VALUES("2087","679","3208170107400175","RUHENDI","KUNINGAN","1940 -01-07","","1","11","1","2","","0","9","0","1","ATNA","ARNI","1","");
INSERT INTO penduduk VALUES("2088","680","3208170704730002","SURLAN","KUNINGAN","1973 -07-04","","1","11","1","2","","3","20","1","1","WIHANI","KEMOH","1","");
INSERT INTO penduduk VALUES("2089","680","3208174803860001","SUMIATI","KUNINGAN","1986 -08-03","","2","11","1","2","","3","2","3","1","SUDARYA","ARNISAH","1","");
INSERT INTO penduduk VALUES("2090","680","3208175108120004","TESA ROHMAH","KUNINGAN","2012 -11-08","","2","11","1","1","","1","1","4","1","SURLAN","SUMIATI","1","");
INSERT INTO penduduk VALUES("2091","680","3208172707040002","SUPRIYADI","KUNINGAN","2004 -27-07","","1","11","1","1","","0","3","4","1","SURLAN","SUMIATI","1","");
INSERT INTO penduduk VALUES("2092","681","3208170808800005","TONO","KUNINGAN","1980 -08-08","","1","11","1","2","","3","9","1","1","SURYADI","IJAH","1","");
INSERT INTO penduduk VALUES("2093","681","3208174911850007","ETI","KUNINGAN","1985 -09-11","","2","11","1","2","","3","2","3","1","SUNANTA","SARNAH","1","");
INSERT INTO penduduk VALUES("2094","681","3208175211100002","SELA APRIYANI","KUNINGAN","2010 -12-11","","2","11","1","1","","1","1","4","1","TONO","ETI","1","");
INSERT INTO penduduk VALUES("2095","681","3208175411050003","SELVI RAHMAWATI","KUNINGAN","2005 -14-11","","2","11","1","1","","1","1","4","1","TONO","ETI","1","");
INSERT INTO penduduk VALUES("2096","682","3204122803720006","SAHLAN SAIDIN","KUNINGAN","1972 -28-03","","1","11","1","2","","3","15","1","1","SARBINI","MARNI","1","");
INSERT INTO penduduk VALUES("2097","682","3204125112750013","RUNINGSIH","KUNINGAN","1975 -11-12","","2","11","1","2","","3","2","3","1","UNADI","ANIAH","1","");
INSERT INTO penduduk VALUES("2098","682","3204125609130001","NIA ANJANI","BANDUNG","2013 -16-09","","2","11","1","1","","1","1","4","1","SAHLAN SAIDIN","RUNINGSIH","1","");
INSERT INTO penduduk VALUES("2099","682","3204122110980010","IRPAN MAOLANA","KUNINGAN","1998 -21-10","","1","11","1","1","","4","3","4","1","SAHLAN SAIDIN","RUNINGSIH","1","");
INSERT INTO penduduk VALUES("2100","683","3208174107420246","SANIAH","KUNINGAN","1942 -01-07","","2","11","1","4","","0","2","9","1","MIRTAM","NESWI","1","");
INSERT INTO penduduk VALUES("2101","684","3208171907700005","YUDI","KUNINGAN","1970 -19-07","","1","11","1","2","","3","20","1","1","SOHARI","SAPTI","1","");
INSERT INTO penduduk VALUES("2102","684","3208175504720006","SATINAH","KUNINGAN","1972 -15-04","","2","11","1","2","","3","2","3","1","TIRJO","UNILAH","1","");
INSERT INTO penduduk VALUES("2103","684","3208171901980003","ALFIANA","KUNINGAN","1998 -19-01","","1","11","1","1","","4","1","4","1","YUDI","SATINAH","1","");
INSERT INTO penduduk VALUES("2104","684","3208172907110001","JAENAL RAHMAT","KUNINGAN","2011 -29-07","","1","11","1","1","","1","1","4","1","YUDI","SATINAH","1","");
INSERT INTO penduduk VALUES("2105","685","3208170806510001","SUNARJO","KUNINGAN","1951 -08-06","","1","11","1","2","","3","9","1","1","PADMA","SARNIAH","1","");
INSERT INTO penduduk VALUES("2106","685","3208174403550002","IROH","KUNINGAN","1955 -04-03","","2","11","1","2","","3","2","3","1","SUNINTA","YATNI","1","");
INSERT INTO penduduk VALUES("2107","686","3208174607530006","RUSMINI","KUNINGAN","1953 -06-07","","2","11","1","4","","3","9","1","1","KANTA","NANI","1","");
INSERT INTO penduduk VALUES("2108","687","3208172006580010","KATMA","KUNINGAN","1958 -20-06","","1","11","1","2","","3","9","1","1","MIHARTA","EJOH","1","");
INSERT INTO penduduk VALUES("2109","687","3208175110650006","USITI","KUNINGAN","1965 -11-10","","2","11","1","2","","3","2","3","1","SUKIRYA","SUTIRAH","1","");
INSERT INTO penduduk VALUES("2110","688","3208171110720001","EKOM","KUNINGAN","1972 -11-10","","1","11","1","2","","3","20","1","1","SUHYADI","UMI","1","");
INSERT INTO penduduk VALUES("2111","688","3208176602780001","ALIMAH","KUNINGAN","1978 -26-02","","2","11","1","2","","3","2","3","1","MARGA","ONOH","1","");
INSERT INTO penduduk VALUES("2112","688","3208171602060002","RADI KENCANA","KUNINGAN","2006 -16-02","","1","11","1","1","","1","1","4","1","EKOM","ALIMAH","1","");
INSERT INTO penduduk VALUES("2113","688","3208174808990004","SINTIA","KUNINGAN","1999 -08-08","","2","11","1","1","","0","1","4","1","EKOM","ALIMAH","1","");
INSERT INTO penduduk VALUES("2114","689","3208170403600002","SUHANA","KUNINGAN","1960 -04-03","","1","11","1","2","","3","9","1","1","JAHIMI","ENOH","1","");
INSERT INTO penduduk VALUES("2115","689","3208174105670003","ROHATI","KUNINGAN","1967 -01-05","","2","11","1","2","","3","2","3","1","SUKAKJO","TINI","1","");
INSERT INTO penduduk VALUES("2116","689","3208172109960001","DEDE RUSMANA","KUNINGAN","1996 -21-09","","1","11","1","1","","3","15","4","1","SUHANA","ROHATI","1","");
INSERT INTO penduduk VALUES("2117","690","3208170808590002","MISKAT","KUNINGAN","1959 -08-08","","1","11","1","2","","3","9","1","1","APANDI","INOH","1","");
INSERT INTO penduduk VALUES("2118","690","3208175010590002","WASTI","KUNINGAN","1959 -10-10","","2","11","1","2","","3","2","3","1","DAHOMI","CIBUK","1","");
INSERT INTO penduduk VALUES("2119","690","3208171604920002","WAWAN RUSMAWAN","KUNINGAN","1992 -16-04","","1","11","1","1","","4","3","4","1","MISKAT","WASTI","1","");
INSERT INTO penduduk VALUES("2120","690","3208174703430003","INOH","KUNINGAN","1943 -07-03","","2","11","1","2","","3","2","0","1","PADMA","SARNIAH","1","");
INSERT INTO penduduk VALUES("2121","691","3208170810320001","DURAHMAN","KUNINGAN","1932 -08-10","","1","11","1","2","","3","9","1","1","MARJU","RAS","1","");
INSERT INTO penduduk VALUES("2122","691","3208175512570003","SUNINGSIH","KUNINGAN","1957 -15-12","","2","11","1","2","","3","2","3","1","SANHARI","UMTI","1","");
INSERT INTO penduduk VALUES("2123","692","3208170306500002","MAKRUM","KUNINGAN","1950 -03-06","","1","11","1","4","","3","20","1","1","SUWINTA","SURMI","1","");
INSERT INTO penduduk VALUES("2124","692","3208171602850006","SANAP","KUNINGAN","1985 -16-02","","1","11","1","2","","3","19","4","1","MAKRUM","RUNIAH","1","");
INSERT INTO penduduk VALUES("2125","693","3208171504480005","SAMADI","KUNINGAN","1948 -15-04","","1","11","1","2","","3","9","1","1","USMAN","SAMI","1","");
INSERT INTO penduduk VALUES("2126","693","3208175107530002","SAPNAH","KUNINGAN","1953 -11-07","","2","11","1","2","","3","2","3","1","WIRA DARHAM","SUWI","1","");
INSERT INTO penduduk VALUES("2127","693","3208171010730002","MARHUNO","KUNINGAN","1975 -10-10","","1","11","1","1","","3","9","4","1","SAMADI","SAPNAH","1","");
INSERT INTO penduduk VALUES("2128","694","3208170801600003","USMAN","KUNINGAN","1960 -08-01","","1","11","1","2","","3","20","1","1","-","-","1","");
INSERT INTO penduduk VALUES("2129","694","3208174302650003","IJAH","KUNINGAN","1965 -03-02","","2","11","1","2","","3","2","3","1","-","-","1","");
INSERT INTO penduduk VALUES("2130","694","3208172612040001","MUPIT KOSWARA","KUNINGAN","2004 -26-12","","1","11","1","1","","0","3","4","1","","IJAH","1","");
INSERT INTO penduduk VALUES("2131","694","3208171703940006","SAN BUDIMAN","KUNINGAN","1994 -17-04","","1","11","1","1","","3","15","4","1","USMAN","IJAH","1","");
INSERT INTO penduduk VALUES("2132","695","3208171005450005","SARBINI","KUNINGAN","1945 -10-05","","1","11","1","2","","3","9","1","1","MARJU","RAS","1","");
INSERT INTO penduduk VALUES("2133","695","3208174103500004","NARMI","KUNINGAN","1950 -01-03","","2","11","1","2","","3","2","3","1","SUKIRYA","SUTIRAH","1","");
INSERT INTO penduduk VALUES("2134","695","3208171407040003","ARIO IRAWAN","KUNINGAN","2004 -14-07","","1","11","1","1","","1","1","6","1","KOSIM","ASTUTI","1","");
INSERT INTO penduduk VALUES("2135","696","3208170110400003","ASROMI","KUNINGAN","1940 -01-10","","1","11","1","4","","3","20","1","1","BOJA","ASRAH","1","");
INSERT INTO penduduk VALUES("2136","697","3208172107880004","RUSMEDI","KUNINGAN","1988 -21-07","","1","11","1","2","","4","88","4","1","SUTANA","TATI","1","");
INSERT INTO penduduk VALUES("2137","698","3208170806730004","SULTAN","KUNINGAN","1973 -08-06","","1","11","1","2","","3","88","1","1","SUNARJO","IROH","1","");
INSERT INTO penduduk VALUES("2138","698","3208174606760005","SUMINAH","CILACAP","1976 -06-06","","2","11","1","2","","3","2","3","1","SOHID","SURIPAH","1","");
INSERT INTO penduduk VALUES("2139","698","3208171310110001","ZILHAM MAULANA","KUNINGAN","2011 -13-10","","1","11","1","1","","1","1","4","1","SULTAN","SUMINAH","1","");
INSERT INTO penduduk VALUES("2140","699","3208176608740002","ENTIN KARTINI","KUNINGAN","1974 -26-08","","2","11","1","2","","4","2","1","1","ARIMI","RINTI","1","");
INSERT INTO penduduk VALUES("2141","699","3208172505940003","YAHYA RIYAN","KUNINGAN","1994 -25-05","","1","11","1","1","","4","1","4","1","JUMHANI","IKA KARTINI","1","");
INSERT INTO penduduk VALUES("2142","699","3208172303100001","BANDA MUSTIKA NURDYANSAH","KUNINGAN","2010 -23-03","","1","11","1","1","","1","1","4","1","ADAR","ENTIN KARTINI","1","");
INSERT INTO penduduk VALUES("2143","699","3208177103010002","MENA HANIKA","KUNINGAN","2001 -31-03","","2","11","1","1","","3","3","4","1","JUMHANI","ENTIN KARTINI","1","");
INSERT INTO penduduk VALUES("2144","699","3208172905960004","NENDA ISKANDAR","KUNINGAN","1996 -29-05","","1","11","1","1","","4","88","4","1","JUMHANI","ENTIN KARTINI","1","");
INSERT INTO penduduk VALUES("2145","699","3208174804050001","PRILDA JIHANIKA","KUNINGAN","2005 -08-04","","2","11","1","1","","0","3","4","1","JUMHANI","ENTIN KARTINI","1","");
INSERT INTO penduduk VALUES("2146","700","3208170107790403","KOSIM NURSEHA","KUNINGAN","1979 -01-07","","1","11","1","2","","3","88","1","1","SARBINI","NARMI","1","");
INSERT INTO penduduk VALUES("2147","700","3208175108850007","ASTUTI","KUNINGAN","1985 -11-08","","2","11","1","2","","3","2","3","1","YAYAT","RASDAH","1","");
INSERT INTO penduduk VALUES("2148","700","3208171407040004","ARYO IRAWAN","KUNINGAN","2004 -14-07","","1","11","1","1","","1","1","4","1","KOSIM NURSEHA","ASTUTI","1","");
INSERT INTO penduduk VALUES("2149","700","3208171602130001","ANAN NUR HISAM","KUNINGAN","2013 -16-02","","1","11","1","1","","1","1","4","1","KOSIM NURSEHA","ASTUTI","1","");
INSERT INTO penduduk VALUES("2150","701","3208172006680005","SUTANA","KUNINGAN","1968 -20-06","","1","11","1","2","","3","88","1","1","TIRYA","ARYI","1","");
INSERT INTO penduduk VALUES("2151","701","3208176105720001","TATI","KUNINGAN","1972 -21-05","","2","11","1","2","","3","2","3","1","TARMAN","SANEM","1","");
INSERT INTO penduduk VALUES("2152","701","3208172007000003","RIKI","KUNINGAN","2000 -20-07","","1","11","1","1","","3","3","4","1","SUTANA","TATI","1","");
INSERT INTO penduduk VALUES("2153","701","3208175407480001","ARYI","KUNINGAN","1948 -14-07","","2","11","1","4","","3","8","0","1","WIKARTA","NANTI","1","");
INSERT INTO penduduk VALUES("2154","702","3208171212780006","WAWAN","KUNINGAN","1978 -12-12","","1","11","1","2","","4","88","1","1","SARIPUDIN","LINAH","1","");
INSERT INTO penduduk VALUES("2155","702","3208175809830001","ATIN","KUNINGAN","1983 -18-09","","2","11","1","2","","4","2","3","1","SUJANA","JUNAH","1","");
INSERT INTO penduduk VALUES("2156","702","3208176512100002","SUSILAWATI","KUNINGAN","2010 -25-12","","2","11","1","1","","1","1","4","1","WAWAN","ATIN","1","");
INSERT INTO penduduk VALUES("2157","702","3208175209040003","ITA VILIA","KUNINGAN","2004 -12-09","","2","11","1","1","","0","3","4","1","WAWAN","ATIN","1","");
INSERT INTO penduduk VALUES("2158","703","3208172107890001","RUSMEDI","KUNINGAN","1989 -21-07","","1","11","1","2","","4","88","1","1","SUTANA","TATI","1","");
INSERT INTO penduduk VALUES("2159","703","3208176310900001","SRI WANDINAH","KUNINGAN","1990 -23-10","","2","11","1","2","","4","2","3","1","AHMADI","RUSTINAH","1","");
INSERT INTO penduduk VALUES("2160","703","3208177006130002","KEYLA AURELIA","KUNINGAN","2013 -30-06","","2","11","1","1","","1","1","4","1","RUSMEDI","SRI WANDINAH","1","");
INSERT INTO penduduk VALUES("2161","704","3208171203480005","RUSPENDI","KUNINGAN","1948 -12-03","","1","11","1","2","","3","9","1","1","SURA NEYAN","KAWIT","1","");
INSERT INTO penduduk VALUES("2162","704","3208174504530002","RUNTI","KUNINGAN","1953 -05-04","","2","11","1","2","","3","2","3","1","WIKARTA","NANTI","1","");
INSERT INTO penduduk VALUES("2163","705","3208170206380001","SOHARI","KUNINGAN","1938 -02-06","","1","11","1","2","","3","9","1","1","MAHWI","RUSINAH","1","");
INSERT INTO penduduk VALUES("2164","705","3208176511460001","SAPTI","KUNINGAN","1946 -25-11","","2","11","1","2","","3","2","3","1","WIHARTA","RANI","1","");
INSERT INTO penduduk VALUES("2165","705","3208170809860002","SUHEMI","KUNINGAN","1986 -08-09","","1","11","1","1","","3","88","9","1","SURDI","SARNAH","1","");
INSERT INTO penduduk VALUES("2166","705","3208175007550003","MISNAH","KUNINGAN","1955 -10-07","","2","11","1","1","","3","9","9","1","ASKARI","ATMIRAH","1","");
INSERT INTO penduduk VALUES("2167","706","3208172106820002","KOMAR","KUNINGAN","1982 -21-06","","1","11","1","2","","4","88","1","1","MAHPUDIN","SUNIRAH","1","");
INSERT INTO penduduk VALUES("2168","706","3208175308840003","SAINI","KUNINGAN","1984 -13-08","","2","11","1","2","","3","2","3","1","PARMAN","RUNTI","1","");
INSERT INTO penduduk VALUES("2169","707","3208171010730004","SULARTO","WONOGIRI","1973 -10-10","","1","11","1","2","","4","15","1","1","MARTO SUWITO","SAKIYEM","1","");
INSERT INTO penduduk VALUES("2170","707","3208175609810004","YAYAH","KUNINGAN","1981 -16-09","","2","11","1","2","","3","15","3","1","MISKAT","WASTI","1","");
INSERT INTO penduduk VALUES("2171","707","3208170708070002","AHMAD ZIDAN HIDAYATTULLAH","KUNINGAN","2007 -07-08","","1","11","1","1","","1","1","4","1","SULARTO","YAYAH","1","");
INSERT INTO penduduk VALUES("2172","707","3208170809000001","ALDI SEPTIAN","KUNINGAN","2000 -08-09","","1","11","1","1","","0","1","4","1","SULARTO","YAYAH","1","");
INSERT INTO penduduk VALUES("2173","708","3208170710810004","SUTISNA JAYA SUKMANA","CIAMIS","1981 -07-10","","1","11","1","2","","3","88","1","1","EDI EPENDI","TITIN SUPRIATIN","1","");
INSERT INTO penduduk VALUES("2174","708","3208175808890002","IMAS MAELANI","KUNINGAN","1989 -18-08","","2","11","1","2","","3","2","3","1","NASTA WIRYA","SANOH","1","");
INSERT INTO penduduk VALUES("2175","708","3208172004110001","VIKAR ALFARIZI","KUNINGAN","2011 -20-04","","1","11","1","1","","1","1","4","1","SUTISNA JAYA SUKMANA","IMAS MAELANI","1","");
INSERT INTO penduduk VALUES("2176","709","3208151205590004","HERYADI","KUNINGAN","1959 -12-05","","1","11","1","2","","3","9","1","1","JUANTA","TARWI","1","");
INSERT INTO penduduk VALUES("2177","709","3208155003730001","OMNAH","KUNINGAN","1973 -10-03","","2","11","1","2","","3","2","3","1","SAJIR","KARNI","1","");
INSERT INTO penduduk VALUES("2178","709","3208154608980003","SITI AMINAH","KUNINGAN","1998 -06-08","","2","11","1","1","","3","19","4","1","HERYADI","OMNAH","1","");
INSERT INTO penduduk VALUES("2179","709","3208150204040001","SARIPIN","KUNINGAN","2004 -02-04","","1","11","1","1","","0","3","4","1","HERYADI","OMNAH","1","");
INSERT INTO penduduk VALUES("2180","709","3208153107070001","DANANG","KUNINGAN","2007 -31-07","","1","11","1","1","","1","1","4","1","HERYADI","OMNAH","1","");
INSERT INTO penduduk VALUES("2181","710","3208171812850001","NUR HIDAYAT","KUNINGAN","1985 -18-12","","1","11","1","2","","3","9","1","1","KATMA","USITI","1","");
INSERT INTO penduduk VALUES("2182","710","3208174704870003","IIN SUHARTINI","KUNINGAN","1987 -07-04","","2","11","1","2","","3","2","3","1","HERMAN","YANIH","1","");
INSERT INTO penduduk VALUES("2183","711","3208177007930001","EROS ROSANAH","KUNINGAN","1993 -30-07","","2","11","1","2","","4","2","1","1","SUHRI","MISNATI","1","");
INSERT INTO penduduk VALUES("2184","711","3208174801150001","NAJWA MAULINA PUTRI","KUNINGAN","2015 12:12:00-08-01","","2","11","1","1","","1","1","4","1","ADE DARISMAN","EROS ROSANAH","1","");
INSERT INTO penduduk VALUES("2185","712","3208170107840286","BASWAN","KUNINGAN","1984 -01-07","","1","11","1","2","","3","9","1","1","MULYADI","ASWIRAH","1","");
INSERT INTO penduduk VALUES("2186","712","3208176404890001","SRI ASIH","KUNINGAN","1989 -24-04","","2","11","1","2","","3","2","3","1","JUMANTO","WACI","1","");
INSERT INTO penduduk VALUES("2187","712","3208176308080001","AGUSTIN","KUNINGAN","2008 -23-08","","2","11","1","1","","1","1","4","1","BASWAN","SRI ASIH","1","");
INSERT INTO penduduk VALUES("2188","713","3208261106770004","HENDRAJAYA","KUNINGAN","1977 -11-06","","1","11","1","2","","3","9","1","1","SUMARYA","SUHINAH","1","");
INSERT INTO penduduk VALUES("2189","713","3208174507830011","ROHETIN","KUNINGAN","1983 -05-07","","2","11","1","2","","3","2","3","1","TARMAN","SANEM","1","");
INSERT INTO penduduk VALUES("2190","713","3208265903030003","RITA SARI","KUNINGAN","2003 -19-03","","2","11","1","1","","0","3","4","1","HENDRAJAYA","ROHETIN","1","");
INSERT INTO penduduk VALUES("2191","713","3208260104100001","HERNANSAH","KUNINGAN","2010 -01-04","","1","11","1","1","","1","1","4","1","HENDRAJAYA","ROHETIN","1","");
INSERT INTO penduduk VALUES("2192","714","3208174208820006","HARTATI","KUNINGAN","1982 -02-08","","2","11","1","2","","3","2","1","1","ARHUDI","SUTINAH","1","");
INSERT INTO penduduk VALUES("2193","714","3208171207020001","HERDIANTO","KUNINGAN","2002 -12-07","","1","11","1","1","","0","3","4","1","WIRNO","HARTATI","1","");
INSERT INTO penduduk VALUES("2194","714","3208170107470198","WIRNO","KUNINGAN","1974 -27-03","","1","11","1","2","","3","20","9","1","WINARDI","WARTI","1","");
INSERT INTO penduduk VALUES("2195","715","3208174107330179","YONAH","KUNINGAN","1933 -01-07","","2","11","1","4","","3","20","1","1","JUANTA","TARWI .","1","");
INSERT INTO penduduk VALUES("2196","716","3208171608540001","BODI","KUNINGAN","1954 -16-08","","1","11","1","2","","3","9","1","1","SUTARMA","INOH","1","");
INSERT INTO penduduk VALUES("2197","716","3208175011590001","NARSIAH","KUNINGAN","1959 -10-11","","2","11","1","2","","3","2","3","1","MISNADI","MISNAH","1","");
INSERT INTO penduduk VALUES("2198","717","3208171406530001","SUKARMAN","KUNINGAN","1953 -14-06","","1","11","1","2","","3","20","1","1","SATU","MANENG","1","");
INSERT INTO penduduk VALUES("2199","717","3208176607590001","SUWIRAH","KUNINGAN","1959 -26-07","","2","11","1","2","","3","2","3","1","SUNARDI","MIAH","1","");
INSERT INTO penduduk VALUES("2200","718","3208170107480209","SURYADI","KUNINGAN","1948 -01-07","","1","11","1","2","","3","9","1","1","WIHAMJA","IJOH","1","");
INSERT INTO penduduk VALUES("2201","718","3208174107600310","IJAH","KUNINGAN","1960 -01-07","","2","11","1","2","","3","2","3","1","NATAMAJA","USARI","1","");
INSERT INTO penduduk VALUES("2202","719","3208170107650154","SUHRI","KUNINGAN","1965 -01-07","","1","11","1","2","","3","20","1","1","TIRJO","UNILAH","1","");
INSERT INTO penduduk VALUES("2203","719","3208174607700005","MISNATI","KUNINGAN","1970 -06-07","","2","11","1","2","","3","2","3","1","MULYADI","ASWIRAH","1","");
INSERT INTO penduduk VALUES("2204","720","3208170108450002","SUKIMAN","KUNINGAN","1945 -01-08","","1","11","1","2","","3","20","1","1","WANGSA","SASWI","1","");
INSERT INTO penduduk VALUES("2205","720","3208175610510002","ARSITA","KUNINGAN","1951 -16-10","","2","11","1","2","","3","2","3","1","SANHUDI","SATI","1","");
INSERT INTO penduduk VALUES("2206","720","3208171512820001","SAUD","KUNINGAN","1982 -15-12","","1","11","1","1","","3","20","4","1","SUKIMAN","ARSITA","1","");
INSERT INTO penduduk VALUES("2207","721","3208171607520001","SUDARNO","KUNINGAN","1952 -16-07","","1","11","1","2","","3","9","1","1","MIHARJA","KINAH","1","");
INSERT INTO penduduk VALUES("2208","721","3208175410550001","ODAH","KUNINGAN","1955 -14-10","","2","11","1","2","","3","2","3","1","WIHATMA","TAWAT","1","");
INSERT INTO penduduk VALUES("2209","722","3208170107320096","WINARDI","KUNINGAN","1932 -01-07","","1","11","1","2","","3","9","1","1","ASMA.D","ENTI .","1","");
INSERT INTO penduduk VALUES("2210","722","3208174107420192","MARNI","KUNINGAN","1942 -01-07","","2","11","1","2","","3","9","3","1","-","SGTI .","1","");
INSERT INTO penduduk VALUES("2211","723","3208170107520201","MULYADI","KUNINGAN","1945 -08-10","","1","11","1","2","","3","9","1","1","RAKSA NAIM","EBOD","1","");
INSERT INTO penduduk VALUES("2212","723","3208174107620269","ASWIRAH","KUNINGAN","1954 -15-06","","2","11","1","2","","3","2","3","1","ARIMI","NESAH","1","");
INSERT INTO penduduk VALUES("2213","724","3208170107690147","SATIM","KUNINGAN","1969 -01-07","","1","11","1","2","","3","9","1","1","NAKMHWI","JAJMI","1","");
INSERT INTO penduduk VALUES("2214","724","3208174107700232","EDAH","KUNINGAN","1970 -01-07","","2","11","1","2","","3","9","3","1","SUNHRYA","DNIH","1","");
INSERT INTO penduduk VALUES("2215","724","3208170801910004","SUTANDI","KUNINGAN","1991 -08-01","","1","11","1","1","","0","3","4","1","SATIM","EDAH","1","");
INSERT INTO penduduk VALUES("2216","725","3208170406620003","SURNA","KUNINGAN","1962 -04-06","","1","11","1","2","","3","20","1","1","SUDINTA","NETRA","1","");
INSERT INTO penduduk VALUES("2217","725","3208175304740002","MUSNATI","KUNINGAN","1974 -13-04","","2","11","1","2","","3","2","3","1","SUKIRJA","SUTINAH","1","");
INSERT INTO penduduk VALUES("2218","725","3208171602100001","YUDI NUGRAHA","KUNINGAN","2010 -16-02","","1","11","1","1","","1","1","4","1","SURNA","MUSNATI","1","");
INSERT INTO penduduk VALUES("2219","725","3208176301030004","ULPA NURPAUJIAH","KUNINGAN","2003 -23-01","","2","11","1","1","","0","3","4","1","SURNA","MUSNATI","1","");
INSERT INTO penduduk VALUES("2220","726","3208171407550003","SARYONO","KUNINGAN","1955 -14-07","","1","11","1","2","","3","20","1","1","SAKRIM","CIOH","1","");
INSERT INTO penduduk VALUES("2221","726","3208176306620002","RUMTI","KUNINGAN","1962 -23-06","","2","11","1","2","","3","2","3","1","SANAHDI","IBOH","1","");
INSERT INTO penduduk VALUES("2222","726","3208177012010005","RISMAWATI","KUNINGAN","2001 -30-12","","2","11","1","1","","1","1","4","1","SARYONO","N. RUMTI","1","");
INSERT INTO penduduk VALUES("2223","726","3208170604810007","SUHIDI","KUNINGAN","1981 -06-04","","1","11","1","1","","3","20","4","1","SARYONO","N. RUMTI","1","");
INSERT INTO penduduk VALUES("2224","726","3208170107860345","AMIN","KUNINGAN","1986 -01-07","","1","11","1","1","","3","88","4","1","SARYONO","RUMSINAH","1","");
INSERT INTO penduduk VALUES("2225","727","3208170601570002","SUHIDIN","KUNINGAN","1957 -06-01","","1","11","1","2","","3","9","1","1","MUNAIM","KEMOH","1","");
INSERT INTO penduduk VALUES("2226","727","3208174811680002","ONEH","KUNINGAN","1968 -08-11","","2","11","1","2","","3","9","3","1","ERLOM","MALTI","1","");
INSERT INTO penduduk VALUES("2227","727","3208170107060005","ANJAS","KUNINGAN","2006 -01-07","","1","11","1","1","","1","1","6","1","AHMAN","AISAH","1","");
INSERT INTO penduduk VALUES("2228","728","3208171105800003","IPANG","KUNINGAN","1980 -11-05","","1","11","1","2","","3","9","1","1","EDI RUHIDIN","KUNI","1","");
INSERT INTO penduduk VALUES("2229","728","3208174307770005","MIS`AH","KUNINGAN","1977 -03-07","","2","11","1","2","","3","2","3","1","ROSID","NESTI","1","");
INSERT INTO penduduk VALUES("2230","728","3208175204110002","RINI","KUNINGAN","2011 -12-04","","2","11","1","1","","1","1","4","1","IPANG","MIS`AH","1","");
INSERT INTO penduduk VALUES("2231","729","3208172006630008","TANU","KUNINGAN","1963 -20-06","","1","11","1","2","","3","9","1","1","ONADI","ANIAH","1","");
INSERT INTO penduduk VALUES("2232","729","3208174107430240","SANIAH","KUNINGAN","1943 -01-07","","2","11","1","2","","3","2","3","1","SUMADLI","ARMINAH","1","");
INSERT INTO penduduk VALUES("2233","729","3208174107940179","IDA NANI","KUNINGAN","1994 -14-08","","2","11","1","1","","4","15","4","1","TANU","SANIAH","1","");
INSERT INTO penduduk VALUES("2234","729","3208175504450001","ANIAH","KUNINGAN","1945 -15-04","","2","11","1","4","","3","1","0","1","KAMSIJA","EBOD","1","");
INSERT INTO penduduk VALUES("2235","730","3208170308780001","SARTONO","KUNINGAN","1978 -03-08","","1","11","1","2","","3","9","1","1","SAMAD","SAPNAH","1","");
INSERT INTO penduduk VALUES("2236","730","3208174703780001","SITI SUMIATI","JAKARTA","1978 -07-03","","2","11","1","2","","3","2","3","1","TARIM","UMINAH","1","");
INSERT INTO penduduk VALUES("2237","730","3208170801980001","RISKI ISKANDAR","KUNINGAN","1998 -08-01","","1","11","1","1","","4","15","4","1","SARTONO","SITI SUMIATI","1","");
INSERT INTO penduduk VALUES("2238","730","3208176506040001","RISMA MELANI","KUNINGAN","2004 -25-06","","2","11","1","1","","1","1","4","1","SARTONO","SITI SUMIATI","1","");
INSERT INTO penduduk VALUES("2239","731","3208171708530005","SUHIDIN","KUNINGAN","1953 -17-08","","1","11","1","2","","3","8","1","1","NAIM","KENOH","1","");
INSERT INTO penduduk VALUES("2240","731","3208176106580002","NIRAH","KUNINGAN","1958 -21-06","","2","11","1","2","","3","2","3","1","JAYA","MARTI","1","");
INSERT INTO penduduk VALUES("2241","731","3208175808920005","NURJANAH","KUNINGAN","1992 -18-08","","2","11","1","1","","3","88","4","1","SUHIDIN","NIRAH","1","");
INSERT INTO penduduk VALUES("2242","731","3208170305940004","TAJUDIN","KUNINGAN","1994 -03-05","","1","11","1","1","","3","88","4","1","SUHIDIN","NIRAH","1","");
INSERT INTO penduduk VALUES("2243","731","3208171709840007","RUHIMAN","KUNINGAN","1984 -17-09","","1","11","1","1","","3","88","4","1","SUHIDIN","NIRAH","1","");
INSERT INTO penduduk VALUES("2244","732","3208172204690003","SAHLAN","KUNINGAN","1969 -22-04","","1","11","1","2","","3","9","1","1","SUKARJO","TINI","1","");
INSERT INTO penduduk VALUES("2245","732","3208174610720001","JURIAH","KUNINGAN","1972 -06-10","","2","11","1","2","","3","2","3","1","SUMARYA","SUKINAH","1","");
INSERT INTO penduduk VALUES("2246","732","3208156212930003","LIA","KUNINGAN","1993 -22-12","","2","11","1","2","","4","2","4","1","SAHLAN","JURIAH","1","");
INSERT INTO penduduk VALUES("2247","732","3208151202120001","EKA SUDIANA","KUNINGAN","2012 -12-02","","1","11","1","1","","1","1","6","1","NANA RUSMANA","LIA","1","");
INSERT INTO penduduk VALUES("2248","733","3208170908830001","PEDRO","KUNINGAN","1983 -09-08","","1","11","1","2","","3","88","1","1","SUHARNA","SUKIAH","1","");
INSERT INTO penduduk VALUES("2249","733","3208174610880003","YATI SUMIATI","KUNINGAN","1988 -06-10","","2","11","1","2","","4","2","3","1","NURDIMAN","SARNAH","1","");
INSERT INTO penduduk VALUES("2250","733","3208176402100002","ELSA OLIPIA","KUNINGAN","2010 -24-02","","2","11","1","1","","1","1","4","1","PEDRO","YATI SUMIATI","1","");
INSERT INTO penduduk VALUES("2251","734","3208170707780007","DADI RUNADI","KUNINGAN","1978 -07-07","","1","11","1","2","","3","20","1","1","SUNARYA","KATNAH","1","");
INSERT INTO penduduk VALUES("2252","734","3208171601100004","ALDI RENALDI","KUNINGAN","2010 -16-01","","1","11","1","1","","1","1","4","1","DADI RUNADI","SUPRIATIN","1","");
INSERT INTO penduduk VALUES("2253","734","3208174507050002","DESI DESTIANI","KUNINGAN","2005 -05-07","","2","11","1","1","","0","1","4","1","DADI RUNADI","SUPRIATIN","1","");
INSERT INTO penduduk VALUES("2254","734","3208176210120002","DEVI OKTAVIA","KUNINGAN","2012 -22-10","","2","11","1","1","","1","1","4","1","DADI RUNADI","SUPRIATIN","1","");
INSERT INTO penduduk VALUES("2255","735","3208170507590003","SUPARNO","KUNINGAN","1959 -05-07","","1","11","1","2","","3","9","1","1","WAKINTA","OYI","1","");
INSERT INTO penduduk VALUES("2256","735","3208175009610001","SUNAH","KUNINGAN","1961 -10-09","","2","11","1","2","","3","2","3","1","WIHANTA","IJOH","1","");
INSERT INTO penduduk VALUES("2257","736","3208171502750006","TARPIN","KUNINGAN","1975 -15-02","","1","11","1","2","","3","88","1","1","BODI","NARSIAH","1","");
INSERT INTO penduduk VALUES("2258","736","3208176004800009","SOANAH","KUNINGAN","1980 -20-04","","2","11","1","2","","3","2","3","1","MARGA","ONOH","1","");
INSERT INTO penduduk VALUES("2259","736","3208172107130001","FARHAN RAMADANI","KUNINGAN","2013 -21-07","","1","11","1","1","","1","1","4","1","TARPIN","SOANAH","1","");
INSERT INTO penduduk VALUES("2260","737","3208170901820003","APRIYADI","KUNINGAN","1982 -09-01","","1","11","1","2","","3","20","1","1","TIRJO","UNILAH","1","");
INSERT INTO penduduk VALUES("2261","737","3208175111920001","NURYANI","KUNINGAN","1992 -11-11","","2","11","1","2","","3","2","3","1","SARYONO","RUMTI","1","");
INSERT INTO penduduk VALUES("2262","737","3208170609110001","SAHDI","KUNINGAN","2011 -06-09","","1","11","1","1","","1","1","4","1","APRIYADI","NURYANI","1","");
INSERT INTO penduduk VALUES("2263","738","3208170107510083","NAHRUDIN","KUNINGAN","1951 -01-07","","1","11","1","2","","3","9","1","1","WIHASAN","MENIL","1","");
INSERT INTO penduduk VALUES("2264","738","3208174107480150","ARINI","KUNINGAN","1948 -01-07","","2","11","1","2","","3","2","3","1","SUKIRYA","SUTIRAH","1","");
INSERT INTO penduduk VALUES("2265","739","3208170505890005","ASIKIN","KUNINGAN","1989 -05-05","","1","11","1","2","","3","20","1","1","SURYADI","IJAH","1","");
INSERT INTO penduduk VALUES("2266","739","3208175206900001","DIAN HAERANI","KUNINGAN","1990 -12-06","","2","11","1","2","","3","2","3","1","OTONG","SUKMINAH","1","");
INSERT INTO penduduk VALUES("2267","739","3208171911110002","REJA","KUNINGAN","2011 -19-11","","1","11","1","1","","1","1","4","1","ASIKIN","DIAN HAERANI","1","");
INSERT INTO penduduk VALUES("2268","740","3208172802670001","OLIH SUTRISNO","KUNINGAN","1967 -28-02","","1","11","1","2","","3","20","1","1","SUNARYA","KATNAH","1","");
INSERT INTO penduduk VALUES("2269","740","3208174107730440","ANIH","KUNINGAN","1973 -01-07","","2","11","1","2","","3","2","3","1","IRTA","ARNAH","1","");
INSERT INTO penduduk VALUES("2270","740","3208170510920003","RIAN","KUNINGAN","1992 -05-10","","1","11","1","1","","3","88","4","1","OLIH SUTRISNO","ANIH","1","");
INSERT INTO penduduk VALUES("2271","740","3208171002040003","WISNU","KUNINGAN","2004 12:12:00-10-02","","1","11","1","1","","0","3","4","1","OLIH SUTRISNO","ANIH","1","");
INSERT INTO penduduk VALUES("2272","740","3208171203120001","REHAN","KUNINGAN","2012 -12-03","","1","11","1","1","","1","1","4","1","OLIH SUTRISNO","ANIH","1","");
INSERT INTO penduduk VALUES("2273","741","3208170101700015","SANA","KUNINGAN","1970 -01-01","","1","11","1","2","","3","9","1","1","WINANTA","JUMINTA","1","");
INSERT INTO penduduk VALUES("2274","741","3208174201750006","UKINAH","KUNINGAN","1975 -02-01","","2","11","1","2","","3","2","3","1","MULYADI","ASWIRAH","1","");
INSERT INTO penduduk VALUES("2275","741","3208171407970006","KUSMADI","KUNINGAN","1997 -14-07","","1","11","1","1","","1","1","4","1","SANA","UKINAH","1","");
INSERT INTO penduduk VALUES("2276","741","3208174906090003","EEN","KUNINGAN","2009 -09-06","","2","11","1","1","","1","1","4","1","SANA","UKINAH","1","");
INSERT INTO penduduk VALUES("2277","741","3208170609030001","ANTON","KUNINGAN","2003 -06-09","","1","11","1","1","","0","3","4","1","SANA","UKINAH","1","");
INSERT INTO penduduk VALUES("2278","742","3208171608590002","OHADI","KUNINGAN","1959 -16-08","","1","11","1","2","","3","9","1","1","RUSJAI","DAWI","1","");
INSERT INTO penduduk VALUES("2279","742","3208175510630001","RASINAH","KUNINGAN","1963 -15-10","","2","11","1","2","","3","2","3","1","SAKU","YASTI","1","");
INSERT INTO penduduk VALUES("2280","742","3208172404030004","NUNU NUGRAHA","KUNINGAN","2003 -24-04","","1","11","1","1","","0","3","4","1","OHADI","RASINAH","1","");
INSERT INTO penduduk VALUES("2281","742","3208175412990006","ATI RASWATI","KUNINGAN","1999 -14-12","","2","11","1","1","","3","1","4","1","OHADI","RASINAH","1","");
INSERT INTO penduduk VALUES("2282","743","3208170205780006","AHMAN","KUNINGAN","1978 -02-05","","1","11","1","2","","3","9","1","1","SUHIDIN","NIRAH ONEH","1","");
INSERT INTO penduduk VALUES("2283","743","3208176605860001","AISAH","KUNINGAN","1986 -26-05","","2","11","1","2","","3","2","3","1","SATIM","KEDAH","1","");
INSERT INTO penduduk VALUES("2284","743","3208172402060001","KUSMA","KUNINGAN","2006 -24-02","","1","11","1","1","","1","1","4","1","AHMAN","AISAH","1","");
INSERT INTO penduduk VALUES("2285","744","3208170907880009","UDI AHYONO","KUNINGAN","1988 -09-07","","1","11","1","2","","4","88","1","1","SUHRI","MISNATI","1","");
INSERT INTO penduduk VALUES("2286","744","3208174701930012","UTIN NURHAYATI","KUNINGAN","1993 -07-01","","2","11","1","2","","4","2","3","1","SURNA","DEWI","1","");
INSERT INTO penduduk VALUES("2287","744","3208170101120003","NUGI PRATAMA","KUNINGAN","2012 -01-01","","1","11","1","1","","1","1","4","1","UDI AHYONO","UTIN NURHAYATI","1","");
INSERT INTO penduduk VALUES("2288","745","3208172803880004","KARSONO","KUNINGAN","1988 -28-03","","1","11","1","2","","3","19","1","1","TARNO","ATINI","1","");
INSERT INTO penduduk VALUES("2289","745","3208175312970005","NINA DANIATI","KUNINGAN","1997 -13-12","","2","11","1","2","","4","2","3","1","KAMID","KARTINI","1","");
INSERT INTO penduduk VALUES("2290","746","3208171208530001","RUHYANO","KUNINGAN","1953 -12-08","","2","11","1","2","","3","20","1","1","ATMA SAPYA","NESPI","1","");
INSERT INTO penduduk VALUES("2291","746","3208175701600001","JAENAH","KUNINGAN","1960 -17-01","","2","11","1","2","","0","2","3","1","SUTARDI","KARNITA","1","");
INSERT INTO penduduk VALUES("2292","747","3208170103760001","AHYO","KUNINGAN","1972 -16-03","","1","11","1","2","","3","20","1","1","WINARDI","MARNI","1","");
INSERT INTO penduduk VALUES("2293","747","3208175309780001","ASWINAH","KUNINGAN","1978 -20-05","","2","11","1","2","","3","2","3","1","ARHUDI","MIAH","1","");
INSERT INTO penduduk VALUES("2294","747","3208171507980001","RUSTAM","KUNINGAN","1998 -24-06","","1","11","1","1","","4","1","4","1","AHYO","ASWINAH","1","");
INSERT INTO penduduk VALUES("2295","747","3208172711040002","SAHRUL","KUNINGAN","2004 -27-11","","1","11","1","1","","0","3","4","1","AHYO","ASWINAH","1","");
INSERT INTO penduduk VALUES("2296","748","3208171906560002","BADRUN HAERUN","KUNINGAN","1956 -19-06","","1","11","1","2","","0","5","1","1","HAPIDIN","SARSIH","1","");
INSERT INTO penduduk VALUES("2297","748","3208176602620001","SUKAENAH","CIREBON","1962 -28-02","","2","11","1","2","","3","2","3","1","SAMSURI","ASIA","1","");
INSERT INTO penduduk VALUES("2298","748","3208172309950004","TRY EKA NUGRAHA","KUNINGAN","1995 -23-09","","1","11","1","1","","5","1","4","1","BADRUN HAERUN","SUKAENAH","1","");
INSERT INTO penduduk VALUES("2299","748","3208176209060002","CINDY NIDIYA SEPTIANTI","KUNINGAN","2006 -22-09","","2","11","1","1","","0","3","4","1","BADRUN HAERUN","SUKAENAH","1","");
INSERT INTO penduduk VALUES("2300","749","3208173112270002","HAPIDIN","KUNINGAN","1927 -31-12","","1","11","1","2","","3","4","1","1","SURADINATA","MISREM","1","");
INSERT INTO penduduk VALUES("2301","749","3208175504360001","ROKAYAH","KUNINGAN","1936 -15-04","","2","11","1","2","","3","2","3","1","EMAD","NESWI","1","");
INSERT INTO penduduk VALUES("2302","750","3208170401800004","OTOY RUBA","KUNINGAN","1980 -04-01","","1","11","1","2","","3","9","1","1","SANUSI","KAPTI","1","");
INSERT INTO penduduk VALUES("2303","750","3208174305680009","SUNINGSIH","KUNINGAN","1968 -03-05","","2","11","1","2","","3","2","3","1","SUANAN","KARSITI","1","");
INSERT INTO penduduk VALUES("2304","751","3208171905410002","TIRJO","KUNINGAN","1941 -19-05","","1","1","1","2","","3","9","1","1","WIASAN","MENIL","1","");
INSERT INTO penduduk VALUES("2305","751","3208174708440002","UNILAH","KUNINGAN","1944 -07-08","","2","11","1","2","","3","2","3","1","HALIMI","SARYI","1","");
INSERT INTO penduduk VALUES("2306","752","3208171410730001","KAMAN","KUNINGAN","1973 -14-10","","1","11","1","2","","3","88","1","1","MAHMUDIN","SARTINI","1","");
INSERT INTO penduduk VALUES("2307","752","3208175704790001","NANI","KUNINGAN","1979 -17-04","","2","11","1","2","","4","2","3","1","SUKIRMAN","JUNI","1","");
INSERT INTO penduduk VALUES("2308","752","3208175811990002","SUSAN RAMADANI","KUNINGAN","1999 -18-11","","2","11","1","1","","0","1","4","1","KAMAN","NANI","1","");
INSERT INTO penduduk VALUES("2309","752","3208176309100003","HESTI DWI SEPTIANI","KUNINGAN","2010 -23-09","","2","11","1","1","","1","1","4","1","KAMAN","NANI","1","");
INSERT INTO penduduk VALUES("2310","753","3208170801650002","JUHIM","KUNINGAN","1965 -08-01","","1","11","1","2","","3","9","1","1","SUNANTA","SARNAH","1","");
INSERT INTO penduduk VALUES("2311","753","3208174101700006","KARTINI","KUNINGAN","1970 -01-01","","2","11","1","2","","3","9","3","1","HAZI SUARNO","RUBIKEM","1","");
INSERT INTO penduduk VALUES("2312","753","3208175101990001","NURI HASANAH","KUNINGAN","1999 -11-01","","2","11","1","1","","0","3","4","1","JUHIM","KARTINI","1","");
INSERT INTO penduduk VALUES("2313","754","3208171606760003","RAKI","KUNINGAN","1976 -16-06","","1","11","1","2","","3","9","1","1","TARMAN","SANEM","1","");
INSERT INTO penduduk VALUES("2314","754","3208174308820006","WIWIN","KUNINGAN","1982 -03-08","","2","11","1","2","","3","2","3","1","RUHYANO","JEROH","1","");
INSERT INTO penduduk VALUES("2315","754","3208175303120003","LILIS ERINA","KUNINGAN","2012 -13-03","","2","11","1","1","","1","1","4","1","RAKI","WIWIN","1","");
INSERT INTO penduduk VALUES("2316","754","3208176512030001","EVA SAPITRI","KUNINGAN","2003 -25-12","","2","11","1","1","","0","1","4","1","RAKI","WIWIN","1","");
INSERT INTO penduduk VALUES("2317","754","3208170812320003","TARMAN","KUNINGAN","1932 -08-12","","1","11","1","2","","3","9","0","1","KAMSIJA","EBOD","1","");
INSERT INTO penduduk VALUES("2318","754","3208174708360002","SANEM","KUNINGAN","1936 -07-08","","2","11","1","2","","3","9","0","1","SURANEYAN","KARWITI","1","");
INSERT INTO penduduk VALUES("2319","755","3208174904540001","SACIH","KUNINGAN","1954 -09-04","","2","11","1","4","","3","2","1","1","WIHARNI","NASWATI","1","");
INSERT INTO penduduk VALUES("2320","756","3208171601700001","HARYADI","KUNINGAN","1970 -16-01","","1","11","1","2","","3","84","1","1","SUDINTA","WARNI","1","");
INSERT INTO penduduk VALUES("2321","756","3208174506720011","KESIH","KUNINGAN","1972 -05-06","","2","11","1","2","","3","2","3","1","TARMIDI","NAWI","1","");
INSERT INTO penduduk VALUES("2322","756","3208175611020001","YUNITA ANGGRAENI PUTRI","KUNINGAN","2002 -16-11","","2","11","1","1","","1","1","4","1","HARYADI","KESIH","1","");
INSERT INTO penduduk VALUES("2323","757","3208171006500005","SUYATNO","KUNINGAN","1950 -10-06","","1","11","1","2","","3","9","1","1","WARTA","KEMO","1","");
INSERT INTO penduduk VALUES("2324","757","3208175203570002","TEYOH","KUNINGAN","1957 -12-03","","2","11","1","2","","3","2","3","1","SUANAN","KARSITI","1","");
INSERT INTO penduduk VALUES("2325","758","3208170407690010","SAID SUSANTO","KUNINGAN","1969 -04-07","","1","11","1","2","","3","9","1","1","SUKIRMAN","KASTI","1","");
INSERT INTO penduduk VALUES("2326","758","3208175712740002","YAYAH KARYANAH","KUNINGAN","1974 -17-12","","2","11","1","2","","3","2","3","1","SUYATNO","TEYOH","1","");
INSERT INTO penduduk VALUES("2327","758","3208175511080001","TIYA SEPTIANI","KUNINGAN","2008  1-11-15","","2","11","1","1","","1","1","4","1","SAID SUSANTO","YAYAN KARYANAH","1","");
INSERT INTO penduduk VALUES("2328","758","3208170906950001","ALAN TRIANA","KUNINGAN","1995 -09-06","","1","11","1","1","","4","1","4","1","SAID SUSANTO","KARYANAH","1","");
INSERT INTO penduduk VALUES("2329","759","3208171002570006","TARNO","KUNINGAN","1957 -10-02","","1","11","1","2","","3","88","1","1","TIKJO","UNILAH","1","");
INSERT INTO penduduk VALUES("2330","759","3208175304640002","ATINI","KUNINGAN","1964 -13-04","","2","11","1","2","","3","2","3","1","SUKIRMAN","KASTI","1","");
INSERT INTO penduduk VALUES("2331","760","3208170803340002","SUHARNO","KUNINGAN","1934 -08-03","","1","11","1","2","","3","9","1","1","WARYA JAYA","JUMI","1","");
INSERT INTO penduduk VALUES("2332","760","3208174605370001","SAPNI","KUNINGAN","1937 -06-05","","2","11","1","2","","3","2","3","1","ARMAWI","NESWI","1","");
INSERT INTO penduduk VALUES("2333","761","3208172002580003","AJIS SOPANDI","KUNINGAN","1958 -20-02","","1","11","1","2","","3","20","1","1","SAEMI","OYI","1","");
INSERT INTO penduduk VALUES("2334","761","3208175503630001","ENAH","KUNINGAN","1963 -15-03","","2","11","1","2","","3","20","3","1","ERTOM","MARTI","1","");
INSERT INTO penduduk VALUES("2335","762","3208171306700001","SANTONA SADILI","KUNINGAN","1970 -13-06","","1","11","1","2","","0","20","1","1","SUANAN","KARSITI","1","");
INSERT INTO penduduk VALUES("2336","762","3208177007740001","KURNI","KUNINGAN","1974 -30-07","","2","11","1","2","","0","20","3","1","SANHARI","YONAH","1","");
INSERT INTO penduduk VALUES("2337","762","3208176001940001","YATI SETIANI","KUNINGAN","1994 -20-01","","2","11","1","1","","4","30","4","1","SANTONA SADILI","KURNI","1","");
INSERT INTO penduduk VALUES("2338","762","3208175509050001","RIKA SANTIKA","KUNINGAN","2005 -15-09","","2","11","1","1","","1","1","4","1","SANTONA SADILI","KURNI","1","");
INSERT INTO penduduk VALUES("2339","763","3208172108560002","AHRUDIN","KUNINGAN","1956 -21-08","","1","11","1","2","","3","20","1","1","TOHARI","SUNAH","1","");
INSERT INTO penduduk VALUES("2340","763","3208175603690002","ROHANAH","KUNINGAN","1969 -16-03","","2","11","1","2","","3","2","3","1","APANDI","INOH","1","");
INSERT INTO penduduk VALUES("2341","763","3208175211830005","ELIS USMAWATI","KUNINGAN","1983 -12-11","","2","11","1","2","","3","2","4","1","AHRUDIN","ROHANAH","1","");
INSERT INTO penduduk VALUES("2342","763","3208170208720007","WAWAN","KUNINGAN","1972 -02-08","","1","11","1","2","","3","88","5","1","SANAHDI","IBOH","1","");
INSERT INTO penduduk VALUES("2343","763","3208172612010005","RIPI ADIT ARIYAN","KUNINGAN","2001 -26-12","","1","11","1","1","","0","3","6","1","WAWAN","ELIS USMAWATI","1","");
INSERT INTO penduduk VALUES("2344","764","3208171309810002","SUHIMAN","KUNINGAN","1981 -13-09","","1","11","1","2","","3","9","1","1","AHRUDIN","ROHANAH","1","");
INSERT INTO penduduk VALUES("2345","764","3208175001870001","JULAEHA","KUNINGAN","1987 -10-01","","2","11","1","2","","3","2","3","1","MULYADI","ASWIRAH","1","");
INSERT INTO penduduk VALUES("2346","764","3208170705070003","DUDI HIDAYAT","KUNINGAN","2007 -07-05","","1","11","1","1","","0","3","4","1","SUHIMAN","JULAEHA","1","");
INSERT INTO penduduk VALUES("2347","764","3208175606510001","KURSIAH","KUNINGAN","1951 -16-06","","2","11","1","4","","3","19","9","1","TOHARI","SUNAH","1","");
INSERT INTO penduduk VALUES("2348","765","3208174904730001","SURTINI","KUNINGAN","1973 -21-04","","2","11","1","2","","3","2","1","1","HERMAN","KANING","1","");
INSERT INTO penduduk VALUES("2349","765","3208174105070004","RISKI PEBRIAN","KUNINGAN`","2007 -01-05","","2","11","1","1","","0","3","4","1","KUSHERI","SURTINI","1","");
INSERT INTO penduduk VALUES("2350","765","3208172110960004","SETIAWAN","KUNINGAN","1996 -21-10","","1","11","1","1","","4","15","4","1","KUSHERI","SURTINI","1","");
INSERT INTO penduduk VALUES("2351","766","3208173004810001","PRAYITNO","BANYUMAS","1981 -30-04","","1","11","1","2","","4","15","1","1","HAMID KARSO MIHARJO","SUHARTI","1","");
INSERT INTO penduduk VALUES("2352","766","3208175006810009","SARI","KUNINGAN","1981 -10-06","","2","11","1","2","","3","2","3","1","SUHARMAN","INAH","1","");
INSERT INTO penduduk VALUES("2353","766","3208170404070002","RADITIA","KUNINGAN","2007 -04-04","","1","11","1","1","","1","1","4","1","PRAYITNO","SARI","1","");
INSERT INTO penduduk VALUES("2354","767","3208172901230002","SUDINTA","KUNINGAN","1923 -29-01","","1","11","1","2","","3","9","1","1","MINANTA","MARTI","1","");
INSERT INTO penduduk VALUES("2355","767","3208175612450002","WARNI","KUNINGAN","1945 -16-12","","2","11","1","2","","3","2","3","1","MARJU","ERAS","1","");
INSERT INTO penduduk VALUES("2356","768","3208170707910002","AEF SAEPUDIN","KUNINGAN","1991 -07-07","","1","11","1","2","","5","20","1","1","ENGKOS KOSWARA","IIN HARTINI","1","");
INSERT INTO penduduk VALUES("2357","768","3208175207950002","ANINA TANIATI","KUNINGAN","1995 -12-07","","2","11","1","2","","4","2","3","1","RIYANTO","SUNINGSIH","1","");
INSERT INTO penduduk VALUES("2358","769","3208170107800540","SUHERDI","KUNINGAN","1980 -01-07","","1","11","1","2","","3","81","1","1","ENDI","SAPNI","1","");
INSERT INTO penduduk VALUES("2359","769","3208170503060002","ADIL","KUNINGAN","2006 -05-03","","1","11","1","1","","1","1","4","1","HERDI","DEDE","1","");
INSERT INTO penduduk VALUES("2360","770","3208171006320001","SUHANAN","KUNINGAN","1932 -10-06","","1","11","1","2","","3","20","1","1","SACA","ARWITA","1","");
INSERT INTO penduduk VALUES("2361","770","3208175211370001","KARSITI","KUNINGAN","1937 -12-11","","2","11","1","2","","3","20","3","1","SAPTAR","SUTI","1","");
INSERT INTO penduduk VALUES("2362","771","3208170112920006","ASEP SUHENDAR","KUNINGAN","1992 -01-12","","1","11","1","2","","5","88","1","1","HARYADI","KESIH","1","");
INSERT INTO penduduk VALUES("2363","771","3208171707120002","AZRIEL JULIANSYAH","KUNINGAN","2012 -17-07","","1","11","1","1","","1","1","4","1","ASEP SUHENDAR","RIKA TRIANI","1","");
INSERT INTO penduduk VALUES("2364","772","3208170808870011","JOJO PERMANA","KUNINGAN","1987 -08-08","","1","11","1","2","","4","88","1","1","SUHARNO","SAPNI","1","");
INSERT INTO penduduk VALUES("2365","772","3208175101930001","NURQOYIMAH","KUNINGAN","1993 -11-01","","2","11","1","2","","4","2","3","1","JUHIM","KARSINI","1","");
INSERT INTO penduduk VALUES("2366","772","3208170806140001","HANIF ABDILLAH","KUNINGAN","2014  2-06-08","","1","11","1","1","","1","1","4","1","JOJO PERMANA","NURQOYIMAH","1","");
INSERT INTO penduduk VALUES("2367","773","3208170509820001","ANTON","KUNINGAN","1982 -05-09","","1","11","1","2","","4","20","1","1","YANTO","TEYOH","1","");
INSERT INTO penduduk VALUES("2368","774","3208172004650001","JUMAEDIN","GARUT","1965 -20-04","","1","11","1","2","","3","20","1","1","BIHIN","EMIR","1","");
INSERT INTO penduduk VALUES("2369","774","3208174303560001","JUNAH","KUNINGAN","1956 -03-03","","2","11","1","2","","3","2","3","1","WIKARJA","NIRTA","1","");
INSERT INTO penduduk VALUES("2370","774","3208170603030004","DIKDIK ALAMSAH","KUNINGAN","2003 -06-03","","1","11","1","1","","1","1","4","1","JUMAEDIN","JUNAH","1","");
INSERT INTO penduduk VALUES("2371","775","3208170208920006","AGUS EKO NUGRAHA","KUNINGAN","1992 -02-08","","1","11","1","1","","5","3","4","1","MARTONO","SUNIAH","1","");
INSERT INTO penduduk VALUES("2372","776","3208170509650006","SATA SUHENDAR","KUNINGAN","1965 -05-09","","1","2","1","2","","4","9","1","1","TARYONO","MINI","1","");
INSERT INTO penduduk VALUES("2373","776","3208176810670001","AI HARYATI","KUNINGAN","1967 -28-10","","2","11","1","2","","3","2","3","1","OYO","ITI","1","");
INSERT INTO penduduk VALUES("2374","776","3208172807020006","DEDE SUHENDRI","KUNINGAN","2002 -28-07","","1","11","1","1","","0","3","4","1","SATA SUHENDAR","AI HARYATI","1","");
INSERT INTO penduduk VALUES("2375","776","3208174110000013","SRI MULYANI","KUNINGAN","2000 -01-10","","2","11","1","1","","0","3","4","1","SATA SUHENDAR","AI HARYATI","1","");
INSERT INTO penduduk VALUES("2376","777","3208171105670001","NURDIMAN","KUNINGAN","1967 -11-05","","1","11","1","2","","3","9","1","1","WIHARNA","NETI","1","");
INSERT INTO penduduk VALUES("2377","777","3208175103740007","ARHETI","KUNINGAN","1974 -11-03","","2","11","1","2","","3","2","3","1","AHMADI","RUSTINAH","1","");
INSERT INTO penduduk VALUES("2378","777","3208170107920317","SUTARNA","KUNINGAN","1992 -01-07","","1","11","1","1","","3","19","4","1","NURDIMAN","ARHETI","1","");
INSERT INTO penduduk VALUES("2379","778","3208171410700002","AWANDI","KUNINGAN","1970 -14-10","","1","11","1","2","","3","19","1","1","SUHARNO","SAPNI","1","");
INSERT INTO penduduk VALUES("2380","778","3208174806730005","RUKASIH","KUNINGAN","1973 -08-06","","2","11","1","2","","3","2","3","1","SUKIRMAN","KASTI","1","");
INSERT INTO penduduk VALUES("2381","778","3208174504980008","RIYANI","KUNINGAN","1998 -05-04","","2","11","1","1","","3","1","4","1","AWANDI","RUKA.SIH","1","");
INSERT INTO penduduk VALUES("2382","779","3208172006380009","SUHARMAN","KUNINGAN","1938 -20-06","","1","11","1","2","","3","9","1","1","WIKARTA","NENTI","1","");
INSERT INTO penduduk VALUES("2383","779","3208174603470005","RUMSINAH","KUNINGAN","1947 -06-03","","2","11","1","2","","3","2","3","1","SASTRA","TEWI","1","");
INSERT INTO penduduk VALUES("2384","780","3208170608650005","ARMU","KUNINGAN","1965 -06-08","","1","11","1","2","","3","9","1","1","SUHARMAN","RUMSINAH","1","");
INSERT INTO penduduk VALUES("2385","780","3208174811670004","ONOH","KUNINGAN","1967 -08-11","","2","11","1","2","","3","2","3","1","SUNIRTA","RAYA","1","");
INSERT INTO penduduk VALUES("2386","780","3208171006900004","SAHLI","KUNINGAN","1990 -10-06","","1","11","1","1","","3","1","4","1","ARMU","ONOH","1","");
INSERT INTO penduduk VALUES("2387","781","3208174107300108","SUTIRAH","KUNINGAN","1930 -01-07","","2","11","1","2","","0","9","1","1","KARIM","KARSIAH .","1","");
INSERT INTO penduduk VALUES("2388","782","3208172410650001","RUSTANDI","KUNINGAN","1965 -24-10","","1","11","1","2","","3","9","1","1","WINARDI","MARNI","1","");
INSERT INTO penduduk VALUES("2389","782","3208175008700001","SAONAH","KUNINGAN","1970 -10-08","","2","11","1","2","","3","2","3","1","TIRJO","UNILAH","1","");
INSERT INTO penduduk VALUES("2390","782","3208171112970003","MULYADI","KUNINGAN","1997 -11-12","","1","11","1","1","","4","15","4","1","RUSTANDI","SAONAH","1","");
INSERT INTO penduduk VALUES("2391","783","3208170209680002","SUDIANA","KUNINGAN","1968 -02-09","","1","11","1","2","","3","9","1","1","WINARDI","MARNI","1","");
INSERT INTO penduduk VALUES("2392","783","3208174305720002","SAPNIRAH","KUNINGAN","1972 -03-05","","2","11","1","2","","3","2","3","1","SANUSI","KAPTI","1","");
INSERT INTO penduduk VALUES("2393","783","3208171105970003","SUKENDA","KUNINGAN","1997 -11-05","","1","11","1","1","","0","15","4","1","SUDIANA","SAPNIRAH","1","");
INSERT INTO penduduk VALUES("2394","784","3208172006700008","KARYO","KUNINGAN","1970 -20-06","","1","11","1","2","","3","9","1","1","SUPARDI","MISNAH","1","");
INSERT INTO penduduk VALUES("2395","784","3208175208720006","UNIRAH","KUNINGAN","1972 -12-08","","2","11","1","2","","3","2","3","1","SUKIRNO","SAPTINI","1","");
INSERT INTO penduduk VALUES("2396","784","3208176905060001","ANISA TRI LESTARI","KUNINGAN","2006 -29-05","","2","11","1","1","","1","1","4","1","KUSYADI","UNIRAH","1","");
INSERT INTO penduduk VALUES("2397","784","3208170312940002","HERU","KUNINGAN","1994 -03-12","","1","11","1","1","","3","1","4","1","KUSYADI","UNIRAH","1","");
INSERT INTO penduduk VALUES("2398","785","3208171608530002","TARYANA","KUNINGAN","1953 -16-08","","1","11","1","2","","3","9","1","1","SAHYUDI","RASIH","1","");
INSERT INTO penduduk VALUES("2399","785","3208175010560005","MARNAH","KUNINGAN","1956 -10-10","","2","11","1","2","","3","2","3","1","MISNADI","MISNAH","1","");
INSERT INTO penduduk VALUES("2400","786","3208171810550002","JUMANTO","KUNINGAN","1955 -18-10","","1","11","1","2","","3","20","1","1","MARYA","KASMI","1","");
INSERT INTO penduduk VALUES("2401","786","3208176006580001","WACI","KUNINGAN","1958 -20-06","","2","11","1","2","","3","2","3","1","SANUSI","KARTINAH","1","");
INSERT INTO penduduk VALUES("2402","787","3208171008500005","HERMAN","KUNINGAN","1950 -10-08","","1","11","1","2","","3","20","1","1","SUNINTA","YATNI","1","");
INSERT INTO penduduk VALUES("2403","787","3208175507530003","KANING","KUNINGAN","1953 -15-07","","2","11","1","2","","3","20","3","1","ARLASAN","NENAH","1","");
INSERT INTO penduduk VALUES("2404","787","3208175903780002","JUHATI","KUNINGAN","1978 -19-03","","2","11","1","1","","3","88","4","1","HERMAN","KANING","1","");
INSERT INTO penduduk VALUES("2405","787","3208171409990003","SUKIRNA","KUNINGAN","1999 -14-09","","1","11","1","1","","0","1","6","1","GUNTUR","JUHATI","1","");
INSERT INTO penduduk VALUES("2406","788","3208170505700013","SOLEH","KUNINGAN","1970 -05-05","","1","11","1","2","","4","9","1","1","TARYONO","MINI","1","");
INSERT INTO penduduk VALUES("2407","788","3208174606750004","SANI","KUNINGAN","1975 -06-06","","2","11","1","2","","3","2","3","1","SUKARJO","TINI","1","");
INSERT INTO penduduk VALUES("2408","788","3208174101060002","INE FITRIANI","KUNINGAN","2006 -01-01","","2","11","1","1","","0","3","4","1","SOLEH","SANI","1","");
INSERT INTO penduduk VALUES("2409","788","3208172010320001","TARYONO","KUNINGAN","1932 -20-10","","1","11","1","2","","3","9","0","1","PERWATA","KAWIT","1","");
INSERT INTO penduduk VALUES("2410","788","3208175508450006","MINI","KUNINGAN","1945 -15-08","","2","11","1","2","","3","2","0","1","WINATA ISMAD","ENTI","1","");
INSERT INTO penduduk VALUES("2411","789","3208172010700001","RIAN NARWA","KUNINGAN","1970 -20-10","","1","11","1","2","","3","88","1","1","SUWIRYA","NASIH","1","");
INSERT INTO penduduk VALUES("2412","789","3208175611730001","SANIAH","KUNINGAN","1973 -16-11","","2","11","1","2","","3","2","3","1","NAHRUDIN","ARINI","1","");
INSERT INTO penduduk VALUES("2413","789","3208174301040004","SANTI NURHALISA","KUNINGAN","2004 -03-01","","2","11","1","1","","1","1","4","1","RIAN NARWA","SANIAH","1","");
INSERT INTO penduduk VALUES("2414","790","3208172808780008","IING ISKANDAR","KUNINGAN","1978 -28-08","","1","11","1","2","","4","88","1","1","KUSDIANA","KESIH SUKAESIH","1","");
INSERT INTO penduduk VALUES("2415","790","3208175012820278","UUM UMINAH","KUNINGAN","1982 -10-12","","2","11","1","2","","4","2","3","1","NURYANA","ICAH","1","");
INSERT INTO penduduk VALUES("2416","790","3208171109020006","DICKY RAHAYU","KUNINGAN","2002 -11-09","","1","11","1","1","","0","3","4","1","IING ISKANDAR","UUM UMINAH","1","");
INSERT INTO penduduk VALUES("2417","790","3208170201120001","DZAKI KHAIRUL AZZAM","KUNINGAN","2012 -02-01","","1","11","1","1","","1","1","4","1","IING ISKANDAR","UUM UMINAH","1","");
INSERT INTO penduduk VALUES("2418","791","3208172308840001","OHAN SOHANDI","KUNINGAN","1984 -23-08","","1","11","1","2","","3","84","1","1","OMAN","ARKILAH","1","");
INSERT INTO penduduk VALUES("2419","791","3208175003850006","SITI KOMARIAH","KUNINGAN","1985 -10-03","","2","11","1","2","","3","2","3","1","UDIN","NINGSIH","1","");
INSERT INTO penduduk VALUES("2420","791","3208172701070004","KRISNA","KUNINGAN","2007 -27-01","","1","11","1","1","","1","1","4","1","OHAN SOHANDI","SITI KOMARIAH","1","");
INSERT INTO penduduk VALUES("2421","792","3208171303700008","NANA SUHENDRA","KUNINGAN","1970 -13-03","","1","11","1","2","","3","9","1","1","TARMAN","SANEM","1","");
INSERT INTO penduduk VALUES("2422","792","3208174807740010","MISNATI","KUNINGAN","1974 -08-07","","2","11","1","2","","3","2","3","1","SARBINI","NARMI","1","");
INSERT INTO penduduk VALUES("2423","792","3208173108940001","ADE ANDRIANA","KUNINGAN","1994 -31-08","","1","11","1","1","","4","1","4","1","NANA SUHENDRA","MISNATI","1","");
INSERT INTO penduduk VALUES("2424","792","3208172010040002","RENO YOWANDANA","KUNINGAN","2004 -20-10","","1","11","1","1","","1","1","4","1","NANA SUHENDRA","MISNATI","1","");
INSERT INTO penduduk VALUES("2425","793","3208170403560005","TARYA","KUNINGAN","1956 -04-03","","1","11","1","2","","0","20","1","1","WINARTA","SATINI","1","");
INSERT INTO penduduk VALUES("2426","793","3208175607620004","OCOH","KUNINGAN","1962 -16-07","","2","11","1","2","","0","20","3","1","SUKIRJA","RUMINI","1","");
INSERT INTO penduduk VALUES("2427","793","3208176110080003","SARAH OKTAVIANI","KUNINGAN","2008 -21-10","","2","11","1","1","","1","1","6","1","-","-","1","");
INSERT INTO penduduk VALUES("2428","794","3208171604730006","SAPTARI","KUNINGAN","1973 -16-04","","1","11","1","2","","4","9","1","1","SUKIRYA","SUTIRAH","1","");
INSERT INTO penduduk VALUES("2429","794","3208175502760004","NURSIAH","KUNINGAN","1976 -15-02","","2","11","1","2","","3","2","3","1","SOHARI","SAPTI","1","");
INSERT INTO penduduk VALUES("2430","794","3208174909970004","NURCAHYATI","KUNINGAN","1997 -09-09","","2","11","1","1","","3","1","4","1","SAPTARI","NURSIAH","1","");
INSERT INTO penduduk VALUES("2431","794","3208172112050003","ILHAM RIYADI","KUNINGAN","2005 -21-12","","1","11","1","1","","1","1","4","1","SAPTARI","NURSIAH","1","");
INSERT INTO penduduk VALUES("2432","795","3208171103820007","DIDI KARSADI","KUNINGAN","1982 -11-03","","1","11","1","2","","3","20","1","1","SUHDIN","TITI","1","");
INSERT INTO penduduk VALUES("2433","795","3208175203890001","IIS","MAJALENGKA","1989 -12-03","","2","11","1","2","","3","2","3","1","UHA","MARI","1","");
INSERT INTO penduduk VALUES("2434","795","3208176108070005","ELIN NURLINA","KUNINGAN","2007 -21-08","","2","11","1","1","","1","1","4","1","DIDI KARSADI","IIS","1","");
INSERT INTO penduduk VALUES("2435","795","3208174407110003","NURLAENI","KUNINGAN","2011 -04-07","","2","11","1","1","","1","1","4","1","DIDI KARSADI","IIS","1","");
INSERT INTO penduduk VALUES("2436","795","3208170607930001","ILI SUHERLI","KUNINGAN","1993 -06-07","","1","11","1","1","","4","3","9","1","SUHDIN","SUNIAH","1","");
INSERT INTO penduduk VALUES("2437","796","3208170404820013","TOHA","KUNINGAN","1982 -04-04","","1","11","1","2","","3","9","1","1","JUMANTO","WACI","1","");
INSERT INTO penduduk VALUES("2438","796","3208174809090002","AMELIA","KUNINGAN","2009 -08-09","","2","11","1","1","","1","1","4","1","TOHA","ELA NURLELA","1","");
INSERT INTO penduduk VALUES("2439","797","3208172707800004","TOTO SUTARSO","KUNINGAN","1980 -27-07","","1","11","1","2","","3","9","1","1","DAHLAN","SALMI","1","");
INSERT INTO penduduk VALUES("2440","797","3208175006830004","NANI","KUNINGAN","1983 -10-06","","2","11","1","2","","3","2","3","1","JUNADI","RONAH","1","");
INSERT INTO penduduk VALUES("2441","797","3208175201060002","WIDIAWATI","KUNINGAN","2006 -12-01","","2","11","1","1","","1","1","4","1","TOTO SUTARSO","NANI","1","");
INSERT INTO penduduk VALUES("2442","797","3208176510100001","ANDINI","KUNINGAN","2010 -25-10","","2","11","1","1","","1","1","4","1","TOTO SUTARSO","NANI","1","");
INSERT INTO penduduk VALUES("2443","798","3208170802790003","ARMA","KUNINGAN","1979 -08-02","","1","11","1","2","","3","9","1","1","TARYANA","MARNAH","1","");
INSERT INTO penduduk VALUES("2444","798","3208175210750001","NENENG NURUL CHOTIMAH","CIREBON","1975 -12-10","","2","11","1","2","","4","2","3","1","SUBANDI","SUHAEBAH","1","");
INSERT INTO penduduk VALUES("2445","798","3208176402060001","ARNESTA DWI AGNESIA","KUNINGAN","2006 -24-02","","2","11","1","1","","1","1","4","1","ARMA","NENENG NURUL CHOTIMAH","1","");
INSERT INTO penduduk VALUES("2446","798","3208171703990004","MOCH ALIK SYAAEPULOH","CIREBON","1999 -17-03","","1","11","1","1","","3","1","4","1","ARMA","NENENG NURUL CHOTIMAH","1","");
INSERT INTO penduduk VALUES("2447","799","3208171208470002","NURYANA","KUNINGAN","1947 -12-08","","1","11","1","2","","3","20","1","1","ATMA","JARWI","1","");
INSERT INTO penduduk VALUES("2448","799","3208176011600005","ICAH","KUNINGAN","1960 -20-11","","2","11","1","2","","3","2","3","1","SANMAHRI","KAPTI","1","");
INSERT INTO penduduk VALUES("2449","800","3208171810540001","TAHYUDIN","KUNINGAN","1954 -18-10","","1","11","1","2","","3","9","1","1","SUHANI","NAPTI","1","");
INSERT INTO penduduk VALUES("2450","800","3208174107570151","NERAH","KUNINGAN","1957 -01-07","","2","11","1","2","","3","2","4","1","BOSA","MASTI","1","");
INSERT INTO penduduk VALUES("2451","800","3208170107890195","AZIS","KUNINGAN","1989 -01-07","","1","11","1","1","","3","1","4","1","TAHYUDIN","NERAH","1","");
INSERT INTO penduduk VALUES("2452","801","3208174107520244","AMAH","KUNINGAN","1952 -01-07","","2","11","1","2","","3","2","1","1","SUATMA","SUKI","1","");
INSERT INTO penduduk VALUES("2453","802","3208170504540003","IWA","KUNINGAN","1954 -05-04","","1","11","1","2","","3","9","1","1","MIHARDI","ARSITI","1","");
INSERT INTO penduduk VALUES("2454","802","3208174806570001","KARTIAH","KUNINGAN","1957 -08-06","","2","11","1","2","","3","2","3","1","KARYAT","RUMSIH","1","");
INSERT INTO penduduk VALUES("2455","803","3208171006500009","SUHARNA","KUNINGAN","1950 -10-06","","1","11","1","2","","3","20","1","1","ARSID","AMSAH","1","");
INSERT INTO penduduk VALUES("2456","803","3208175808560002","SUKIAH","KUNINGAN","1954 -18-08","","2","11","1","2","","3","2","3","1","MUNAIM","KENOH","1","");
INSERT INTO penduduk VALUES("2457","803","3208174404940008","ERNI RAHAYU","KUNINGAN","1994 -04-04","","2","11","1","1","","4","3","4","1","SUHARNA","AMUNAH","1","");
INSERT INTO penduduk VALUES("2458","803","3208175510290001","AMSAH","KUNINGAN","1929 -15-10","","2","11","1","4","","3","1","0","1","SANIJA","KITOH","1","");
INSERT INTO penduduk VALUES("2459","804","3208170204540004","UDIR","KUNINGAN","1954 -02-04","","1","11","1","2","","3","9","1","1","TARHUDI","ARSITI","1","");
INSERT INTO penduduk VALUES("2460","804","3208176002570003","NONOH","KUNINGAN","1957 -20-02","","2","11","1","2","","3","2","3","1","WINARYO","DARSIH","1","");
INSERT INTO penduduk VALUES("2461","805","3208170702620001","KIRNO","KUNINGAN","1962 -07-02","","1","11","1","2","","3","9","1","1","MIHARDI","ARSITI","1","");
INSERT INTO penduduk VALUES("2462","805","3208175706630003","SACIH","KUNINGAN","1963 -17-06","","2","11","1","2","","3","2","3","1","SUNIRTA","RAYA","1","");
INSERT INTO penduduk VALUES("2463","805","3208174702900002","SUHETI","KUNINGAN","1990 -07-02","","2","11","1","2","","3","2","4","1","KIRNO","SACIH","1","");
INSERT INTO penduduk VALUES("2464","805","3208170701830004","RUDIYANTO","CIREBON","1983 -07-01","","1","11","1","2","","3","88","5","1","JAHURI","ADMINAH","1","");
INSERT INTO penduduk VALUES("2465","805","3208174705090001","AI NIZA ROSETIANA LOCA","KUNINGAN","2009 -07-05","","2","11","1","1","","1","1","6","1","RUDIANTO","SUHETI","1","");
INSERT INTO penduduk VALUES("2466","806","3208170308320002","SUNIRTA","KUNINGAN","1932 -03-08","","1","11","1","2","","0","9","1","1","BASTA","RATNA","1","");
INSERT INTO penduduk VALUES("2467","807","3208173112460001","DANU SUHERMAN","KUNINGAN","1946 -31-12","","1","11","1","2","","3","88","1","1","SUWINTA","SANAH","1","");
INSERT INTO penduduk VALUES("2468","807","3208175506600006","SATINI","KUNINGAN","1960 -15-06","","2","11","1","2","","3","2","3","1","SANHUDI","SATI","1","");
INSERT INTO penduduk VALUES("2469","807","3208171605880003","ACEP SETIAWAN","KUNINGAN","1987 -16-05","","1","11","1","1","","5","15","4","1","DANU SUHERMAN","NURHAMAH","1","");
INSERT INTO penduduk VALUES("2470","808","3208171005550007","SUTARNO","KUNINGAN","1955 -10-05","","1","11","1","2","","3","8","1","1","WIHANA","JUMSIH","1","");
INSERT INTO penduduk VALUES("2471","808","3208175107580001","SARTI","KUNINGAN","1958 -11-07","","2","11","1","2","","3","2","3","1","SANHUDI","SATI","1","");
INSERT INTO penduduk VALUES("2472","809","3208170906480002","SARYONO","KUNINGAN","1948 -09-06","","1","11","1","2","","3","9","1","1","JANTA","SANTIP","1","");
INSERT INTO penduduk VALUES("2473","809","3208174412600002","ARTINAH","KUNINGAN","1960 -04-12","","2","11","1","2","","3","2","3","1","SANROIP","NASMI","1","");
INSERT INTO penduduk VALUES("2474","809","3208172012820004","SAHYO","KUNINGAN","1982 -20-12","","1","11","1","1","","4","88","4","1","SARYONO","ARTINAH","1","");
INSERT INTO penduduk VALUES("2475","809","3208175210020002","SARIPAH","KUNINGAN","2002 -12-10","","2","11","1","1","","0","1","4","1","SARYONO","ARTINAH","1","");
INSERT INTO penduduk VALUES("2476","809","3208172802990003","AHMIN","KUNINGAN","1999 -28-02","","1","11","1","1","","0","3","4","1","SARYONO","ARTINAH","1","");
INSERT INTO penduduk VALUES("2477","810","3208170405260001","SUARIP","KUNINGAN","1926 -04-05","","1","11","1","2","","3","20","1","1","MISTARA","GARNI","1","");
INSERT INTO penduduk VALUES("2478","810","3208174505440003","JUHNI","KUNINGAN","1944 -05-05","","2","11","1","2","","3","2","3","1","NARMAWI SALIM","NESWI","1","");
INSERT INTO penduduk VALUES("2479","811","3208172406470002","SUKARDI","KUNINGAN","1947 -24-06","","1","11","1","2","","3","88","1","1","SANHUDI","SATI","1","");
INSERT INTO penduduk VALUES("2480","811","3208176306550001","SITI ROHANAH","KUNINGAN","1955 -23-06","","2","11","1","2","","3","2","3","1","SANUKRI","SUMI","1","");
INSERT INTO penduduk VALUES("2481","812","3208170402700005","OSID","KUNINGAN","1970 -04-02","","1","11","1","2","","3","9","1","1","WIARTA","ASMAH","1","");
INSERT INTO penduduk VALUES("2482","812","3208174506720009","ROYAH","KUNINGAN","1972 -05-06","","2","11","1","2","","3","2","3","1","SUHENDI","RUMINI","1","");
INSERT INTO penduduk VALUES("2483","812","3208170706920004","SAMIN","KUNINGAN","1992 -07-06","","1","11","1","1","","4","15","4","1","OSID","ROYAH","1","");
INSERT INTO penduduk VALUES("2484","812","3208170706920006","SAMAN","KUNINGAN","1992 -07-06","","1","11","1","1","","4","15","4","1","OSID","ROYAH","1","");
INSERT INTO penduduk VALUES("2485","812","3208170102880006","JOKO","KUNINGAN","1988 -01-02","","1","11","1","1","","3","15","4","1","OSID","ROYAH","1","");
INSERT INTO penduduk VALUES("2486","813","3208170706620013","JUMHANI","KUNINGAN","1962 -07-06","","1","11","1","2","","3","19","1","1","HASAN","RESIH","1","");
INSERT INTO penduduk VALUES("2487","813","3208175008620004","ARTINI","KUNINGAN","1962 -10-08","","2","11","1","2","","3","2","3","1","SANHARI","ENAR","1","");
INSERT INTO penduduk VALUES("2488","813","3208170611980004","IWAN","KUNINGAN","1998 -06-11","","1","11","1","1","","0","1","4","1","ASEP","ATIK","1","");
INSERT INTO penduduk VALUES("2489","813","3208172004740009","ASEP","KUNINGAN","1974 -20-04","","1","11","1","2","","3","19","4","1","AMIRJA","ARTINI","1","");
INSERT INTO penduduk VALUES("2490","813","3208174506750015","ATIK","KUNINGAN","1975 -05-06","","2","11","1","2","","3","2","5","1","SANMAHRI","-","1","");
INSERT INTO penduduk VALUES("2491","814","3208170705780003","BENO","KUNINGAN","1978 -07-05","","1","11","1","2","","4","88","1","1","SUTADI","ISAH","1","");
INSERT INTO penduduk VALUES("2492","814","3208174101840008","MULYATI","KUNINGAN","1984 -01-01","","2","11","1","2","","4","2","3","1","RUSPENDI","JUARSIH","1","");
INSERT INTO penduduk VALUES("2493","814","3208171512040002","RIPKI PEBRIAN","KUNINGAN","2004 -15-12","","1","11","1","1","","0","3","4","1","BENO","MULYATI","1","");
INSERT INTO penduduk VALUES("2494","814","3208172906120002","ARPAN RAMADANI","BANDUNG","2012 -29-06","","1","11","1","1","","1","1","4","1","BENO","MULYATI","1","");
INSERT INTO penduduk VALUES("2495","815","3208170307750007","ADIN","KUNINGAN","1975 -03-07","","1","11","1","2","","3","20","1","1","MIHARDI","ARSITI","1","");
INSERT INTO penduduk VALUES("2496","815","3208177001860001","NUR ELAH","KUNINGAN","1986 -30-01","","2","11","1","2","","3","2","3","1","SUDARNO","ODAH","1","");
INSERT INTO penduduk VALUES("2497","815","3208170701110004","AMAR PAHROJI","KUNINGAN","2011 -07-01","","1","11","1","1","","1","1","4","1","ADIN","NUR ELAH","1","");
INSERT INTO penduduk VALUES("2498","815","3208171503720001","HADIN","KUNINGAN","1972 -15-03","","1","11","1","2","","3","20","9","1","MIHARDI","ARSITI","1","");
INSERT INTO penduduk VALUES("2499","815","3208174107880259","ELAH","KUNINGAN","1988 -01-07","","2","11","1","2","","3","2","9","1","SUDARNO","ODAH","1","");
INSERT INTO penduduk VALUES("2500","816","3208170808820017","HENDRA KUSUMA","CIREBON","1982 -08-08","","1","11","1","2","","5","15","1","1","KUSNAEDI","TITIN","1","");
INSERT INTO penduduk VALUES("2501","816","3208176309830001","TITI ROHAETI","KUNINGAN","1983 -23-09","","2","11","1","2","","4","2","3","1","MISKU","MARSIH","1","");
INSERT INTO penduduk VALUES("2502","816","3208176004050007","AVRILLIANTY PUTRI KUSUMA","KUNINGAN","2005 -20-04","","2","11","1","1","","0","3","4","1","HENDRA KUSUMA","TITI ROHAETI","1","");
INSERT INTO penduduk VALUES("2503","816","3208170302000006","NUR ICKSANNUDIN","KUNINGAN","2000 -03-02","","1","11","1","1","","4","3","9","1","HAERONI","ENTIN DASTINI","1","");
INSERT INTO penduduk VALUES("2504","817","3208176309770001","ENTIN DASTINI","KUNINGAN","1977 -23-09","","2","11","1","3","","4","88","1","1","MISKU","MARSIH","1","");
INSERT INTO penduduk VALUES("2505","818","3208174704570001","MARSIH","KUNINGAN","1957 -07-04","","2","11","1","4","","3","20","1","1","WIKARYA","KANTI","1","");
INSERT INTO penduduk VALUES("2506","818","3208172501730001","ROHANI HIDAYAT","KUNINGAN","1973 -25-01","","1","11","1","1","","3","20","4","1","MISKU","MARSIH","1","");
INSERT INTO penduduk VALUES("2507","819","3208174107560147","SATIMI","KUNINGAN","1956 -01-07","","2","11","1","4","","3","9","1","1","SANAHDI","IBOH","1","");
INSERT INTO penduduk VALUES("2508","819","3208176908950004","DEVI TRIYANI","KUNINGAN","1995 -29-08","","2","11","1","1","","4","15","6","1","SURYANA","ROKAYAH","1","");
INSERT INTO penduduk VALUES("2509","820","3208172012710003","MAMAN PURNAMA","KUNINGAN","1971 -20-12","","1","11","1","4","","3","19","1","1","MIHARDI","ARSITI","1","");
INSERT INTO penduduk VALUES("2510","820","3208174909010005","MIRA AMALIANA","KUNINGAN","2001 -09-09","","2","11","1","1","","0","3","4","1","MAMAN PURNAMA","HERNI ANGGRAENI","1","");
INSERT INTO penduduk VALUES("2511","820","3208175406400001","ARSITI","KUNINGAN","1940 -14-06","","2","11","1","4","","3","9","0","1","BAYO","JUNAH","1","");
INSERT INTO penduduk VALUES("2512","820","3208174704530003","SATIAH","KUNINGAN","1953 -07-04","","2","11","1","1","","1","88","9","1","MIHARDI","ARSITI","1","");
INSERT INTO penduduk VALUES("2513","821","3208170707770008","HARTOYO","KUNINGAN","1977 -07-07","","1","11","1","2","","4","19","1","1","TARYANA","SARIAH","1","");
INSERT INTO penduduk VALUES("2514","821","3208174806820003","ROHENAH","KUNINGAN","1982 -08-06","","2","11","1","2","","4","2","3","1","JUMHANI","ARIMI","1","");
INSERT INTO penduduk VALUES("2515","821","3208171610020001","MARCHEL ADITIA","KUNINGAN","2002 -16-10","","1","11","1","1","","0","3","4","1","HARTOYO","ROHENAH","1","");
INSERT INTO penduduk VALUES("2516","821","3208175806090002","FITRIA AYU MARESA","KUNINGAN","2009 -18-06","","2","11","1","1","","1","1","4","1","HARTOYO","ROHENAH","1","");
INSERT INTO penduduk VALUES("2517","822","3208170410900001","ADE KUSDIANA","KUNINGAN","1990 -04-10","","1","11","1","2","","4","88","1","1","RUDIONO","TETI HARYATI","1","");
INSERT INTO penduduk VALUES("2518","822","3211175701980001","LAILA FITHRIYYAH","SUMEDANG","1997 -17-01","","2","11","1","2","","4","2","3","1","ALI SUKARNO","MIMIN SITI FATIMAH","1","");
INSERT INTO penduduk VALUES("2519","822","3208176706140001","FELY ZAQIA ADELA PUTRI","KUNINGAN","2014 12:12:00-27-06","","2","11","1","1","","1","1","4","1","ADE KUSDIANA","LAILA FITHRIYYAH","1","");
INSERT INTO penduduk VALUES("2520","822","3208175110730006","TETI HARYATI","KUNINGAN","1973 -11-10","","2","11","1","2","","3","88","0","1","TARYANA","SARIAH","1","");
INSERT INTO penduduk VALUES("2521","823","3208170201720003","NARSA","KUNINGAN","1972 -02-01","","1","11","1","2","","3","9","1","1","MUDI","ASRI","1","");
INSERT INTO penduduk VALUES("2522","823","3208174207800002","MIMIN","KUNINGAN","1980 -02-07","","2","11","1","2","","3","2","3","1","UDIR","NONOH","1","");
INSERT INTO penduduk VALUES("2523","823","3208172805990005","GINANJAR","KUNINGAN","1999 -28-05","","1","11","1","1","","4","3","4","1","NARSA","MIMIN","1","");
INSERT INTO penduduk VALUES("2524","823","3208175305070001","NUR ALIYAH","KUNINGAN","2007 -13-05","","2","11","1","1","","0","3","4","1","NARSA","MIMIN","1","");
INSERT INTO penduduk VALUES("2525","824","3208172710770001","SUKIM","KUNINGAN","1977 -27-10","","1","11","1","2","","3","88","1","1","IWA","KARTINAH","1","");
INSERT INTO penduduk VALUES("2526","824","3208175502780005","IDAH ROSTIKA","KUNINGAN","1978 -15-02","","2","11","1","2","","3","2","3","1","SUTARDI","SARTINAH","1","");
INSERT INTO penduduk VALUES("2527","824","3208174311000005","MIA REPALINA","KUNINGAN","2000 -03-11","","2","11","1","1","","3","1","4","1","SUKIM","IDAH ROSTIKA","1","");
INSERT INTO penduduk VALUES("2528","824","3208175008060003","GITA ANGRAENI","KUNINGAN","2006 -10-08","","2","11","1","1","","0","1","4","1","SUKIM","IDAH ROSTIKA","1","");
INSERT INTO penduduk VALUES("2529","825","3208170810520002","TARYADI","KUNINGAN","1952 -08-10","","1","11","1","2","","3","9","1","1","SURA NEYAN","KAWIT","1","");
INSERT INTO penduduk VALUES("2530","825","3208175609540001","NANIH","KUNINGAN","1954 -16-09","","2","11","1","2","","3","2","3","1","WIRA ENONG","ROSITA","1","");
INSERT INTO penduduk VALUES("2531","825","3208172210780003","SAJA","KUNINGAN","1978 -22-10","","1","11","1","1","","3","9","4","1","TARYADI","NANIH","1","");
INSERT INTO penduduk VALUES("2532","826","3208174107810191","SUSILANATI","KUNINGAN","1981 -01-07","","2","11","1","2","","4","2","4","1","KUSMA","MISNAH","1","");
INSERT INTO penduduk VALUES("2533","826","3208170107780296","JUMADI","KUNINGAN","1978 -01-07","","1","11","1","2","","3","9","5","1","JUHENOI","EOCH","1","");
INSERT INTO penduduk VALUES("2534","826","3208170107000198","ADE IMAM","KUNINGAN","2000 -01-07","","1","11","1","1","","1","1","6","1","JUMACI","LINDAWATI","1","");
INSERT INTO penduduk VALUES("2535","827","3208174107470103","NARSIH","KUNINGAN","1947 -01-07","","2","11","1","2","","3","9","0","1","RAKSA","RUKMINAH","1","");
INSERT INTO penduduk VALUES("2536","827","3208170608010004","AGI PADILAH","KUNINGAN","2001 -06-08","","1","11","1","1","","1","1","9","1","ASLAH","EMAH","1","");
INSERT INTO penduduk VALUES("2537","827","3208170107860231","EMEN","KUNINGAN","1986 -01-07","","1","11","1","1","","3","9","9","1","NAJIP","NARSIN","1","");
INSERT INTO penduduk VALUES("2538","828","3208170306530003","MARYONO","KUNINGAN","1953 -03-06","","1","11","1","2","","3","9","1","1","WINANTA","JUMINTA","1","");
INSERT INTO penduduk VALUES("2539","828","3208174107600385","NARWITI","CIAMIS","1960 -01-07","","2","11","1","2","","3","2","3","1","SUDARYA","SASIH ","1","");
INSERT INTO penduduk VALUES("2540","829","3208171201530002","EMAN","KUNINGAN","1953 -12-01","","1","11","1","2","","3","9","1","1","JUMINTA","JANEN","1","");
INSERT INTO penduduk VALUES("2541","829","3208175502570005","ATIRAH","KUNINGAN","1957 -15-02","","2","11","1","2","","3","2","3","1","NATA ASLAM","KAWIS","1","");
INSERT INTO penduduk VALUES("2542","829","3208173001060001","GHATAN ANGGA RETA","KUNINGAN","2006 -30-01","","1","11","1","1","","1","1","6","1","ANDI","EROS ROSANAH","1","");
INSERT INTO penduduk VALUES("2543","830","3208171701280002","WINANTA","KUNINGAN","1928 -17-01","","1","11","1","2","","3","9","1","1","SARKA","SURTI","1","");
INSERT INTO penduduk VALUES("2544","830","3208174203410002","JUMINTA","KUNINGAN","1941 -02-03","","2","11","1","2","","3","9","3","1","SUSINTA","UTKI","1","");
INSERT INTO penduduk VALUES("2545","831","3208170710710001","AHDI","KUNINGAN","1971 -07-10","","1","11","1","2","","5","88","1","1","RASTAM","KASTIRAH","1","");
INSERT INTO penduduk VALUES("2546","831","3208174302720006","ARINING","KUNINGAN","1972 -03-02","","2","11","1","2","","3","2","3","1","WINARYO","SITI","1","");
INSERT INTO penduduk VALUES("2547","831","3208175909020005","IMA RAHMAWATI","KUNINGAN","2002 -19-09","","2","11","1","1","","0","3","4","1","AHDI ","ARINING","1","");
INSERT INTO penduduk VALUES("2548","831","3208174712540002","KASTIRAH","KUNINGAN","1954 -07-12","","2","11","1","4","","3","2","0","1","WIHANTA","IJOH","1","");
INSERT INTO penduduk VALUES("2549","832","3208172008460002","TAHROMI","KUNINGAN","1946 -20-08","","1","11","1","2","","3","9","1","1","WINANTA","IJOH","1","");
INSERT INTO penduduk VALUES("2550","832","3208175510540001","ONAH","KUNINGAN","1954 -15-10","","2","11","1","2","","3","2","3","1","JUHANDI","SITI","1","");
INSERT INTO penduduk VALUES("2551","833","3208170402380002","SUDARMAN","KUNINGAN","1938 -04-02","","1","11","1","2","","3","20","1","1","NARMAWI","JUNAH","1","");
INSERT INTO penduduk VALUES("2552","833","3208174906520002","KARSIH","KUNINGAN","1952 -09-06","","2","11","1","2","","3","2","3","1","SAHRONI","SARMAH","1","");
INSERT INTO penduduk VALUES("2553","833","3208171305840001","ARUMAN","KUNINGAN","1984 -13-05","","1","11","1","1","","4","19","4","1","SUDARMAN","KARSIH","1","");
INSERT INTO penduduk VALUES("2554","833","3208176206880001","TINI","KUNINGAN","1988 -22-06","","2","11","1","2","","4","19","5","1","SUKATNO","BONIAH","1","");
INSERT INTO penduduk VALUES("2555","833","3208176909050001","MILA TRI ANANDA","KUNINGAN","2005 -29-09","","2","11","1","1","","1","1","6","1","ARUMAN NUR IMANA","SUTINI","1","");
INSERT INTO penduduk VALUES("2556","834","3208170810550002","ASMAD","KUNINGAN","1955 -08-10","","1","11","1","2","","3","9","1","1","SUNINTA","YATNI","1","");
INSERT INTO penduduk VALUES("2557","834","3208174210580001","NANI","KUNINGAN","1958 -02-10","","2","11","1","2","","3","2","3","1","PADMA","SARNIAH","1","");
INSERT INTO penduduk VALUES("2558","834","3208172107950003","KUSMAN","KUNINGAN","1995 -21-07","","1","11","1","1","","3","1","4","1","ASMAD","NANI","1","");
INSERT INTO penduduk VALUES("2559","834","3208170401830005","SUHYANA","KUNINGAN","1983 -04-01","","1","11","1","1","","3","88","4","1","ASMAD","NANI","1","");
INSERT INTO penduduk VALUES("2560","834","3208171102800011","HARTONO","KUNINGAN","1980 -11-02","","1","11","1","1","","3","88","4","1","ASMAD","NANI","1","");
INSERT INTO penduduk VALUES("2561","834","3208174612860003","SURYANI","KUNINGAN","1986 -06-12","","2","11","1","2","","3","2","4","1","ASMAD","NANI","1","");
INSERT INTO penduduk VALUES("2562","834","3208176402100004","FEBIAN NURCAHYANI","KUNINGAN","2010 -24-02","","2","11","1","1","","1","1","6","1","DEDE APRIYANTO","SURYANI","1","");
INSERT INTO penduduk VALUES("2563","835","3208171102500003","SURYANA","KUNINGAN","1950 -11-02","","1","11","1","2","","3","9","1","1","SUARMI","NEYI","1","");
INSERT INTO penduduk VALUES("2564","835","3208174801610001","RUNTIAH","KUNINGAN","1961 -08-01","","2","11","1","2","","3","72","3","1","TARMAN","SANEM","1","");
INSERT INTO penduduk VALUES("2565","836","3208171002540007","MULYONO","KUNINGAN","1954 -10-02","","1","11","1","2","","3","9","1","1","SAHRONI","SARMAH","1","");
INSERT INTO penduduk VALUES("2566","836","3208174110580004","KARSIAH","KUNINGAN","1958 -01-10","","2","11","1","2","","3","2","3","1","SUNARDI","IJAH","1","");
INSERT INTO penduduk VALUES("2567","836","3208171206280001","SAHRONI","KUNINGAN","1928 -12-06","","1","11","1","4","","3","1","0","1","ATMA","JAYEM","1","");
INSERT INTO penduduk VALUES("2568","836","3208175005350004","IJAH","KUNINGAN","1935 -10-05","","2","11","1","4","","3","1","8","1","ASTA DINATA","NIRAH","1","");
INSERT INTO penduduk VALUES("2569","837","3208170704600002","HERMAN","KUNINGAN","1960 -07-04","","1","11","1","2","","3","9","1","1","SUNINTA","JANEN","1","");
INSERT INTO penduduk VALUES("2570","837","3208175507650002","YANIH","KUNINGAN","1965 -15-07","","2","11","1","2","","3","2","3","1","WIHANTA","IJOH","1","");
INSERT INTO penduduk VALUES("2571","837","3208172006930003","HERMAWAN","KUNINGAN","1993 -20-06","","1","11","1","1","","4","1","4","1","HERMAN","YANIH","1","");
INSERT INTO penduduk VALUES("2572","837","3208176504090003","SOPI NURAINI","KUNINGAN","2009 -25-04","","2","11","1","1","","1","1","6","1","NURHIDAYAT","IIN SUHARTINI","1","");
INSERT INTO penduduk VALUES("2573","838","3208170503430003","SUNANDI","KUNINGAN","1943 -05-03","","1","11","1","2","","3","9","1","1","ARWAJI","SUWI","1","");
INSERT INTO penduduk VALUES("2574","838","3208174107500283","RUNAH","KUNINGAN","1950 -01-07","","2","11","1","2","","3","2","3","1","RASTAM","JUHNI","1","");
INSERT INTO penduduk VALUES("2575","839","3208170107570142","SUGIMAN","KUNINGAN","1957 -01-07","","1","11","1","2","","3","9","1","1","WINANTA","JUMINTA","1","");
INSERT INTO penduduk VALUES("2576","839","3208174107600218","ARKILAH","KUNINGAN","1960 -01-07","","2","11","1","2","","3","2","3","1","SUKIRYA","SUTIRAH","1","");
INSERT INTO penduduk VALUES("2577","840","3208170402580002","DADI ARNADI","KUNINGAN","1958 -04-02","","1","11","1","2","","4","88","1","1","KARTAPRAJA","ARSAH","1","");
INSERT INTO penduduk VALUES("2578","840","3208175605750006","DEDE ANDRIANI","KUNINGAN","1975 -16-05","","2","11","1","2","","3","2","3","1","IKIN","ENGKAR","1","");
INSERT INTO penduduk VALUES("2579","840","3208176608890001","RITA PUSPITA DEWI","KUNINGAN","1989 -26-08","","2","11","1","1","","5","15","4","1","DADI ARNADI","SATINI","1","");
INSERT INTO penduduk VALUES("2580","840","3208176310930004","EVI OKTAVIANI","KUNINGAN","1993 -23-10","","2","11","1","1","","4","1","4","1","DADI ARNADI","DEDE ANDRIANI","1","");
INSERT INTO penduduk VALUES("2581","841","3208170506770007","MARKIM","KUNINGAN","1977 -05-06","","1","11","1","2","","3","88","1","1","SURYANA","RUNTI","1","");
INSERT INTO penduduk VALUES("2582","841","3208174410850001","EROSINI","KUNINGAN","1985 -04-10","","2","11","1","2","","3","2","3","1","RUSMEDI","OCOH","1","");
INSERT INTO penduduk VALUES("2583","841","3208172004130001","HARIS ALHAKIM","KUNINGAN","2013 -20-04","","1","11","1","1","","1","1","4","1","MARKIM","EROSINI","1","");
INSERT INTO penduduk VALUES("2584","842","3208170505900002","SAHNO NARJI","KUNINGAN","1990 -05-05","","1","11","1","2","","3","19","1","1","UDINTA","KIMOH","1","");
INSERT INTO penduduk VALUES("2585","842","3305155507960001","SITI SOLEKAH","KEBUMEN","1996 -15-07","","2","11","1","2","","4","2","3","1","SOLIKHIN","WIJI LISTIYOWATI","1","");
INSERT INTO penduduk VALUES("2586","843","3208170107830443","ARIS","KUNINGAN","1983 -01-07","","1","11","1","2","","3","84","1","1","SUNANDI","RUNAH","1","");
INSERT INTO penduduk VALUES("2587","843","3208174205890003","SUKISAH","KUNINGAN","1989 -02-05","","2","11","1","2","","3","2","3","1","RUSTANDI","SAONAH","1","");
INSERT INTO penduduk VALUES("2588","844","3208170507800008","AJAT SUDRAJAT","KUNINGAN","1980 -05-07","","1","11","1","2","","5","88","1","1","TAHROMI","ONAH","1","");
INSERT INTO penduduk VALUES("2589","844","3208175707850002","NUR HASANAH","KUNINGAN","1985 -17-07","","2","11","1","2","","3","2","3","1","SARWAN","SUNING","1","");
INSERT INTO penduduk VALUES("2590","844","3208175201080002","ANITA","KUNINGAN","2008 -12-01","","2","11","1","1","","1","1","4","1","AJAT SUDRAJAT","NUR HASANAH","1","");
INSERT INTO penduduk VALUES("2591","844","3208170705050001","ANDIKA SAPUTRA","KUNINGAN","2005 -07-05","","1","11","1","1","","1","1","4","1","AJAT SUDRAJAT","NUR HASANAH","1","");
INSERT INTO penduduk VALUES("2592","845","3208171009800003","NONO SUTARNA","KUNINGAN","1980 -10-09","","1","11","1","2","","4","88","1","1","MARYONO","NASIYAH","1","");
INSERT INTO penduduk VALUES("2593","845","3208176808870004","DEDEH WIDANINGSIH","KUNINGAN","1987 -28-08","","2","11","1","2","","4","2","3","1","DARMAN","NUNUNG","1","");
INSERT INTO penduduk VALUES("2594","845","3208174704080003","NENDEN APRILIANTI","KUNINGAN","2008 -07-04","","2","11","1","1","","0","3","4","1","NONO SUTARNA","DEDEH WIDANINGSIH","1","");
INSERT INTO penduduk VALUES("2595","846","3208171503840005","RIAN HIDAYAT","CIAMIS","1984 -15-03","","1","11","1","2","","4","88","1","1","MAMAN","ELA","1","");
INSERT INTO penduduk VALUES("2596","846","3208176103820001","ANISAH","KUNINGAN","1982 -21-03","","2","11","1","2","","4","2","3","1","SURYANA","RUNTIAH","1","");
INSERT INTO penduduk VALUES("2597","846","3208177012990002","PIPIT NUR PUTRIANI","KUNINGAN","1999 -30-12","","2","11","1","1","","1","1","4","1","TAUPIK","ANISAH","1","");
INSERT INTO penduduk VALUES("2598","847","3208171208730007","HERI ANWARI","KUNINGAN","1973 -12-08","","1","11","1","2","","3","88","1","1","SAHRUDIN","TIAH","1","");
INSERT INTO penduduk VALUES("2599","847","3208174909820004","KESIH","KUNINGAN","1982 -09-09","","2","11","1","2","","3","2","3","1","KIRNO","SACIH","1","");
INSERT INTO penduduk VALUES("2600","847","3208170512000003","REZA","KUNINGAN","2000 -05-12","","1","11","1","1","","0","3","4","1","HERI ANWARI","KESIH","1","");
INSERT INTO penduduk VALUES("2601","847","3208171010090003","RAFA OKTAVIANO","KUNINGAN","2009 -10-10","","1","11","1","1","","1","1","4","1","HERI ANWARI","KESIH","1","");
INSERT INTO penduduk VALUES("2602","848","3208171102700001","SUSANTO","KUNINGAN","1970 -11-02","","1","11","1","2","","3","9","1","1","SANUSI","KAPTI","1","");
INSERT INTO penduduk VALUES("2603","848","3208176008670001","NUNUNG","KUNINGAN","1967 -20-08","","2","11","1","2","","3","2","3","1","SUTARDI","KARNITA","1","");
INSERT INTO penduduk VALUES("2604","848","3208174702390001","KAPTI","KUNINGAN","1939 -07-02","","2","11","1","1","","3","1","0","1","-","-","1","");
INSERT INTO penduduk VALUES("2605","849","3208172802890005","IING SODIKIN","KUNINGAN","1989 -28-02","","1","11","1","2","","5","88","1","1","MULYONO","CIAH","1","");
INSERT INTO penduduk VALUES("2606","849","3208171702110001","FAISAL SALIHIN","KUNINGAN","2011 -17-02","","1","11","1","1","","1","1","4","1","IING SODIKIN","OMI KUSMIATI","1","");
INSERT INTO penduduk VALUES("2607","850","3208170508430003","UDINTA","KUNINGAN","1943 -05-08","","1","11","1","2","","3","20","1","1","SUBANDI","MARSITI","1","");
INSERT INTO penduduk VALUES("2608","850","3208175011650004","KIMOH","KUNINGAN","1965 -10-11","","2","11","1","2","","3","2","3","1","SUNARYA","ACAH URI","1","");
INSERT INTO penduduk VALUES("2609","851","3208171811770001","MAMAN","KUNINGAN","1977 -18-11","","1","11","1","2","","3","20","1","1","MARYONO","NASIAH","1","");
INSERT INTO penduduk VALUES("2610","851","3208175008820003","ARTINI","KUNINGAN","1982 -10-08","","2","11","1","2","","3","2","3","1","SAMSUDIN","NASIAH","1","");
INSERT INTO penduduk VALUES("2611","851","3208175502980009","ANI NOVIANI","KUNINGAN","1998 -15-02","","2","11","1","1","","3","1","4","1","MAMAN","ARTINI","1","");
INSERT INTO penduduk VALUES("2612","851","3208170205050008","ADI HERDIANA","KUNINGAN","2005 -02-05","","1","11","1","1","","0","1","4","1","MAMAN","ARTINI","1","");
INSERT INTO penduduk VALUES("2613","851","3208174211110001","NURAINI","KUNINGAN","2011 -02-11","","2","11","1","1","","1","1","4","1","MAMAN","ARTINI","1","");
INSERT INTO penduduk VALUES("2614","852","3208170107650152","MULYADI","KUNINGAN","1965 -01-07","","1","11","1","2","","3","8","1","1","WARTA","UKINAH","1","");
INSERT INTO penduduk VALUES("2615","853","3208170107680164","SARNO","KUNINGAN","1968 -01-07","","1","11","1","2","","3","9","1","1","WINIRTA","SARMAH","1","");
INSERT INTO penduduk VALUES("2616","853","3208174107750218","NINING","KUNINGAN","1975 -01-07","","2","11","1","2","","3","9","3","1","SUHYONO","MARNAH","1","");
INSERT INTO penduduk VALUES("2617","853","3208172509040002","AMIRUDIN","KUNINGAN","2004 -25-09","","1","11","1","1","","1","1","4","1","SARNO","NINING","1","");
INSERT INTO penduduk VALUES("2618","854","3208170107630319","IDI","KUNINGAN","1963 -01-07","","1","11","1","2","","3","9","1","1","WIJANTA","SANTIP","1","");
INSERT INTO penduduk VALUES("2619","854","3208176006680008","ARNING","KUNINGAN","1968 -20-06","","2","11","1","2","","3","2","3","1","NURWA","NESTI","1","");
INSERT INTO penduduk VALUES("2620","854","3208171806890003","MARDI","KUNINGAN","1989 -18-06","","1","11","1","1","","4","88","4","1","IDI","ARNING","1","");
INSERT INTO penduduk VALUES("2621","855","3208174107510131","ACIH","KUNINGAN","1951 -01-07","","2","11","1","4","","0","9","1","1","HATOMI","TARYI","1","");
INSERT INTO penduduk VALUES("2622","856","3208170107580277","SAHRIDI","KUNINGAN","1938 -01-07","","1","11","1","2","","3","20","1","1","MISTARA","JARNI","1","");
INSERT INTO penduduk VALUES("2623","856","3208174107430300","RASITA","KUNINGAN","1939 -01-07","","2","11","1","2","","3","2","3","1","SURA NAYA","KAWIT","1","");
INSERT INTO penduduk VALUES("2624","857","3208174107380189","EMOH","KUNINGAN","1938 -01-07","","2","11","1","4","","3","2","1","1","-","-","1","");
INSERT INTO penduduk VALUES("2625","858","3208175506580005","NASIH","KUNINGAN","1958 -15-06","","2","11","1","2","","3","9","1","1","KASJU","TAWAT","1","");
INSERT INTO penduduk VALUES("2626","859","3208170302690004","JAHRI","CIAMIS","1969 -03-02","","1","11","1","2","","3","88","1","1","WARO","CARWI","1","");
INSERT INTO penduduk VALUES("2627","859","3208174407770003","NANI NARMIAH","KUNINGAN","1977 -04-07","","2","11","1","2","","3","2","3","1","NASAB","SUNAH","1","");
INSERT INTO penduduk VALUES("2628","859","3208171407950009","JUANDA","KUNINGAN","1995 -14-07","","1","11","1","1","","0","1","4","1","JAHRI","NANI NARMIAH","1","");
INSERT INTO penduduk VALUES("2629","859","3208177003050001","ANA LESTARI","KUNINGAN","2005 -30-03","","2","11","1","1","","1","1","4","1","JAHRI","NANI NARMIAH","1","");
INSERT INTO penduduk VALUES("2630","860","3208170107620169","SUEB","KUNINGAN","1962 -01-07","","1","11","1","2","","3","9","1","1","TARMAN","SANEM","1","");
INSERT INTO penduduk VALUES("2631","860","3208176601760003","YOYOH","KUNINGAN","1976 -26-01","","2","11","1","2","","5","2","3","1","KOHARI","EDAH","1","");
INSERT INTO penduduk VALUES("2632","860","3208172010960004","SAEFUL ANWAR","KUNINGAN","1996 -20-10","","1","11","1","1","","4","3","4","1","SUEB","YOYOH","1","");
INSERT INTO penduduk VALUES("2633","860","3208170107060007","RIPTAN","KUNINGAN","2006 -01-07","","1","11","1","1","","1","1","6","1","ENJEN","YUYU","1","");
INSERT INTO penduduk VALUES("2634","861","3208171011920003","YUSUP SUPRIADI","KUNINGAN","1992 -10-11","","1","11","1","1","","3","15","9","1","MIHARDI","AMINAH","1","");
INSERT INTO penduduk VALUES("2635","862","3208170107380141","SUNANTA","KUNINGAN","1938 -01-07","","1","11","1","2","","3","9","1","1","SUWITRA","MANEN","1","");
INSERT INTO penduduk VALUES("2636","862","3208176005440003","SARNAH","KUNINGAN","1944 -20-05","","2","11","1","2","","3","2","3","1","KARTA","SAPTI","1","");
INSERT INTO penduduk VALUES("2637","863","3208171011590003","KUSNADI","KUNINGAN","1959 -10-11","","1","11","1","2","","3","20","1","1","NADI","UTIN","1","");
INSERT INTO penduduk VALUES("2638","863","3208175705650002","TITIN","KUNINGAN","1965 -17-05","","2","11","1","2","","3","2","3","1","JARWO","UMSIH","1","");
INSERT INTO penduduk VALUES("2639","863","3208170407910003","AJAT SUDRAJAT","KUNINGAN","1991 -04-07","","1","11","1","1","","5","1","4","1","KUSNADI","TITIN","1","");
INSERT INTO penduduk VALUES("2640","864","3208171508450001","MUHAMAD HOLIL","KUNINGAN","1945 -15-08","","1","11","1","2","","3","15","1","1","-","-","1","");
INSERT INTO penduduk VALUES("2641","864","3208174203500002","IRUS RUSMINI","KUNINGAN","1950 -02-03","","2","11","1","2","","3","2","3","1","-","-","1","");
INSERT INTO penduduk VALUES("2642","865","3208175012410002","ENOH","KUNINGAN","1941 -10-12","","2","11","1","2","","3","9","1","1","KARTOMI","ENTEN","1","");
INSERT INTO penduduk VALUES("2643","866","3210032107780001","NANDI KUSNIADI","MAJALENGKA","1982 -21-01","","1","11","1","2","","3","88","1","1","YUSNADI","IJAH","1","");
INSERT INTO penduduk VALUES("2644","866","3210035908760001","SATINAH","MAJALENGKA","1980 -06-07","","2","11","1","2","","3","2","3","1","SUHARMAN","INAH","1","");
INSERT INTO penduduk VALUES("2645","866","3210031308020002","BAGUS NUGRAHA","MAJALENGKA","2002 -13-08","","1","11","1","1","","0","3","4","1","NANDI KUSNIADI","SATINAH","1","");
INSERT INTO penduduk VALUES("2646","866","3208174307090001","SESILIA ANDINI","MAJALENGKA","2009 -03-07","","2","11","1","1","","1","1","4","1","NANDI KUSNIADI","SATINAH","1","");
INSERT INTO penduduk VALUES("2647","866","3210037006980002","INDAH ANDRIATIN","MAJALENGKA","1998 -30-06","","2","11","1","1","","3","19","4","1","NANDI KUSNIADI","SATINAH","1","");
INSERT INTO penduduk VALUES("2648","867","3208170810680003","HARYANTO","KUNINGAN","1968 -08-10","","1","11","1","2","","3","9","1","1","SUDINTA","NETRA","1","");
INSERT INTO penduduk VALUES("2649","867","3208175212780001","KUSMI","KUNINGAN","1978 -12-12","","2","11","1","2","","3","2","3","1","SANHARI","YONAH","1","");
INSERT INTO penduduk VALUES("2650","867","3208172501980001","ANDRIANA","KUNINGAN","1997 -25-01","","1","11","1","1","","3","1","4","1","HERYANTO","KUSMI","1","");
INSERT INTO penduduk VALUES("2651","867","3208170109070003","IYAN SEPTIANA","KUNINGAN","2007 -01-09","","1","11","1","1","","1","1","4","1","HANDI HARYANTO","KUSMI","1","");
INSERT INTO penduduk VALUES("2654","1","24234","dfgjd","sdfgs","2015-03-16","sdfgsdfg","1","1","1","1","sdfg","1","17","2","0","sdfg","sdfg","1","6427921484535231.jpg");
INSERT INTO penduduk VALUES("2655","1","ghkhgjl","hjgfhj","fgjh","2015-03-16","dgfh","1","1","1","1","dfgh","1","17","1","1","dfgh","dfhg","1","6128231484535989.jpg");
INSERT INTO penduduk VALUES("2656","1","uyhj","hgjfgjh","fgjh","2015-03-16","dfgh","1","1","1","1","dfgh","1","17","2","0","sdfg","sdfg","1","338751484536086.jpg");



DROP TABLE sk;

CREATE TABLE `sk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jns_sk` int(11) NOT NULL,
  `no` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `id_kk` int(11) NOT NULL,
  `nik` int(11) NOT NULL,
  `keperluan` text NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE status_kawin;

CREATE TABLE `status_kawin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO status_kawin VALUES("1","BELUM KAWIN");
INSERT INTO status_kawin VALUES("2","KAWIN");
INSERT INTO status_kawin VALUES("3","CERAI HIDUP");
INSERT INTO status_kawin VALUES("4","CERAI MATI");



DROP TABLE surtamasuk;

CREATE TABLE `surtamasuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `no_surat` varchar(200) NOT NULL,
  `tanggal_surat` varchar(200) NOT NULL,
  `pengirim` varchar(200) NOT NULL,
  `isi_singkat` text NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE temp_items;

CREATE TABLE `temp_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jns` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `value` varchar(200) NOT NULL,
  `desa` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=565 DEFAULT CHARSET=latin1;

INSERT INTO temp_items VALUES("2","1","Kode","no_srt","admin");
INSERT INTO temp_items VALUES("469","43","Rincian dokumen yang berbeda","rincian_beda_dokumen","3205181001");
INSERT INTO temp_items VALUES("468","43","Dokumen yang Berbeda","jenis_beda_dokumen","3205181001");
INSERT INTO temp_items VALUES("11","2","Kode Surat","no_srt","1");
INSERT INTO temp_items VALUES("342","2","Nagari Tujuan","desatujuan","1303080004");
INSERT INTO temp_items VALUES("14","3","Kode Surat","no_srt","1");
INSERT INTO temp_items VALUES("216","3","NIP","nip","1303060001");
INSERT INTO temp_items VALUES("215","3","Jabatan","jabatan","1303060001");
INSERT INTO temp_items VALUES("214","3","Nama Penandatangan","nm_ttd","1303060001");
INSERT INTO temp_items VALUES("21","4","Kode Surat","no_srt","1");
INSERT INTO temp_items VALUES("22","4","Tempat","tempat","1");
INSERT INTO temp_items VALUES("23","4","Alamat Tempat","alamattempat","1");
INSERT INTO temp_items VALUES("24","5","Kode Surat","no_srt","1");
INSERT INTO temp_items VALUES("278","5","Suku Pemohon","suku","1303060001");
INSERT INTO temp_items VALUES("27","7","Kode Surat","no_srt","1");
INSERT INTO temp_items VALUES("28","7","Bidang Usaha","jenisusaha","1");
INSERT INTO temp_items VALUES("29","9","Kode Surat","no_srt","1");
INSERT INTO temp_items VALUES("30","9","Tujuan","tujuan","1");
INSERT INTO temp_items VALUES("85","7","Tahun Berdiri","tahunberdiri","1303040002");
INSERT INTO temp_items VALUES("341","2","Alamat Tujuan","alamattujuan","1303080004");
INSERT INTO temp_items VALUES("33","6","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("34","8","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("35","8","Nama Calon Terdahulu","nama_calondahulu","1303040002");
INSERT INTO temp_items VALUES("36","8","Nama Calon Istri","namaistri","1303040002");
INSERT INTO temp_items VALUES("37","8","Tempat lahir istri","tmplhristri","1303040002");
INSERT INTO temp_items VALUES("38","8","Tanggal lahir","tgllhristri","1303040002");
INSERT INTO temp_items VALUES("39","8","Kewarganegaraan","wrgistri","1303040002");
INSERT INTO temp_items VALUES("40","8","Pekerjaan","pekerjaanistri","1303040002");
INSERT INTO temp_items VALUES("41","8","Tempat tinggal","alamatistri","1303040002");
INSERT INTO temp_items VALUES("42","10","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("245","10","a.n","an","1303060001");
INSERT INTO temp_items VALUES("44","11","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("361","11","An.","an","1303080004");
INSERT INTO temp_items VALUES("47","12","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("267","12","Nama Penandatangan","nm_ttd","1303060001");
INSERT INTO temp_items VALUES("49","13","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("379","13","An. ","an","1303080004");
INSERT INTO temp_items VALUES("51","13","Alamat","alamat_bangunan","1303040002");
INSERT INTO temp_items VALUES("52","14","Kode","no_srt","1303040002");
INSERT INTO temp_items VALUES("53","14","Jenis Surat","jenissurat","1303040002");
INSERT INTO temp_items VALUES("54","14","Nama di Surat","namadisurat","1303040002");
INSERT INTO temp_items VALUES("55","15","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("56","17","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("57","17","Tujuan","tujuan","1303040002");
INSERT INTO temp_items VALUES("58","17","Pengikut","pengikut","1303040002");
INSERT INTO temp_items VALUES("59","19","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("60","19","Jenis Usaha","jenisusaha","1303040002");
INSERT INTO temp_items VALUES("61","19","Merek ","merek","1303040002");
INSERT INTO temp_items VALUES("62","19","Luas Tempat Usaha","luastempatusaha","1303040002");
INSERT INTO temp_items VALUES("63","19","Alamat Usaha","alamatusaha","1303040002");
INSERT INTO temp_items VALUES("64","20","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("294","20","a.n","an","1303060001");
INSERT INTO temp_items VALUES("295","20","Nama Penandatangan","nm_ttd","1303060001");
INSERT INTO temp_items VALUES("296","20","Jabatan","jabatan","1303060001");
INSERT INTO temp_items VALUES("297","20","NIP","nip","1303060001");
INSERT INTO temp_items VALUES("69","21","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("467","43","Tujuan Surat untuk","tujuan_surat","3205181001");
INSERT INTO temp_items VALUES("88","22","Jabatan","jabatan","1303040002");
INSERT INTO temp_items VALUES("73","8","Status Calon Laki-laki","statuscalon","1303040002");
INSERT INTO temp_items VALUES("74","13","Luas Bangunan","luas","1303040002");
INSERT INTO temp_items VALUES("75","18","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("86","22","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("87","22","Pangkat","pangkat","1303040002");
INSERT INTO temp_items VALUES("340","2","Jabatan","jabatan","1303080004");
INSERT INTO temp_items VALUES("339","2","Nip.","nip","1303080004");
INSERT INTO temp_items VALUES("338","2","Penandatangan","nm_ttd","1303080004");
INSERT INTO temp_items VALUES("337","2","An","an","1303080004");
INSERT INTO temp_items VALUES("89","22","NRP/NBI/NIP","nip","1303040002");
INSERT INTO temp_items VALUES("90","22","Nomor Pensiun","nopensiun","1303040002");
INSERT INTO temp_items VALUES("91","22","Gaji Pokok","gapok","1303040002");
INSERT INTO temp_items VALUES("92","22","Masa Kerja","masakerja","1303040002");
INSERT INTO temp_items VALUES("93","6","Nama Pewaris","pewaris","1303040002");
INSERT INTO temp_items VALUES("94","23","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("95","23","Umur Istri","umuristri","1303040002");
INSERT INTO temp_items VALUES("96","23","Umur Suami","umursuami","1303040002");
INSERT INTO temp_items VALUES("97","25","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("98","25","Bulan dan Tahun Hilang","bulanhilang","1303040002");
INSERT INTO temp_items VALUES("99","24","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("230","24","a.n","an","1303060001");
INSERT INTO temp_items VALUES("101","26","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("102","26","Jenis Ternak","jenisternak","1303040002");
INSERT INTO temp_items VALUES("103","26","Jenis Kelamin","jkternak","1303040002");
INSERT INTO temp_items VALUES("104","26","Umur","umur","1303040002");
INSERT INTO temp_items VALUES("105","26","Warna Bulu","warna","1303040002");
INSERT INTO temp_items VALUES("106","26","Tanduk","tanduk","1303040002");
INSERT INTO temp_items VALUES("107","26","Pusar-Pusar","pusar","1303040002");
INSERT INTO temp_items VALUES("108","26","Tanda-tanda lain","tandalain","1303040002");
INSERT INTO temp_items VALUES("109","26","Asal Ternak","asalternak","1303040002");
INSERT INTO temp_items VALUES("110","26","Dibawa ke","dibawake","1303040002");
INSERT INTO temp_items VALUES("111","27","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("204","27","a.n","an","1303060001");
INSERT INTO temp_items VALUES("113","28","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("114","28","Tahun Nikah","tahunnikah","1303040002");
INSERT INTO temp_items VALUES("115","28","Tempat Nikah","tmpnikah","1303040002");
INSERT INTO temp_items VALUES("116","23","Hari Cerai","haricerai","1303040002");
INSERT INTO temp_items VALUES("117","23","Tanggal Cerai","tglcerai","1303040002");
INSERT INTO temp_items VALUES("118","29","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("119","29","Jenis Tanah","tanah","1303040002");
INSERT INTO temp_items VALUES("120","29","Alamat Tanah","alamattanah","1303040002");
INSERT INTO temp_items VALUES("121","29","Nomor Sertifikat","nosertifikat","1303040002");
INSERT INTO temp_items VALUES("122","29","Luas","luas","1303040002");
INSERT INTO temp_items VALUES("123","29","Nama di Sertifkat","namasertifikat","1303040002");
INSERT INTO temp_items VALUES("126","29","Tujuan","tujuan","1303040002");
INSERT INTO temp_items VALUES("127","30","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("128","30","Pengurus","pengurus","1303040002");
INSERT INTO temp_items VALUES("129","30","Program","program","1303040002");
INSERT INTO temp_items VALUES("130","30","Hari","hari","1303040002");
INSERT INTO temp_items VALUES("131","30","Jam","jam","1303040002");
INSERT INTO temp_items VALUES("274","5","a.n","an","1303060001");
INSERT INTO temp_items VALUES("275","5","Nama Penandatangan","nm_ttd","1303060001");
INSERT INTO temp_items VALUES("276","5","Jabatan","jabatan","1303060001");
INSERT INTO temp_items VALUES("137","31","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("138","31","Umur","umur","1303040002");
INSERT INTO temp_items VALUES("139","31","Suku","suku","1303040002");
INSERT INTO temp_items VALUES("140","31","Tanah","tanah","1303040002");
INSERT INTO temp_items VALUES("141","31","Alamat Tanah","alamattanah","1303040002");
INSERT INTO temp_items VALUES("142","31","Banyak","banyak","1303040002");
INSERT INTO temp_items VALUES("143","31","Jumlah Benih","jmlbenih","1303040002");
INSERT INTO temp_items VALUES("144","31","Utara","utara","1303040002");
INSERT INTO temp_items VALUES("145","31","Selatan","selatan","1303040002");
INSERT INTO temp_items VALUES("146","31","Timur","timur","1303040002");
INSERT INTO temp_items VALUES("147","31","Barat","barat","1303040002");
INSERT INTO temp_items VALUES("148","31","Nama Gadai","namagadai","1303040002");
INSERT INTO temp_items VALUES("149","31","Umur Gadai","umurgadai","1303040002");
INSERT INTO temp_items VALUES("150","31","Suku Gadai","sukugadai","1303040002");
INSERT INTO temp_items VALUES("151","31","Pekerjaan Gadai","pekerjaangadai","1303040002");
INSERT INTO temp_items VALUES("152","31","Alamat Gadai","alamatgadai","1303040002");
INSERT INTO temp_items VALUES("153","31","Banyak Gadai","banyakgadai","1303040002");
INSERT INTO temp_items VALUES("154","32","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("155","32","Alamat Tanah","alamattanah","1303040002");
INSERT INTO temp_items VALUES("156","32","Luas","luas","1303040002");
INSERT INTO temp_items VALUES("157","32","Utara","utara","1303040002");
INSERT INTO temp_items VALUES("158","32","Selatan","selatan","1303040002");
INSERT INTO temp_items VALUES("159","32","Timur","timur","1303040002");
INSERT INTO temp_items VALUES("160","32","Barat","barat","1303040002");
INSERT INTO temp_items VALUES("161","32","Nama Pembeli","namabeli","1303040002");
INSERT INTO temp_items VALUES("162","32","Umur Pembeli","umurbeli","1303040002");
INSERT INTO temp_items VALUES("163","32","Suku Pembeli","sukubeli","1303040002");
INSERT INTO temp_items VALUES("164","32","Pekerjaan Pembeli","pekerjaanbeli","1303040002");
INSERT INTO temp_items VALUES("165","32","Alamat Pembeli","alamatbeli","1303040002");
INSERT INTO temp_items VALUES("166","33","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("167","33","Umur","umur","1303040002");
INSERT INTO temp_items VALUES("168","33","Suku","suku","1303040002");
INSERT INTO temp_items VALUES("169","33","Alamat Tanah","alamattanah","1303040002");
INSERT INTO temp_items VALUES("170","33","Luas","luas","1303040002");
INSERT INTO temp_items VALUES("171","33","Utara","utara","1303040002");
INSERT INTO temp_items VALUES("172","33","Selatan","selatan","1303040002");
INSERT INTO temp_items VALUES("173","33","Timur","timur","1303040002");
INSERT INTO temp_items VALUES("174","33","Barat","barat","1303040002");
INSERT INTO temp_items VALUES("175","33","Nama Hibah","namahibah","1303040002");
INSERT INTO temp_items VALUES("176","33","Umur Hibah","umurhibah","1303040002");
INSERT INTO temp_items VALUES("177","33","Suku Hibah","sukuhibah","1303040002");
INSERT INTO temp_items VALUES("178","33","Pekerjaan HIbah","pekerjaanhibah","1303040002");
INSERT INTO temp_items VALUES("179","33","Alamat Hibah","alamathibah","1303040002");
INSERT INTO temp_items VALUES("277","5","NIP","nip","1303060001");
INSERT INTO temp_items VALUES("181","32","Umur Penjual","umur","1303040002");
INSERT INTO temp_items VALUES("182","32","Suku Penjual","suku","1303040002");
INSERT INTO temp_items VALUES("183","4","Tanggal Berdiri","tglberdiri","1303040002");
INSERT INTO temp_items VALUES("266","12","a.n","an","1303060001");
INSERT INTO temp_items VALUES("187","35","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("186","34","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("188","35","Alasan","alasan","1303040002");
INSERT INTO temp_items VALUES("189","35","Alamat Pindah","alamatpindah","1303040002");
INSERT INTO temp_items VALUES("190","35","RT","erte","1303040002");
INSERT INTO temp_items VALUES("191","35","RW","erwe","1303040002");
INSERT INTO temp_items VALUES("192","35","Desa Tujuan","desapindah","1303040002");
INSERT INTO temp_items VALUES("193","35","Kec Tujuan","kecpindah","1303040002");
INSERT INTO temp_items VALUES("194","35","Kabupaten Pindah","kabpindah","1303040002");
INSERT INTO temp_items VALUES("195","35","Provinsi Tujuan","provpindah","1303040002");
INSERT INTO temp_items VALUES("196","35","Kode Pos","kodepospindah","1303040002");
INSERT INTO temp_items VALUES("197","35","Telp Pindah","telppindah","1303040002");
INSERT INTO temp_items VALUES("198","35","Klasifikasi pindah","klasifikasi","1303040002");
INSERT INTO temp_items VALUES("199","35","Jenis Pindah","jenispindah","1303040002");
INSERT INTO temp_items VALUES("200","35","Status KK","statuskk","1303040002");
INSERT INTO temp_items VALUES("201","35","Status","statusnokk","1303040002");
INSERT INTO temp_items VALUES("202","35","Tanggal Pindah","tglpindah","1303040002");
INSERT INTO temp_items VALUES("203","36","Kode Surat","no_srt","1303040002");
INSERT INTO temp_items VALUES("206","27","Penandatangan","nm_ttd","1303060001");
INSERT INTO temp_items VALUES("207","27","NIP","nip","1303060001");
INSERT INTO temp_items VALUES("208","18","a.n","an","1303060001");
INSERT INTO temp_items VALUES("209","18","Nama Penandatangan","nm_ttd","1303060001");
INSERT INTO temp_items VALUES("210","18","Jabatan","jabatan","1303060001");
INSERT INTO temp_items VALUES("211","18","NIP","nip","1303060001");
INSERT INTO temp_items VALUES("212","18","Suku Pemohon","suku","1303060001");
INSERT INTO temp_items VALUES("218","3","Tanggal Meninggal","tgl_meninggal","1303060001");
INSERT INTO temp_items VALUES("219","3","Tempat Meninggal","tmp_meninggal","1303060001");
INSERT INTO temp_items VALUES("220","3","Dikebumikan di","tmp_dikebumikan","1303060001");
INSERT INTO temp_items VALUES("221","3","Hubungan dengan pelapor","hub_pelapor","1303060001");
INSERT INTO temp_items VALUES("222","3","Nama Pelapor","namap","1303060001");
INSERT INTO temp_items VALUES("223","3","Tempat, Tanggal Lahir Pelapor","tgl_lhrp","1303060001");
INSERT INTO temp_items VALUES("224","3","Jenis Kelamin Pelapor","jkp","1303060001");
INSERT INTO temp_items VALUES("225","21","a.n","an","1303060001");
INSERT INTO temp_items VALUES("226","21","Nama Penandatangan","nm_ttd","1303060001");
INSERT INTO temp_items VALUES("228","21","NIP","nip","1303060001");
INSERT INTO temp_items VALUES("229","21","Tujuan Surat untuk","tujuan_srt","1303060001");
INSERT INTO temp_items VALUES("231","24","Nama Penandatangan","nm_ttd","1303060001");
INSERT INTO temp_items VALUES("232","24","Jabatan","jabatan","1303060001");
INSERT INTO temp_items VALUES("233","24","NIP","nip","1303060001");
INSERT INTO temp_items VALUES("234","24","Besar Penghasilan","penghasilan","1303060001");
INSERT INTO temp_items VALUES("354","6","Tempat Meninggal","tempatmeninggal","1303080004");
INSERT INTO temp_items VALUES("353","6","Waktu Meninggal","waktumeninggal","1303080004");
INSERT INTO temp_items VALUES("238","37","Kode Surat","no_srt","1303060001");
INSERT INTO temp_items VALUES("239","37","a.n","an","1303060001");
INSERT INTO temp_items VALUES("240","37","Nama Penandatangan","nm_ttd","1303060001");
INSERT INTO temp_items VALUES("241","37","Jabatan","jabatan","1303060001");
INSERT INTO temp_items VALUES("242","37","NIP","nip","1303060001");
INSERT INTO temp_items VALUES("243","37","Laporan pada Hari","hari_tgl","1303060001");
INSERT INTO temp_items VALUES("244","37","Jenis Keterangan","namaketerangan","1303060001");
INSERT INTO temp_items VALUES("246","10","Nama Penandatangan","nm_ttd","1303060001");
INSERT INTO temp_items VALUES("247","10","Jabatan","jabatan","1303060001");
INSERT INTO temp_items VALUES("248","10","NIP","nip","1303060001");
INSERT INTO temp_items VALUES("335","10","Nama Sekolah","nmsekolah","1303080004");
INSERT INTO temp_items VALUES("336","10","Pekerjaan Anak","pekerjaan_siswa","1303080004");
INSERT INTO temp_items VALUES("252","38","Kode Surat","no_srt","1303060001");
INSERT INTO temp_items VALUES("253","38","a.n","an","1303060001");
INSERT INTO temp_items VALUES("254","38","Nama Penandatangan","nm_ttd","1303060001");
INSERT INTO temp_items VALUES("255","38","Jabatan","jabatan","1303060001");
INSERT INTO temp_items VALUES("256","38","NIP","nip","1303060001");
INSERT INTO temp_items VALUES("343","2","Kecamatan Tujuan","kectujuan","1303080004");
INSERT INTO temp_items VALUES("258","39","Kode Surat","no_srt","1303060001");
INSERT INTO temp_items VALUES("259","39","a.n","an","1303060001");
INSERT INTO temp_items VALUES("260","39","Nama Penandatangan","nm_ttd","1303060001");
INSERT INTO temp_items VALUES("261","39","Jabatan","jabatan","1303060001");
INSERT INTO temp_items VALUES("262","39","NIP","nip","1303060001");
INSERT INTO temp_items VALUES("263","39","Nama Pelapor","pelapor","1303060001");
INSERT INTO temp_items VALUES("264","39","Hari dan Tanggal","hari_tgl","1303060001");
INSERT INTO temp_items VALUES("265","39","Keterangan","keterangan","1303060001");
INSERT INTO temp_items VALUES("269","12","NIP","nip","1303060001");
INSERT INTO temp_items VALUES("270","12","Hari Kehilangan","harihilang","1303060001");
INSERT INTO temp_items VALUES("271","12","Nama Barang yang Hilang","barang_hilang","1303060001");
INSERT INTO temp_items VALUES("327","12","Tanggal Hilang","tglhilang","1303080004");
INSERT INTO temp_items VALUES("279","5","Jenis Kenduri","jeniskenduri","1303060001");
INSERT INTO temp_items VALUES("280","5","Hari Kenduri","hari_kenduri","1303060001");
INSERT INTO temp_items VALUES("281","5","Pukul","pukul","1303060001");
INSERT INTO temp_items VALUES("282","5","Tempat Kenduri","tempat","1303060001");
INSERT INTO temp_items VALUES("283","5","Banyaknya Masyarakat","banyak","1303060001");
INSERT INTO temp_items VALUES("284","40","Kode Surat","no_srt","1303060001");
INSERT INTO temp_items VALUES("285","40","a.n","an","1303060001");
INSERT INTO temp_items VALUES("286","40","Nama Penandatangan","nm_ttd","1303060001");
INSERT INTO temp_items VALUES("287","40","Jabatan","jabatan","1303060001");
INSERT INTO temp_items VALUES("288","40","NIP","nip","1303060001");
INSERT INTO temp_items VALUES("289","40","Status","janda_duda","1303060001");
INSERT INTO temp_items VALUES("290","40","Jenis Kelamin Mantan","laki_perempuan","1303060001");
INSERT INTO temp_items VALUES("352","40","Nama Mantan","nm_mantan","1303080004");
INSERT INTO temp_items VALUES("298","20","Status Pemohon","status","1303060001");
INSERT INTO temp_items VALUES("299","20","Suku Pemohon","suku","1303060001");
INSERT INTO temp_items VALUES("300","20","NIK Pasangan","nikp","1303060001");
INSERT INTO temp_items VALUES("301","20","Nama Pasangan","namap","1303060001");
INSERT INTO temp_items VALUES("302","20","Tmpt, Tgl Lahir Pasangan","tmp_lhrp","1303060001");
INSERT INTO temp_items VALUES("303","20","Jenis Kelamin Pasangan","jkp","1303060001");
INSERT INTO temp_items VALUES("304","20","Status Pasangan","status_kawinp","1303060001");
INSERT INTO temp_items VALUES("305","20","Pekerjaan Pasangan","pekerjaanp","1303060001");
INSERT INTO temp_items VALUES("306","20","Agama Pasangan","agamap","1303060001");
INSERT INTO temp_items VALUES("307","20","Suku Pasangan","sukup","1303060001");
INSERT INTO temp_items VALUES("308","20","Alamat Pasangan","alamatp","1303060001");
INSERT INTO temp_items VALUES("309","41","Kode","no_srt","1303060001");
INSERT INTO temp_items VALUES("310","41","a.n","an","1303060001");
INSERT INTO temp_items VALUES("311","41","Nama Penandatangan","nm_ttd","1303060001");
INSERT INTO temp_items VALUES("312","41","Jabatan","jabatan","1303060001");
INSERT INTO temp_items VALUES("313","41","NIP","nip","1303060001");
INSERT INTO temp_items VALUES("385","41","Sampe dengan Tanggal","smp_dgn","3205181001");
INSERT INTO temp_items VALUES("383","41","Berpergian Ke","pergi_ke","3205181001");
INSERT INTO temp_items VALUES("384","41","Berlaku dari Tanggal","berlaku","3205181001");
INSERT INTO temp_items VALUES("356","6","Dikebumikan di","tempatdikubur","1303080004");
INSERT INTO temp_items VALUES("355","6","Dikebumikan pada","waktudikubur","1303080004");
INSERT INTO temp_items VALUES("324","0","","","1303060001");
INSERT INTO temp_items VALUES("325","42","Kode Surat","no_srt","1303060001");
INSERT INTO temp_items VALUES("326","27","Tujuan Surat","tujuansurat","1303080004");
INSERT INTO temp_items VALUES("328","12","Tempat Kehilangan","tmphilang","1303080004");
INSERT INTO temp_items VALUES("329","7","Tempat Usaha","tempatusaha","1303080004");
INSERT INTO temp_items VALUES("330","7","An.","an","1303080004");
INSERT INTO temp_items VALUES("331","7","Penandatangan","nm_ttd","1303080004");
INSERT INTO temp_items VALUES("332","7","Jabatan","jabatan","1303080004");
INSERT INTO temp_items VALUES("333","7","Nip.","nip","1303080004");
INSERT INTO temp_items VALUES("334","18","Tujuan Surat SKCK","tujuanskck","1303080004");
INSERT INTO temp_items VALUES("344","2","Kabupaten Tujuan","kabtujuan","1303080004");
INSERT INTO temp_items VALUES("345","2","Alasan Pindah","alasan","1303080004");
INSERT INTO temp_items VALUES("346","2","Tanggal Pindah","tglpindah","1303080004");
INSERT INTO temp_items VALUES("347","2","Jumlah Pengikut","pengikut","1303080004");
INSERT INTO temp_items VALUES("348","3","Agama Pelapor","agamap","1303080004");
INSERT INTO temp_items VALUES("349","3","Pekerjaan Pelapor","pekerjaanp","1303080004");
INSERT INTO temp_items VALUES("350","3","Alamat Pelapor","alamatp","1303080004");
INSERT INTO temp_items VALUES("351","3","NIK Pelapor","nikp","1303080004");
INSERT INTO temp_items VALUES("357","6","An","an","1303080004");
INSERT INTO temp_items VALUES("358","6","Penandatangan","nm_ttd","1303080004");
INSERT INTO temp_items VALUES("359","6","Jabatan","jabatan","1303080004");
INSERT INTO temp_items VALUES("360","6","Nip.","nip","1303080004");
INSERT INTO temp_items VALUES("363","11","Penandatangan","nm_ttd","1303080004");
INSERT INTO temp_items VALUES("414","43","Kode Surat","no_srt","3205181001");
INSERT INTO temp_items VALUES("466","1","Nama Anak","nama_anak","3205181001");
INSERT INTO temp_items VALUES("465","1","Jenis Kelamin Anak","jk_anak","3205181001");
INSERT INTO temp_items VALUES("464","1","Nip.","nip","3205181001");
INSERT INTO temp_items VALUES("463","1","Penandatangan","nm_ttd","3205181001");
INSERT INTO temp_items VALUES("462","1","an.","an","3205181001");
INSERT INTO temp_items VALUES("461","1","Tempat Kelahiran","tempat_kelahiran","3205181001");
INSERT INTO temp_items VALUES("460","1","Jam Lahir","jam_lahir","3205181001");
INSERT INTO temp_items VALUES("459","1","Tanggal Lahir","tanggal_lahir","3205181001");
INSERT INTO temp_items VALUES("458","1","Hari Lahir","hari_lahir","3205181001");
INSERT INTO temp_items VALUES("380","13","Penandatangan","nm_ttd","1303080004");
INSERT INTO temp_items VALUES("381","13","Nip.","nip","1303080004");
INSERT INTO temp_items VALUES("382","13","Jabatan","jabatan","1303080004");
INSERT INTO temp_items VALUES("386","41","Pengikut","pengikut","3205181001");
INSERT INTO temp_items VALUES("387","41","No","no1","3205181001");
INSERT INTO temp_items VALUES("388","41","Nama Lengkap","nm_lkp1","3205181001");
INSERT INTO temp_items VALUES("389","41","Jenis Kelamin L","l1","3205181001");
INSERT INTO temp_items VALUES("390","41","Jenis Kelamin P","p1","3205181001");
INSERT INTO temp_items VALUES("391","41","Status Kawin","stskwn1","3205181001");
INSERT INTO temp_items VALUES("392","41","Hub Keluarga","hk1","3205181001");
INSERT INTO temp_items VALUES("395","41","Umur","umr1","3205181001");
INSERT INTO temp_items VALUES("394","41","Keterangan","ket","3205181001");
INSERT INTO temp_items VALUES("397","42","an","an","3205181001");
INSERT INTO temp_items VALUES("398","42","Penandatangan Surat","nm_ttd","3205181001");
INSERT INTO temp_items VALUES("399","42","Jabatan","jabatan","3205181001");
INSERT INTO temp_items VALUES("400","42","NIP","nip","3205181001");
INSERT INTO temp_items VALUES("401","42","Nama Lengkap Pelapor","nm_pelapor","3205181001");
INSERT INTO temp_items VALUES("402","42","NIK Pelapor","nik_pelapor","3205181001");
INSERT INTO temp_items VALUES("403","42","Umur","umur_pelapor","3205181001");
INSERT INTO temp_items VALUES("404","42","Pekerjaan","p_pelapor","3205181001");
INSERT INTO temp_items VALUES("405","42","Alamat","alamat_pelapor","3205181001");
INSERT INTO temp_items VALUES("406","42","Hubungan dengan yang mati","hub","3205181001");
INSERT INTO temp_items VALUES("407","42","Hari","hari","3205181001");
INSERT INTO temp_items VALUES("408","42","Tanggal Meninggal","tgl_mati","3205181001");
INSERT INTO temp_items VALUES("409","42","Jam Meninggal","pukul","3205181001");
INSERT INTO temp_items VALUES("410","42","Bertempat di","di","3205181001");
INSERT INTO temp_items VALUES("411","42","Penyebab Kematian","penyebab","3205181001");
INSERT INTO temp_items VALUES("412","42","Bukti Kematian","bukti","3205181001");
INSERT INTO temp_items VALUES("413","42","Umur yang Meninggal","umur_mngl","3205181001");
INSERT INTO temp_items VALUES("415","44","Nomor Surat","no_srt","3205181001");
INSERT INTO temp_items VALUES("416","44","Tujuan Surat untuk","tujuan_srt","3205181001");
INSERT INTO temp_items VALUES("417","44","Masa Berlaku Surat","masa_berlaku","3205181001");
INSERT INTO temp_items VALUES("418","44","Kode Pos","kode_pos","3205181001");
INSERT INTO temp_items VALUES("419","44","an.","an","3205181001");
INSERT INTO temp_items VALUES("420","44","Penandatangan","nm_ttd","3205181001");
INSERT INTO temp_items VALUES("421","21","Masa Berlaku Surat","masa_berlaku","3205181001");
INSERT INTO temp_items VALUES("422","45","Nomor Surat","no_srt","3205181001");
INSERT INTO temp_items VALUES("423","45","Tujuan Surat untuk","tujuan_srt","3205181001");
INSERT INTO temp_items VALUES("424","45","Masa Berlaku Surat","masa_berlaku","3205181001");
INSERT INTO temp_items VALUES("425","45","an.","an","3205181001");
INSERT INTO temp_items VALUES("426","45","Penandatangan","nm_ttd","3205181001");
INSERT INTO temp_items VALUES("427","45","Nip.","nip","3205181001");
INSERT INTO temp_items VALUES("428","46","Nomor","no_srt","3205181001");
INSERT INTO temp_items VALUES("429","46","Hari Meninggal","hari_meninggal","3205181001");
INSERT INTO temp_items VALUES("430","46","Tanggal Meninggal","tgl_meninggal","3205181001");
INSERT INTO temp_items VALUES("431","46","Jam","pukul_meninggal","3205181001");
INSERT INTO temp_items VALUES("432","46","Tempat Meninggal di","tempat_meninggal","3205181001");
INSERT INTO temp_items VALUES("433","46","Sebab Kematian","sebab_kematian","3205181001");
INSERT INTO temp_items VALUES("434","46","Nama Pelapor","nama_pelapor","3205181001");
INSERT INTO temp_items VALUES("435","46","No. NIK Pelapor","nik_pelapor","3205181001");
INSERT INTO temp_items VALUES("436","46","Umur Pelapor","umur_pelapor","3205181001");
INSERT INTO temp_items VALUES("437","46","Pekerjaan Pelapor","pekerjaan_pelapor","3205181001");
INSERT INTO temp_items VALUES("438","46","Alamat Pelapor","alamat_pelapor","3205181001");
INSERT INTO temp_items VALUES("439","46","Hubungan dengan yg mati","hub","3205181001");
INSERT INTO temp_items VALUES("440","46","an.","an","3205181001");
INSERT INTO temp_items VALUES("441","46","Penandatangan","nm_ttd","3205181001");
INSERT INTO temp_items VALUES("442","46","Nip.","nip","3205181001");
INSERT INTO temp_items VALUES("443","47","Nomor Surat","no_srt","3205181001");
INSERT INTO temp_items VALUES("444","47","Hari Meninggal","hari_meninggal","3205181001");
INSERT INTO temp_items VALUES("445","47","Tanggal Meninggal","tgl_meninggal","3205181001");
INSERT INTO temp_items VALUES("446","47","Jam Meninggal","pukul_meninggal","3205181001");
INSERT INTO temp_items VALUES("447","47","Tempat Meninggal di","tempat_meninggal","3205181001");
INSERT INTO temp_items VALUES("448","47","Sebab Kematian","sebab_kematian","3205181001");
INSERT INTO temp_items VALUES("449","47","Nama Pelapor","nm_plpr","3205181001");
INSERT INTO temp_items VALUES("450","47","Nik Pelapor","nik_plpr","3205181001");
INSERT INTO temp_items VALUES("451","47","Umur Pelapor","umr_plpr","3205181001");
INSERT INTO temp_items VALUES("452","47","Pekerjaan","pekerjaan_plpr","3205181001");
INSERT INTO temp_items VALUES("453","47","Alamat Pelapor","alamat_plpr","3205181001");
INSERT INTO temp_items VALUES("454","47","Hubungan dengan yg mati","hub","3205181001");
INSERT INTO temp_items VALUES("455","47","an.","an","3205181001");
INSERT INTO temp_items VALUES("456","47","Penandatangan","nm_ttd","3205181001");
INSERT INTO temp_items VALUES("457","47","Nip.","nip","3205181001");
INSERT INTO temp_items VALUES("470","43","an.","an","3205181001");
INSERT INTO temp_items VALUES("471","43","Penandatangan","nm_ttd","3205181001");
INSERT INTO temp_items VALUES("472","43","Nip.","nip","3205181001");
INSERT INTO temp_items VALUES("473","48","Nomor Surat","no_srt","3205181001");
INSERT INTO temp_items VALUES("474","48","Nama Anak (surat 1)","nama_anak","3205181001");
INSERT INTO temp_items VALUES("475","48","Tujuan Surat untuk","tujuan_surat","3205181001");
INSERT INTO temp_items VALUES("476","48","Masa Berlaku Surat","masa_berlaku","3205181001");
INSERT INTO temp_items VALUES("477","48","an.","an","3205181001");
INSERT INTO temp_items VALUES("478","48","Penandatangan","nm_ttd","3205181001");
INSERT INTO temp_items VALUES("479","48","Nip.","nip","3205181001");
INSERT INTO temp_items VALUES("480","48","Sekolah / Jurusan","nama_sekolah","3205181001");
INSERT INTO temp_items VALUES("481","49","Nomor Surat","no_srt","3205181001");
INSERT INTO temp_items VALUES("482","49","Jenis Usaha","jenis_usaha","3205181001");
INSERT INTO temp_items VALUES("483","49","Penghasilan Rata-rata","penghasilan","3205181001");
INSERT INTO temp_items VALUES("484","49","Tujuan Surat untuk","tujuan_surat","3205181001");
INSERT INTO temp_items VALUES("485","49","Masa Berlaku Surat","masa_berlaku","3205181001");
INSERT INTO temp_items VALUES("486","49","an.","an","3205181001");
INSERT INTO temp_items VALUES("487","49","Penandatangan","nm_ttd","3205181001");
INSERT INTO temp_items VALUES("488","49","Nip.","nip","3205181001");
INSERT INTO temp_items VALUES("489","50","Nomor Surat","no_srt","3205181001");
INSERT INTO temp_items VALUES("490","50","Waktu Pelaksanaan","waktu_pelaksanaan","3205181001");
INSERT INTO temp_items VALUES("491","50","Maksud dan Tujuan","maksud_tujuan","3205181001");
INSERT INTO temp_items VALUES("492","50","Nama camat","nm_camat","3205181001");
INSERT INTO temp_items VALUES("493","50","Nip Camat","nip_camat","3205181001");
INSERT INTO temp_items VALUES("494","50","an.","an","3205181001");
INSERT INTO temp_items VALUES("495","50","Penandatangan","nm_ttd","3205181001");
INSERT INTO temp_items VALUES("496","50","Nip.","nip","3205181001");
INSERT INTO temp_items VALUES("497","51","Nomor Surat","no_srt","3205181001");
INSERT INTO temp_items VALUES("498","51","Tujuan Surat untuk","tujuan_surat","3205181001");
INSERT INTO temp_items VALUES("499","51","Masa Berlaku Surat","masa_berlaku","3205181001");
INSERT INTO temp_items VALUES("500","51","an.","an","3205181001");
INSERT INTO temp_items VALUES("501","51","Penandatangan","nm_ttd","3205181001");
INSERT INTO temp_items VALUES("502","51","Nip.","nip","3205181001");
INSERT INTO temp_items VALUES("503","51","Kode Pos","kode_pos","3205181001");
INSERT INTO temp_items VALUES("504","11","Jabatan","jabatan","3205181001");
INSERT INTO temp_items VALUES("505","52","Kode Surat","no_srt","3205181001");
INSERT INTO temp_items VALUES("506","52","Nama Penandatangan","nm_ttd","3205181001");
INSERT INTO temp_items VALUES("507","53","Kode Surat","no_srt","3208010001");
INSERT INTO temp_items VALUES("508","53","Nama Penandatangan Surat","nm_ttd","3208010001");
INSERT INTO temp_items VALUES("509","53","a.n","an","3208010001");
INSERT INTO temp_items VALUES("510","53","Dok Yang Hilang","dok_hilang","3208010001");
INSERT INTO temp_items VALUES("511","54","Kode Surat","no_srt","3208010001");
INSERT INTO temp_items VALUES("512","54","Nama Penandatangan Surat","nm_ttd","3208010001");
INSERT INTO temp_items VALUES("513","54","a.n","an","3208010001");
INSERT INTO temp_items VALUES("514","55","Kode Surat","no_srt","3208010001");
INSERT INTO temp_items VALUES("515","55","Nama Penandatangan Surat","nm_ttd","3208010001");
INSERT INTO temp_items VALUES("516","55","a.n","an","3208010001");
INSERT INTO temp_items VALUES("517","56","Kode Surat","no_srt","3208010001");
INSERT INTO temp_items VALUES("518","57","Kode Surat","no_srt","3208010001");
INSERT INTO temp_items VALUES("519","57","Nama Penandatangan Surat","nm_ttd","3208010001");
INSERT INTO temp_items VALUES("520","57","a.n","an","3208010001");
INSERT INTO temp_items VALUES("521","57","Hari dan Tanggal Meninggal","pdhtgl","3208010001");
INSERT INTO temp_items VALUES("522","57","Dimakamkan","dimakamkan","3208010001");
INSERT INTO temp_items VALUES("523","57","Dusun","dusun","3208010001");
INSERT INTO temp_items VALUES("524","58","Kode Surat","no_srt","3208010001");
INSERT INTO temp_items VALUES("525","58","Nama Penandatangan Surat","nm_ttd","3208010001");
INSERT INTO temp_items VALUES("526","58","a.n","an","3208010001");
INSERT INTO temp_items VALUES("527","58","Hari dan Tanggal Cara","htglacara","3208010001");
INSERT INTO temp_items VALUES("528","58","Waktu Acara","waktu","3208010001");
INSERT INTO temp_items VALUES("529","58","Kegiatan","keg","3208010001");
INSERT INTO temp_items VALUES("530","58","Acara","acara","3208010001");
INSERT INTO temp_items VALUES("531","59","Kode Surat","no_srt","3208010001");
INSERT INTO temp_items VALUES("532","60","Kode Surat","no_srt","3208010001");
INSERT INTO temp_items VALUES("533","60","Nama Penandatangan Surat","nm_ttd","3208010001");
INSERT INTO temp_items VALUES("534","60","a.n","an","3208010001");
INSERT INTO temp_items VALUES("535","60"," tercantum di","tercantum1","3208010001");
INSERT INTO temp_items VALUES("536","60","Nama di Surat","namadi1","3208010001");
INSERT INTO temp_items VALUES("537","60","Tercantum di \"","tercantum2","3208010001");
INSERT INTO temp_items VALUES("538","60","Nama di Surat \"","namadi2","3208010001");
INSERT INTO temp_items VALUES("539","61","Kode Surat","no_srt","3208010001");
INSERT INTO temp_items VALUES("540","61","Nama Penandatangan Surat","nm_ttd","3208010001");
INSERT INTO temp_items VALUES("541","61","a.n","an","3208010001");
INSERT INTO temp_items VALUES("542","61","Pekerjaan Sebagai","sebagai","3208010001");
INSERT INTO temp_items VALUES("543","62","Kode Surat","no_srt","3208010001");
INSERT INTO temp_items VALUES("544","62","Nama Penandatangan Surat","nm_ttd","3208010001");
INSERT INTO temp_items VALUES("545","62","no 1","1","3208010001");
INSERT INTO temp_items VALUES("546","62","Nama kayu 1","kayu1","3208010001");
INSERT INTO temp_items VALUES("547","62","Meter 1","m1","3208010001");
INSERT INTO temp_items VALUES("548","62","Jumlah Batang 1","btng1","3208010001");
INSERT INTO temp_items VALUES("549","62","keterangan 1","ket1","3208010001");
INSERT INTO temp_items VALUES("550","62","No. 2","2","3208010001");
INSERT INTO temp_items VALUES("551","62","Nama Kayu 2","kayu2","3208010001");
INSERT INTO temp_items VALUES("552","62","Jumlah Meter (M3) -2","m2","3208010001");
INSERT INTO temp_items VALUES("553","62","Jumlah Batang 2","btng2","3208010001");
INSERT INTO temp_items VALUES("554","62","keterangan 2","ket2","3208010001");
INSERT INTO temp_items VALUES("555","62","No. 3","3","3208010001");
INSERT INTO temp_items VALUES("556","62","Nama Kayu 3","kayu3","3208010001");
INSERT INTO temp_items VALUES("557","62","Jumlah Meter (M3) -3","m3","3208010001");
INSERT INTO temp_items VALUES("558","62","Jumlah Batang 3","btng3","3208010001");
INSERT INTO temp_items VALUES("559","62","keterangan 3","ket3","3208010001");
INSERT INTO temp_items VALUES("560","62","Tujuan Pengiriman","ke","3208010001");
INSERT INTO temp_items VALUES("561","62","Angkutan yg Membawanya","mbl","3208010001");
INSERT INTO temp_items VALUES("562","62","No POL","nopol","3208010001");
INSERT INTO temp_items VALUES("563","62","Nama Sopir","supir","3208010001");
INSERT INTO temp_items VALUES("564","64","Nomor Surat","nomorsurat","3208010001");



DROP TABLE temp_sk;

CREATE TABLE `temp_sk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jns` int(11) NOT NULL,
  `kode` varchar(150) NOT NULL,
  `id_desa` varchar(100) NOT NULL,
  `no_srt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;




DROP TABLE temp_srt;

CREATE TABLE `temp_srt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jns` int(11) NOT NULL,
  `nik` bigint(20) NOT NULL,
  `nosrt` varchar(100) NOT NULL,
  `id_temp` varchar(75) NOT NULL,
  `value` text NOT NULL,
  `tglsrt` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

INSERT INTO temp_srt VALUES("1","59","3208174107820399","141/2/ Pemdes/VII-2016","531","141/2/ Pemdes/VII-2016","2016-07-28");
INSERT INTO temp_srt VALUES("2","57","3208170107780457","471/5/Pemdes/VII-2016","518","471/5/Pemdes/VII-2016","2016-07-28");
INSERT INTO temp_srt VALUES("3","57","3208170107780457","471/5/Pemdes/VII-2016","519","Ajeng","2016-07-28");
INSERT INTO temp_srt VALUES("4","57","3208170107780457","471/5/Pemdes/VII-2016","520","","2016-07-28");
INSERT INTO temp_srt VALUES("5","57","3208170107780457","471/5/Pemdes/VII-2016","521","Senin, 12 Jan 2016","2016-07-28");
INSERT INTO temp_srt VALUES("6","57","3208170107780457","471/5/Pemdes/VII-2016","522","ditempat","2016-07-28");
INSERT INTO temp_srt VALUES("7","57","3208170107780457","471/5/Pemdes/VII-2016","523","Solok","2016-07-28");
INSERT INTO temp_srt VALUES("8","45","3208174304650004","15/2/25/25/VII-2016","422","15/2/25/25/VII-2016","2016-07-28");
INSERT INTO temp_srt VALUES("9","45","3208174304650004","15/2/25/25/VII-2016","423","mantan","2016-07-28");
INSERT INTO temp_srt VALUES("10","45","3208174304650004","15/2/25/25/VII-2016","424","12-04-2016","2016-07-28");
INSERT INTO temp_srt VALUES("11","45","3208174304650004","15/2/25/25/VII-2016","425","","2016-07-28");
INSERT INTO temp_srt VALUES("12","45","3208174304650004","15/2/25/25/VII-2016","426","bapa","2016-07-28");
INSERT INTO temp_srt VALUES("13","45","3208174304650004","15/2/25/25/VII-2016","427","077777","2016-07-28");
INSERT INTO temp_srt VALUES("14","27","3208170704880003","100/8/SK-BM/NKTGG/VII-2016","111","100/8/SK-BM/NKTGG/VII-2016","2016-07-28");
INSERT INTO temp_srt VALUES("15","27","3208170704880003","100/8/SK-BM/NKTGG/VII-2016","204","","2016-07-28");
INSERT INTO temp_srt VALUES("16","27","3208170704880003","100/8/SK-BM/NKTGG/VII-2016","206","ujang","2016-07-28");
INSERT INTO temp_srt VALUES("17","27","3208170704880003","100/8/SK-BM/NKTGG/VII-2016","207","","2016-07-28");
INSERT INTO temp_srt VALUES("18","27","3208170704880003","100/8/SK-BM/NKTGG/VII-2016","326","untuk menikah","2016-07-28");
INSERT INTO temp_srt VALUES("19","53","3208170303780007","141/2/ Pemdes/VII-2016","507","141/2/ Pemdes/VII-2016","2016-07-28");
INSERT INTO temp_srt VALUES("20","53","3208170303780007","141/2/ Pemdes/VII-2016","508","yusriyyah","2016-07-28");
INSERT INTO temp_srt VALUES("21","53","3208170303780007","141/2/ Pemdes/VII-2016","509","","2016-07-28");
INSERT INTO temp_srt VALUES("22","53","3208170303780007","141/2/ Pemdes/VII-2016","510","Surat Nikah dengan No. 123456789","2016-07-28");
INSERT INTO temp_srt VALUES("23","53","3208170107010212","141/3/ Pemdes/VII-2016","507","141/3/ Pemdes/VII-2016","2016-07-28");
INSERT INTO temp_srt VALUES("24","53","3208170107010212","141/3/ Pemdes/VII-2016","508","Ajeng","2016-07-28");
INSERT INTO temp_srt VALUES("25","53","3208170107010212","141/3/ Pemdes/VII-2016","509","","2016-07-28");
INSERT INTO temp_srt VALUES("26","53","3208170107010212","141/3/ Pemdes/VII-2016","510","Akta Kelahiran","2016-07-28");
INSERT INTO temp_srt VALUES("27","41","3208170107661055","474/12/DS.2011/VII-2016","309","474/12/DS.2011/VII-2016","2016-07-28");
INSERT INTO temp_srt VALUES("28","41","3208170107661055","474/12/DS.2011/VII-2016","310","","2016-07-28");
INSERT INTO temp_srt VALUES("29","41","3208170107661055","474/12/DS.2011/VII-2016","311","KOMAR","2016-07-28");
INSERT INTO temp_srt VALUES("30","41","3208170107661055","474/12/DS.2011/VII-2016","312","lurah","2016-07-28");
INSERT INTO temp_srt VALUES("31","41","3208170107661055","474/12/DS.2011/VII-2016","313","","2016-07-28");
INSERT INTO temp_srt VALUES("32","41","3208170107661055","474/12/DS.2011/VII-2016","385","12 juli 2016","2016-07-28");
INSERT INTO temp_srt VALUES("33","41","3208170107661055","474/12/DS.2011/VII-2016","383","malaysia","2016-07-28");
INSERT INTO temp_srt VALUES("34","41","3208170107661055","474/12/DS.2011/VII-2016","384","12 Januari 2016","2016-07-28");
INSERT INTO temp_srt VALUES("35","41","3208170107661055","474/12/DS.2011/VII-2016","386","safitri","2016-07-28");
INSERT INTO temp_srt VALUES("36","41","3208170107661055","474/12/DS.2011/VII-2016","387","","2016-07-28");
INSERT INTO temp_srt VALUES("37","41","3208170107661055","474/12/DS.2011/VII-2016","388","","2016-07-28");
INSERT INTO temp_srt VALUES("38","41","3208170107661055","474/12/DS.2011/VII-2016","389","","2016-07-28");
INSERT INTO temp_srt VALUES("39","41","3208170107661055","474/12/DS.2011/VII-2016","390","","2016-07-28");
INSERT INTO temp_srt VALUES("40","41","3208170107661055","474/12/DS.2011/VII-2016","391","","2016-07-28");
INSERT INTO temp_srt VALUES("41","41","3208170107661055","474/12/DS.2011/VII-2016","392","","2016-07-28");
INSERT INTO temp_srt VALUES("42","41","3208170107661055","474/12/DS.2011/VII-2016","395","","2016-07-28");
INSERT INTO temp_srt VALUES("43","41","3208170107661055","474/12/DS.2011/VII-2016","394","","2016-07-28");
INSERT INTO temp_srt VALUES("44","44","3208174910640001","550/3/55/55/VII-2016","415","550/3/55/55/VII-2016","2016-07-28");
INSERT INTO temp_srt VALUES("45","44","3208174910640001","550/3/55/55/VII-2016","416","kecamatan","2016-07-28");
INSERT INTO temp_srt VALUES("46","44","3208174910640001","550/3/55/55/VII-2016","417","2 tahun","2016-07-28");
INSERT INTO temp_srt VALUES("47","44","3208174910640001","550/3/55/55/VII-2016","418","","2016-07-28");
INSERT INTO temp_srt VALUES("48","44","3208174910640001","550/3/55/55/VII-2016","419","","2016-07-28");
INSERT INTO temp_srt VALUES("49","44","3208174910640001","550/3/55/55/VII-2016","420","yeti","2016-07-28");
INSERT INTO temp_srt VALUES("50","11","3208170107661055","474/22/DS.2011/XI-2016","44","474/22/DS.2011/XI-2016","2016-11-01");
INSERT INTO temp_srt VALUES("51","11","3208170107661055","474/22/DS.2011/XI-2016","361","jk","2016-11-01");
INSERT INTO temp_srt VALUES("52","11","3208170107661055","474/22/DS.2011/XI-2016","363","gjhk","2016-11-01");
INSERT INTO temp_srt VALUES("53","11","3208170107661055","474/22/DS.2011/XI-2016","504","jkghjk","2016-11-01");
INSERT INTO temp_srt VALUES("54","11","3208170107661055","474/23/DS.2011/XI-2016","44","474/23/DS.2011/XI-2016","2016-11-01");
INSERT INTO temp_srt VALUES("55","11","3208170107661055","474/23/DS.2011/XI-2016","361","jk","2016-11-01");
INSERT INTO temp_srt VALUES("56","11","3208170107661055","474/23/DS.2011/XI-2016","363","gjhk","2016-11-01");
INSERT INTO temp_srt VALUES("57","11","3208170107661055","474/23/DS.2011/XI-2016","504","jkghjk","2016-11-01");
INSERT INTO temp_srt VALUES("58","64","3208170107661055","900/ 2 /DISPORA/2017V-2017","564","","2017-05-10");
INSERT INTO temp_srt VALUES("59","11","3208170107661055","474/24/DS.2011/V-2017","44","474/24/DS.2011/V-2017","2017-05-10");
INSERT INTO temp_srt VALUES("60","11","3208170107661055","474/24/DS.2011/V-2017","361","Bandung","2017-05-10");
INSERT INTO temp_srt VALUES("61","11","3208170107661055","474/24/DS.2011/V-2017","363","fgdf","2017-05-10");
INSERT INTO temp_srt VALUES("62","11","3208170107661055","474/24/DS.2011/V-2017","504","44112","2017-05-10");
INSERT INTO temp_srt VALUES("63","11","3208170107661055","474/25/DS.2011/V-2017","44","474/25/DS.2011/V-2017","2017-05-10");
INSERT INTO temp_srt VALUES("64","11","3208170107661055","474/25/DS.2011/V-2017","361","Bandung","2017-05-10");
INSERT INTO temp_srt VALUES("65","11","3208170107661055","474/25/DS.2011/V-2017","363","fgdf","2017-05-10");
INSERT INTO temp_srt VALUES("66","11","3208170107661055","474/25/DS.2011/V-2017","504","44112","2017-05-10");
INSERT INTO temp_srt VALUES("67","27","3208170107661055","100/9/SK-BM/NKTGG/V-2017","111","100/9/SK-BM/NKTGG/V-2017","2017-05-17");
INSERT INTO temp_srt VALUES("68","27","3208170107661055","100/9/SK-BM/NKTGG/V-2017","204","","2017-05-17");
INSERT INTO temp_srt VALUES("69","27","3208170107661055","100/9/SK-BM/NKTGG/V-2017","206","","2017-05-17");
INSERT INTO temp_srt VALUES("70","27","3208170107661055","100/9/SK-BM/NKTGG/V-2017","207","","2017-05-17");
INSERT INTO temp_srt VALUES("71","27","3208170107661055","100/9/SK-BM/NKTGG/V-2017","326","","2017-05-17");
INSERT INTO temp_srt VALUES("72","64","0","900/ 3 /DISPORA/2017V-2017","564","","2017-05-29");



DROP TABLE users;

CREATE TABLE `users` (
  `id` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `id_kab` int(11) NOT NULL,
  `id_kec` int(11) NOT NULL,
  `id_desa` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `hp` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ket` varchar(7) NOT NULL,
  `level` varchar(100) NOT NULL,
  `banner` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO users VALUES("3208010001","admin","admin","1","11","3208010001","Cimenga","","","","Y","admin","4386291477965633.jpg");



DROP TABLE wrg_ngr;

CREATE TABLE `wrg_ngr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO wrg_ngr VALUES("1","WNI");
INSERT INTO wrg_ngr VALUES("2","WNA");



