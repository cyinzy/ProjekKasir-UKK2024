<?php
include_once("../koneksi/koneksi.php");

if (isset($_POST['update'])) 
{
    $id = $_GET['ProdukID'];
    $ProdukID = $_GET['ProdukID'];
    $NamaProduk = $_POST['NamaProduk'];
    $Harga = $_POST['Harga'];
    $stok = $_POST['Stok'];

    $result = mysqli_query($con, "UPDATE produk SET NamaProduk='$NamaProduk', Harga=$Harga, Stok=$stok WHERE ProdukID=$id");

    header ("Location: index.php?page=stok");
}

$id = $_GET['ProdukID'];

$result1 = mysqli_query($con, "SELECT * FROM produk WHERE ProdukID=$id");

while($user_data = mysqli_fetch_array($result1))
{
	$name = $user_data['NamaProduk'];
	$harga = $user_data['Harga'];
    $stok = $user_data['Stok'];

}
?>


        <div class="col-md-12">
            <div class="card well">
                <div class="card-header">
                    <h3 class="">Update Barang</h3>
                </div>
                <div class="card-body">
                    <form class="pt-3 mt-3" action="" method="post">
                        <div class="form-group">
                            <p class="col-form-label" for="">Nama Produk</p>
                            <input type="text" name="NamaProduk" class="form-control" value="<?php echo $name; ?>" id="" placeholder="Enter Nama Barang">
                        </div>
                        <div class="row">
                            <div class="form-group col-sm-6">
                                <p class="col-form-label" for="">Harga</p>
                                <input type="number" name="Harga" class="form-control" value="<?php echo $harga; ?>" id="" placeholder="Enter Harga">
                            </div>
                            <div class="form-group col-sm-6">
                                <p class="col-form-label" for="">Stok</p>
                                <input type="number" name="Stok" class="form-control" value="<?php echo $stok; ?>" id="" placeholder="Enter Stok">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <button class="btn btn-block btn-primary" name="update">Edit Produk</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>