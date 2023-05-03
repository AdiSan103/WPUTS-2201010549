<?php 

function index() {
  // mysqli
  global $requestDB;
  // data
  
  $mahasiswa = getData("SELECT * FROM mahasiswa");
  $man = getData("SELECT * FROM mahasiswa WHERE gender = TRUE");
  $woman = getData("SELECT * FROM mahasiswa WHERE gender = FALSE");



  // view
  require_once '../app/views/components/header.php';
  require_once '../app/views/dashboard.php';
  require_once '../app/views/components/footer.php';

}






?>