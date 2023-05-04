<?php 

function index() {

 require_once '../app/views/components/header.php';
 require_once '../app/views/add.php';
 require_once '../app/views/components/footer.php';
}

function go() {

 // get
 global $requestDB;

  // Ambil data dari form
  $nama = $_POST["nama"];
  $gender = $_POST["gender"];
  $nim = $_POST["nim"];
  $jurusan = $_POST["jurusan"];
  $created_at = date("Y-m-d H:i:s");
  // var_dump($_POST);
  // die();

  $sql = "INSERT INTO mahasiswa (nama, gender, nim, jurusan, created_at) VALUES ('$nama', '$gender', '$nim', '$jurusan', '$created_at')";

  // Jalankan query
  if (mysqli_query($requestDB, $sql)) {
   $_SESSION['alert'] = 'success';
  } else {
   echo "Error: " . $sql . "<br>" . mysqli_error($requestDB);
  }

  // Tutup koneksi
  mysqli_close($requestDB);

  header('Location: '. '/' . SITE_NAME . '/' . 'dashboard');

 }




?>