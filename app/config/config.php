<?php 

//site name
define('SITE_NAME', 'tugas_uts_semester2');

//DB Params
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'db_kampus');

// session start
session_start();

/*
| cek koneksi
*/

// membuat koneksi ke database
$requestDB = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);

// memeriksa apakah koneksi berhasil
if ($requestDB->connect_errno) {
  // jika koneksi gagal, tampilkan pesan kesalahan dan keluar dari program
  echo "Failed to connect to MySQL: " . $requestDB->connect_error;
  exit();
}


/*
| function untuk get query sql
|
| arguments : $query -> sql
*/

function getData($query) {
  global $requestDB;
  // eksekusi query dari tabel database
  $result = $requestDB->query($query);
  // cek jika eksekusi query sukses
  if ($result->num_rows > 0) {
    // data dikembalikan dalam bentuk array
    $data = array();
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
    return $data;
  } else {
      // error data
      return [''];
  }

  mysqli_close($requestDB);

}

/*
| Sweet alert function
*/

function alert($session,$session_value,$icon,$title,$message) {
  if (isset($_SESSION[$session]) && $_SESSION[$session] == $session_value) {
    // if the session variable 'alert' is set to 'success'
    // generate a JavaScript code to show a SweetAlert notification

    echo "<script src='https://cdn.jsdelivr.net/npm/sweetalert2@11'></script>";
    echo "<script src='https://code.jquery.com/jquery-3.6.0.slim.min.js'></script>";
    echo "<script>$(document).ready(function() { Swal.fire('$title', '$message', '$icon'); });</script>";

    // echo "<script>Swal.fire(" . $title . "," . $message . "," . $icon . ");</script>";

    // clear the session variable to prevent the notification from showing again on page reload
    unset($_SESSION['alert']);
  }
}


?>