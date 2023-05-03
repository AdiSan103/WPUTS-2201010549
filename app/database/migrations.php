<?php 

require_once 'app/config/config.php';

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
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(30) NOT NULL,
  nim VARCHAR(10) NOT NULL,
  gender BOOLEAN NOT NULL, 
  jurusan VARCHAR(50) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)";

if ($conn->query($sql) === TRUE) {
  echo "Table mahasiswa created successfully\n";
} else {
  echo "Error creating table: " . $conn->error;
}

$conn->close();

?>