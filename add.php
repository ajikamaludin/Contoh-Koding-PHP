<?php

require_once 'core/init.php';
require_once 'view/header.php';

if(!$_SESSION['user']){
	header('Location: login.php');
}else{


$error = '';

if (isset($_POST['submit'])) {
	$judul = $_POST['judul'];
	$konten = $_POST['konten'];
	$tag = $_POST['tag'];

	if (!empty(trim($judul)) && !empty(trim($konten))) {
		if (tambah_data($judul, $konten, $tag)){
			header('Location: index.php');
		}else{
			$error = 'ada punya masalah ';
		}
	}else{
		$error = 'judul dan konten wajib diisi';
	}

}

?>

<form action="" method="post">
	
	<label for="judul">Judul</label>
	<input type="text" name="judul"><br />

	<label for="konten">Isi</label>
	<textarea name="konten" rows="8" cols="40"></textarea><br>

	<label for="tag">Tag</label>
	<input type="text" name="tag">

	<div id="error"><?=$error ?></div>

	<input type="submit" value="Simpan" name="submit">

</form>

<?php
require_once 'view/footer.php';
?>

<?php } ?>