<?php 

function index() {
  // data
  // Ambil nilai 'id' dari query string
  // $id = isset($_GET['id']) ? $_GET['id'] : null;

  $id = 1;
  // Jika 'id' tidak ada dalam query string, redirect ke halaman dashboard
  if (!$id) {
      header('Location: '. '/' . SITE_NAME . '/' . 'profile');
      exit;
  }

  // data mahasiswa -> mengambil data pertama
  $user = getData("SELECT * FROM user WHERE id = $id")[0];
  
  require_once '../app/views/components/header.php';
  require_once '../app/views/profile.php';
  require_once '../app/views/components/footer.php';

}

function go() {
  // koneksi databsae
  global $requestDB;

  // Ambil nilai 'id' dari query string
  $id = isset($_POST['id']) ? $_POST['id'] : null; // id dari mahasiswa yang akan diupdate

  // Jika 'id' tidak ada dalam query string, redirect ke halaman dashboard
  if (!$id) {
    header('Location: '. '/' . SITE_NAME . '/' . 'dashboad');
    exit;
  }

  $username = $_POST['userbame'];
  $email = $_POST['email'];
  $nim = $_POST['nim'];
  $jurusan = $_POST['jurusan'];


  // query update data mahasiswa
  $query = "UPDATE mahasiswa SET nama='$nama', gender='$gender', nim='$nim', jurusan='$jurusan' WHERE id='$id'";
  $result = mysqli_query($requestDB, $query);

  if($result) {
    echo "Data mahasiswa berhasil diupdate";
  } else {
      echo "Data mahasiswa gagal diupdate";
  }

 header('Location: '. '/' . SITE_NAME . '/profile?id=' . $id);
}


?>