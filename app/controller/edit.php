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
  
  // pasang alert
  alert('alert','success','success','Update Berhasil!','Profil berhasil di perbaharui');

  require_once '../app/views/components/header.php';
  require_once '../app/views/edit.php';
  require_once '../app/views/components/footer.php';

}

function go() {
  // koneksi databsae
  global $requestDB;

  // Ambil nilai 'id' dari query string
  $id = isset($_POST['id']) ? $_POST['id'] : null; // id dari mahasiswa yang akan diupdate

  // Jika 'id' tidak ada dalam query string, redirect ke halaman dashboard
  if (!$id) {
    header('Location: '. '/' . SITE_NAME . '/' . 'dashboard');
    exit;
  }

  $nama = $_POST['nama'];
  $gender = $_POST['gender'];
  $nim = $_POST['nim'];
  $jurusan = $_POST['jurusan'];


  // query update data mahasiswa
  $query = "UPDATE mahasiswa SET nama='$nama', gender='$gender', nim='$nim', jurusan='$jurusan' WHERE id='$id'";
  $result = mysqli_query($requestDB, $query);

  if($result) {
    // set session
    $_SESSION['alert'] = 'success';
  } else {
      echo "Data mahasiswa gagal diupdate";
  }

 header('Location: '. '/' . SITE_NAME . '/edit?id=' . $id);
}


?>