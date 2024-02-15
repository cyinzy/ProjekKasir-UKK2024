<?php
session_start();
include "../koneksi/koneksi.php";

$user = $_SESSION['username'];
$level = $_SESSION['level'];
if ($_SESSION['username']=="") {
  header("location: login.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Petugas</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../bootstrap-5.3.2-dist/bootstrap.min.css">
    <script src="../bootstrap-5.3.2-dist/jquery.min.js"></script>
    <script src="../bootstrap-5.3.2-dist/bootstrap.min.js"></script>
    <style>
        /* Set height of grid so .sidenav can be 100% (adjust as needed) */
        .row.content {height: 640px}

        /* Set gray background color and 100% height */
        .sidenav {
            background-color; #f1f1f1;
            height: 100%;
        }

        /* On small.screens, set height to 'auto' for the grid */
        @media screen and (max widht: 767px) {
        .row.content {height: auto}
        }
      </style>
</head>
<body>
    
<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden=X5">
      <h2><?php echo $level ?></h2>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="index.php">Dashboard</a></1i>
        <li><a href="?page=stok">stok</a></li>
        <li><a href="?page=user">user</a></li>
        <li><a href="?page=logout">log out</a></LI>
      </ul><br>
    </div>
    <br>

    <div class="col-sm-9">
    <?php
         if (isset($_GET['page'])) {
          $laman = $_GET['page'];

          switch ($laman) {
            case 'user':
              include "user.php";
              break;

            case 'stok':
              include "stokbarang.php";
              break;

            case 'logout':
              include "logout.php";
              break;

            case 'tambahbarang':
              include "tambahbarang.php";
              break;

            case 'hapus-user':
              include "hapususer.php";
                break;

            case 'tambah-user':
              include "tambahuser.php";
                 break;

            case 'hapusbarang':
                  include "hapus-brg.php";
                     break;
            case 'edit-user':
                  include "edituser.php";
                     break;
            case 'edit-brg':
                  include "edit-brg.php";
                     break;

            default:
                # code
                break;
          }
        }
        else {
            include "dashboard.php";
        }
      ?>
    </div>
  </div>  
</div>

</body>
</html>