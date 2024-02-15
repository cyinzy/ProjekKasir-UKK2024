<?php
include "../koneksi/koneksi.php";

error_reporting(0);
session_start();

if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = md5($_POST['password']);

    $sql = "SELECT * FROM user WHERE username='$username' AND password='$password'";
    $result = mysqli_query($con, $sql);

    if ($result->num_rows > 0) {
        $row = mysqli_fetch_assoc($result);
        $_SESSION['username'] = $row['username'];
        $_SESSION['level'] = $row['level'];

        header("Location: index.php");

        echo "<script>alert('Berhasil Masuk!')</script>";
    } else {
        echo "<script>alert('Username atau password Anda salah. Silahkan coba lagi!')<?script>";
    }
}
?>

<DOCTYPE html>
<html Iang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="widht=device-widht, initial-scale=1.0">
    <title>LOGIN</title>

    <link rel="stylesheet"href="../bootstrap-5.3.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet"href="../bootstrap-5.3.2-dits/css/bootstrap.css">
</head>
<body> 
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-4">
              <div class="card">
                <div class="card-harder">
                    <h3 class="text-center">login<h3>
                </div>
                <div class="card-body">
                    <form action=""method="post">
                        <div class="mb-3 mt-3">
                            <label for="" class="form-label">nama</label>
                            <input type="text" name="username" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label for="" class="form-label">password</label>
                            <input type="password" name="password" class="form-control" required>
                        </div>
                        <button name="submit" class="btn btn-primary">login</button>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>

    <script src="../assets/bootstrap.min.js"></script>
    <script src="../assets/jquery.min.js"></script>
</body>
</html>