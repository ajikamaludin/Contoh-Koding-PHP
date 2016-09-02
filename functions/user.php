<?php

function cek_data($nama, $password){
	$nama = escape($nama);
	$password = escape($password);
	$password = md5($password);

	$query = "SELECT * FROM users WHERE username='$nama' AND password='$password'";
	global $link;

	if ($result = mysqli_query($link, $query)) {
		if(mysqli_num_rows($result) != 0) return true;
		else return false;
	}

}

function register_cek_nama($nama){
	$nama = escape($nama);

	$query = "SELECT * FROM users WHERE username='$nama'";
	global $link;

	if ($result = mysqli_query($link, $query)) {
		if(mysqli_num_rows($result) == 0) return true;
		else return false;
	}

}

function cek_status($username){
	$nama = escape($username);

	$query = "SELECT status FROM users WHERE username='$nama'";
	global $link;

	if ($result = mysqli_query($link, $query)) {
		while ($row = mysqli_fetch_assoc($result)) {
			$status = $row['status'];
		}
		return $status;
	}
}

function register_user($username, $password){
	$nama = escape($username);
	$password = escape($password);
	$password = md5($password);

	$query = "INSERT INTO users(username, password, status) VALUES ('$username', '$password', 0)";
	return run($query);
}


?>