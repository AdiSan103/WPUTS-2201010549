<?php 

//site name
define('SITE_NAME', 'tugas_uts_semester2');

//App Root
// define('APP_ROOT', dirname(dirname(__FILE__)));
// define('URL_ROOT', '/');
// define('URL_SUBFOLDER', '');

//DB Params
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'db_kampus');

/*
| cek koneksi
*/

// membuat koneksi ke database
$requestDB = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

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
      return array("error" => "No data found in the table.");
  }

  mysqli_close($requestDB);

}

/*
| function untuk get query sql
|
| arguments : $query -> sql
*/



?>