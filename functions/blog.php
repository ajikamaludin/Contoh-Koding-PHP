<?php 
function tampil_page($laman){
	$perPage = 4;
	$page    = isset($laman) ? (int)$_GET['halaman'] : 1;
	$start   = ($page > 1) ? ($page * $perPage) - $perPage : 0;

	$sql = "SELECT * FROM blog LIMIT $start, $perPage";
	return result($sql);

}

function page(){
	global $link;
	$perPage = 4;
	$result = mysqli_query($link, "SELECT * FROM blog");
	$total = mysqli_num_rows($result);

	$pages = ceil($total/$perPage);
	return $pages;
}

function tampilkan(){
	$query = "SELECT * FROM blog";
	return result($query);
}

function tampilkan_per_id($id){
	$query = "SELECT * FROM blog WHERE id=$id";
	return result($query);
}

function hasil_cari($cari){
	$query = "SELECT * FROM blog WHERE judul LIKE '%$cari%'";
	return result($query);
}

function result($query){
	global $link;
	if ($result = mysqli_query($link, $query) or die('Gagal Menampilkan Data')) {
		return $result;
	}
}

function tambah_data($judul, $konten, $tag){
	$judul = escape($judul);
	$konten = escape($konten);
	$query = "INSERT INTO blog(judul, isi, tag) VALUES ('$judul', '$konten', '$tag')";
	return run($query);
}

function edit_data($judul, $konten, $tag, $id){
	$query = "UPDATE blog SET judul='$judul', isi='$konten', tag='$tag' WHERE id='$id'";
	return run($query);
}

function hapus_data($id){
	$query = "DELETE FROM blog WHERE id='$id'";
	return run($query);
}

function run($query){
	global $link;

	if (mysqli_query($link, $query)) return true;
		else return false;
}

function excerpt($string){
	$string = substr($string, 0, 10);
	return $string ."...";
}

function escape($data){
	global $link;
	return mysqli_real_escape_string($link, $data);
}

 ?> 