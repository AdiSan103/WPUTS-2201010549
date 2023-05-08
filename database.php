<?php
// hubungkan dengan file koneksi.php
// require_once('koneksi.php');

$DB_HOST = 'localhost';
$DB_USER = 'root';
$DB_PASS = '';
$DB_NAME = 'db_2201010538';
$mysqli = new mysqli($DB_HOST, $DB_USER, $DB_PASS);

if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// Membuat database
$sql = "CREATE DATABASE IF NOT EXISTS db_2201010538";
if (mysqli_query($mysqli, $sql)) {
    echo "Database berhasil dibuat";
    echo "<br>";
} else {
    echo "Database gagal dibuat: " . mysqli_error($mysqli);
    echo "<br>";
}

require_once('koneksi.php');
// Menggunakan database yang telah dibuat
mysqli_select_db($mysqli, "db_2201010538");

// Membuat tabel
$sql = "CREATE TABLE IF NOT EXISTS tb_buku_2201010538 (
  ID_buku_2201010538 CHAR(10) PRIMARY KEY,
  Judul_buku_2201010538 VARCHAR(100),
  Kategori_buku_2201010538 VARCHAR(50),
  Penerbit_2201010538 VARCHAR(100),
  Penulis_2201010538 VARCHAR(100),
  Stok_2201010538 INT,
  Harga_2201010538 INT
)";

if (mysqli_query($mysqli, $sql)) {
    echo "Tabel berhasil dibuat";
    echo "<br>";
} else {
    echo "Tabel gagal dibuat: " . mysqli_error($mysqli);
    echo "<br>";
}

// Menutup koneksi ke MySQL
mysqli_close($mysqli);
?>
