<?php 

function go() {
  // data
  // Ambil nilai 'id' dari query string
  // Set the cookie with the name 'login_user' to expire in the past (effectively deleting it)
  setcookie('login_user', '', time() - 3600, '/');

  $_SESSION['alert'] = 'login_out';

  header('Location: '. '/' . SITE_NAME . '/' . 'login');

}






?>