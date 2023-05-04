<?php 

function index() {
 require_once '../app/views/register.php';
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

 // cek konfirmasi  password
 $password = $_POST['password'];
 $password_confirmation = $_POST['password_confirmation'];

 // apakah ada password 
 if(!empty($password)) {
   // cek password 
   if($password != $password_confirmation) {
     echo 'passoword tidak sama';
     header('Location: '. '/' . SITE_NAME . '/profile?id=' . $id);
     exit();
   }
 } else {
   // karena tidak ada password baru maka masukkan password lama
   $query = "SELECT * FROM user WHERE id = $id";
   $password = getData($query)[0]['password'];
 }

 // variabel 
 $username = $_POST['username'];
 $email = $_POST['email'];

 // query update data mahasiswa
 $query = "UPDATE user SET username='$username', email='$email', password='$password' WHERE id='$id'";

 $result = mysqli_query($requestDB, $query);

 // query berhasil
 if($result) {
   // set session
   $_SESSION['alert'] = 'success';
 }

 header('Location: '. '/' . SITE_NAME . '/profile?id=' . $id);
}

?>