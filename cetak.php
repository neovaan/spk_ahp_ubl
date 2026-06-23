<?php include 'functions.php'; ?>
<!DOCTYPE html>
<html>

<head>
    <title>Cetak Laporan</title>
    <style>
        body {
            font-family: "Times New Roman", Times, serif;
            font-size: 12px;
            color: #333;
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }

        h1, h2, h3 {
            text-align: center;
            margin: 0;
            padding: 10px 0;
        }

        h1 {
            font-size: 18px;
            text-transform: uppercase;
            border-bottom: 2px solid #000;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        h1 img {
            margin-right: 10px;
        }

        h2 {
            font-size: 16px;
            text-transform: uppercase;
            margin-bottom: 10px;
        }

        h3 {
            font-size: 14px;
            text-transform: uppercase;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            font-size: 12px;
        }

        th, td {
            border: 1px solid #000;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        .header {
            margin-bottom: 20px;
        }

        .footer {
            text-align: right;
            margin-top: 30px;
            font-size: 12px;
        }

        .footer p {
            margin: 0;
        }

        .wrapper {
            width: 90%;
            margin: 0 auto;
            padding: 20px;
        }
    </style>
</head>

<body onload="window.print()">
    <div class="wrapper">
        <div class="header">
            <h1><img src="assets/img/kasep.png" alt="Logo" width="80" height="80">PT Kasep Literasi Konoha</h1>
            <h2>Laporan Penilaian Pegawai</h2>
            <h3>Periode: Januari - Desember 2024</h3>
        </div>
        <div class="content">
            <?php
            if (is_file($mod . '_cetak.php'))
                include $mod . '_cetak.php';
            ?>
        </div>
        <div class="footer">
            <p>Mengetahui,</p>
            <p>Direktur Utama</p>
            <br><br><br>
            <p><strong>(Kasep_Code)</strong></p>
        </div>
    </div>
</body>

</html>
