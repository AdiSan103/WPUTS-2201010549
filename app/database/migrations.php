<?php 

// require_once 'app/config/config.php';

//DB Params
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'db_kampus');

// Create connection
$conn = new mysqli(DB_HOST, DB_USER, DB_PASS);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Create database
$sql = "CREATE DATABASE IF NOT EXISTS db_kampus";
if ($conn->query($sql) === TRUE) {
  echo "Database created successfully\n";
} else {
  echo "Error creating database: " . $conn->error;
}

// Select database
mysqli_select_db($conn, "db_kampus");

// Create table "user"
$sql = "CREATE TABLE IF NOT EXISTS user (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(30) NOT NULL,
  password VARCHAR(30) NOT NULL,
  email VARCHAR(50),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)";

if ($conn->query($sql) === TRUE) {
  echo "Table user created successfully\n";
} else {
  echo "Error creating table: " . $conn->error;
}

// Create table "mahasiswa"
// gender true -> man | false -> woman
$sql = "CREATE TABLE IF NOT EXISTS mahasiswa (
  id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(255) NOT NULL,
  nim VARCHAR(255) NOT NULL,
  gender BOOLEAN NOT NULL, 
  jurusan VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)";

if ($conn->query($sql) === TRUE) {
  echo "Table mahasiswa created successfully\n";
} else {
  echo "Error creating table: " . $conn->error;
}
// define
$sql = "INSERT INTO `user` (`id`, `username`, `password`, `email`, `created_at`) VALUES (1, 'admin1234', 'admin1234', 'admin@gmail.com', '2023-05-03 14:40:42')
";

$sql2 = "INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `gender`, `jurusan`, `created_at`) VALUES
  (1, 'budii', '12425', 0, 'MTI', '2023-05-21 08:15:13'),
  (2, 'Andi', '12345', 1, 'DKV', '2023-05-21 09:30:45'),
  (3, 'Citra', '54321', 0, 'KAB', '2023-05-21 10:45:18'),
  (4, 'Dewi', '98765', 0, 'MTI', '2023-05-21 11:55:21'),
  (5, 'Eka', '23456', 1, 'DKV', '2023-05-21 12:45:37'),
  (6, 'Fajar', '67890', 1, 'KAB', '2023-05-21 14:15:59'),
  (7, 'Gita', '13579', 0, 'MTI', '2023-05-21 15:30:12'),
  (8, 'Hadi', '24680', 1, 'DKV', '2023-05-21 16:45:34'),
  (9, 'Indah', '87654', 0, 'KAB', '2023-05-21 18:00:57'),
  (10, 'Joko', '56789', 1, 'MTI', '2023-05-21 19:15:10'),
  (11, 'Kiki', '45678', 0, 'DKV', '2023-05-21 20:30:23'),
  (12, 'Lina', '32109', 0, 'KAB', '2023-05-21 21:45:46'),
  (13, 'Mira', '90876', 0, 'MTI', '2023-05-21 22:55:09'),
  (14, 'Nadia', '65432', 0, 'DKV', '2023-05-21 23:45:32'),
  (15, 'Oscar', '10987', 1, 'KAB', '2023-05-22 00:15:54');
";

// execute the SQL query
if (mysqli_query($conn, $sql) && mysqli_query($conn, $sql2)) {
  echo "Record inserted successfully";
} else {
  echo "Error: " . mysqli_error($conn);
}

$conn->close();

?>