<?php

require_once 'core/init.php';

if(isset($_SESSION['user'])){
	header('Location: index.php');
}else{



$error = '';


if (isset($_POST['submit'])) {
	$nama = $_POST['nama'];
	$password = $_POST['password'];

	if (!empty(trim($nama)) && !empty(trim($password))) {

		if (cek_data($nama, $password)){
			$_SESSION['user'] = $nama;
			header('Location: index.php');
		}else{
			$error = 'Anda punya masalah hidup saat login !! ';
		}
	}else{
		$error = 'Username dan Password wajib diisi';
	}

}
require_once 'view/header.php';

?>

<form action="" method="post">
	
	<label for="nama">Username</label>
	<input type="text" name="nama"><br />

	<label for="password">Password</label>
	<input type="password" name="password">

	<div id="error"><?=$error ?></div>

	<input type="submit" value="Simpan" name="submit">

</form>

<?php
require_once 'view/footer.php';
?>

<?php } ?>