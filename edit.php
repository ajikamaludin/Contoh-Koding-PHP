<?php

require_once 'core/init.php';

if(!$_SESSION['user']){
	header('Location: login.php');
}

require_once 'view/header.php';

$error = '';

$id = $_GET['id'];
if (isset($_GET['id'])) {
	$article = tampilkan_per_id($id);
	while ($row = mysqli_fetch_assoc($article)){
		$judul_awal = $row['judul'];
		$konten_awal = $row['isi'];
		$tag_awal = $row['tag'];
	}
}

if (isset($_POST['submit'])) {
	$judul = $_POST['judul'];
	$konten = $_POST['konten'];
	$tag = $_POST['tag'];

	if (!empty(trim($judul)) && !empty(trim($konten))) {
		if (edit_data($judul, $konten, $tag, $id)){
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
	<input type="text" name="judul" value="<?=$judul_awal;?>"><br />

	<label for="konten">Isi</label>
	<textarea name="konten" rows="8" cols="40"><?=$konten_awal;?></textarea><br>

	<label for="tag">Tag</label>
	<input type="text" name="tag" value="<?=$tag_awal;?>">

	<div id="error"><?=$error ?></div>

	<input type="submit" value="Simpan" name="submit">

</form>

<?php
require_once 'view/footer.php';
?>