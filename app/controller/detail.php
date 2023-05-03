<?php 

function index() {
  // data
  // Ambil nilai 'id' dari query string
  $id = isset($_GET['id']) ? $_GET['id'] : null;

  // Jika 'id' tidak ada dalam query string, redirect ke halaman dashboard
  if (!$id) {
      header('Location: '. '/' . SITE_NAME . '/' . 'dashboard');
      exit;
  }

  // data mahasiswa -> mengambil data pertama
  $mahasiswa = getData("SELECT * FROM mahasiswa WHERE id = $id")[0];

  require_once '../app/views/components/header.php';
  require_once '../app/views/detail.php';
  require_once '../app/views/components/footer.php';



}






?>