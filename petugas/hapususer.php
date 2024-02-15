<?php
// include database connection file
include_once("../koneksi/koneksi.php");
 
// Get id from URL to delete that user
$id = $_GET['userID'];
 
// Delete user row from table based on given id
$result = mysqli_query($con, "DELETE FROM user WHERE userID=$id");

// After delete redirect to Home, so that latest user list will be displayed.
header("Location:index.php?page=user");
?>