<?php

require_once 'core/init.php';

if($_SESSION['user']){
	header('Location: index.php');
}else{



$error = '';


if (isset($_POST['submit'])) {
	$nama = $_POST['nama'];
	$password = $_POST['password'];

	if (!empty(trim($nama)) && !empty(trim($password))) {

		if (register_cek_nama($nama)){
		if (register_user($nama, $password)){
			$_SESSION['user'] = $nama;
			header('Location: index.php');
		}else{
			$error = 'ada punya masalah hidup saat login ';
		}
	}else{
			$error = 'Nama yang didaftarkan telah ada, silahkan menggunakan nama lain. ';
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