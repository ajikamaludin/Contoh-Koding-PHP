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