<?php
include_once("../koneksi/koneksi.php");

if (isset($_POST['update'])) {
    $id = $_GET['idproduk'];
    $name = $_POST['namaproduk'];
    $harga = $_POST['harga'];
    $stok = $_POST['stok'];

    $result = mysql_query($con, "UPDATE produk SET namaproduk='$name', harga=$harga, stok=$stok WHERE idproduk=$id");

    header ("Location: index.php?page=stok");
}

$id = $_GET['ProdukID'];

$result1 = mysqli_query($con, "SELECT * FROM")
?>