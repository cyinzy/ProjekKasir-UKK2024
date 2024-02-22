<?php
$server = "localhost";
$username = "root";
$password = "";
$database = "kasir";
$con = new mysqli ($server,$username,$password,$database);


if (!$con) {
    die('Maaf koneksi Gagal');
}
?>