<?php 

function go() {
  // mysqli
  global $requestDB;
  // data
  $id = $_POST['id'];
  // Jika 'id' tidak ada dalam query string, redirect ke halaman dashboard
  if (!$id) {
    header('Location: '. '/' . SITE_NAME . '/' . 'dashboard');
    exit;
  }

  // Buat query untuk menghapus data mahasiswa
  $sql = "DELETE FROM mahasiswa WHERE id=$id";

  // Jalankan query untuk menghapus data mahasiswa
  if (mysqli_query($requestDB, $sql)) {
    echo "Data mahasiswa berhasil dihapus";
  } else {
    echo "Error: " . $sql . "<br>" . mysqli_error($requestDB);
  }

  // Tutup koneksi
  mysqli_close($requestDB);

  header('Location: '. '/' . SITE_NAME . '/' . 'dashboard');
}



?>