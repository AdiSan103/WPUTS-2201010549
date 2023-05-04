<?php 

function index() {
  // set
  alert('alert','login_error','info','Maaf terjadi kesalahan!','password atau email salah!');
  alert('alert','login_out','success','Berhasil Keluar!','anda berhasil keluar dari admin!');


 require_once '../app/views/login.php';
}


function go() {

 // get
 global $requestDB;

  // Ambil data dari form
  $email = $_POST["email"];
  // cek konfirmasi  password
  $password = $_POST['password'];

  $sql = getData("SELECT * FROM user WHERE email = '$email' AND password = '$password'");

  // cek jika ada data
  if (!empty($sql[0])) {
    // set cookie
    setcookie('login_user', $email, time() + (86400), '/');
    // set session
    $_SESSION['alert'] = 'login';
    // location
    header('Location: '. '/' . SITE_NAME . '/' . 'dashboard');
  } else {
    // set session
    $_SESSION['alert'] = 'login_error';
    // location
    header('Location: '. '/' . SITE_NAME . '/login');
  }

  // Tutup koneksi
  mysqli_close($requestDB);

}

?>