<<<<<<< HEAD
<?php

$login = false;
if(isset($_SESSION['user'])){
	$login = true;
}

?>

<head>
	<title>BLCblog</title>
	<link rel="stylesheet" type="text/css" href="view/style.css">
</head>

<h2>Selamat Datang di BLCblog</h2>
<div id="menu">
	<a href="index.php">HOME</a>
	<a href="add.php">TAMBAH</a>
	<?php if($login == true): ?>
	<a href="logout.php">LOGOUT</a>
	<?php else: ?>
	<a href="login.php">LOGIN</a>
	<?php endif; ?>
</div>
=======
<!DOCTYPE html>
<html>
<head>
  <title>Blog Sederhana - CRUD</title>
  <link rel="stylesheet" href="view/style.css"/>
</head>
<h1>Blog Sederhana</h1>
>>>>>>> de13ef7d37264c6fdfe4d49f5f77c17d297d7911
