<?php
    include 'koneksi.php';
    if ($_SESSION) {
        $nama = $_SESSION["nama"];
    }
    else 
        header("Location: login.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/login.css">
    <link rel="stylesheet" type="text/css" href="assets/fontawesome/css/all.min.css">
</head>
<body>
    <?php include 'layout/navbar.php';?>
</html>