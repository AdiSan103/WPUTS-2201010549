<?php 

function index() {
  // mysqli
  global $requestDB;
  // data
  
  $mahasiswa = getData("SELECT * FROM mahasiswa");
  $man = getData("SELECT * FROM mahasiswa WHERE gender = TRUE");
  $woman = getData("SELECT * FROM mahasiswa WHERE gender = FALSE");

  // pasang alert
  alert('alert','delete','info','Berhasil di Hapus!','Data berhasil di hapus!');
  alert('alert','success','success','Data Baru!','Data berhasil di tambahkan!');
  alert('alert','login','success','Welcome Admin!','Selamat di dashboard admin!');

  
  // view
  require_once '../app/views/components/header.php';
  require_once '../app/views/dashboard.php';
  require_once '../app/views/components/footer.php';

}






?>