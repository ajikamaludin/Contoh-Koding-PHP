<?php
  $host = 'localhost';
  $user = 'root';
  $pass = 'face';
  $database = 'sekolah';

$koneksi = mysqli_connect($host,$user,$pass,$database) or die(mysqli_error());
mysqli_close();
?>
