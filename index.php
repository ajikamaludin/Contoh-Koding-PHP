<?php

require_once 'core/init.php';

$super_user = $login = false;

if (isset($_SESSION['user'])) {
	$login = true;
	if (cek_status($_SESSION['user']) == 1){
		$super_user = true;
	}
}

$laman = $_GET['halaman'];
if(!$laman){
	$laman = 0;
}

$articles = tampil_page($laman);

if (isset($_GET['cari'])) {
	$cari     = $_GET['cari'];
	$articles = hasil_cari($cari);
}
$pages = page();
require_once 'view/header.php';

?>

<form action="" method="get">
	<input type="search" name="cari" placeholder="Cari disini ...">
</form>

<?php while ($row = mysqli_fetch_assoc($articles)){?>

<div class="each_article">
	<h3><a href="single.php?id=<?= $row['id'];?>"><?= $row['judul'];?></a></h3>
	<p><?= excerpt($row['isi']);?></p>
	<p class="waktu"><?= $row['waktu'];?></p>
	<p class="tag">Tag : <?= $row['tag'];?></p>

	<?php if($login == true): ?>
	<a href="edit.php?id=<?= $row['id'];?>">Edit</a>
	<?php if($super_user == true): ?>
	<a href="delete.php?id=<?= $row['id'];?>">Hapus</a>
<?php endif; ?>
<?php endif; ?>
</div>
<?php } ?>
<div>
<?php for ($i=1; $i <= $pages; $i++) { ?>
	<a href="index.php?halaman=<?php echo $i?>"> <?php echo $i?></a>


<?php } ?>
</div>
<?php
require_once 'view/footer.php';
?>
