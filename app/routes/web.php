<?php 

// --------------------------FUNCTION DEFAULT------------------------ //

/*
| ini adalah function default (jangan di ubah)
|
| $method: The HTTP method (e.g. "GET", "POST", "PUT", "DELETE") method route website.
| $route: The URL path adalah route respon.
| $callback: A callback fungsi yang berjalan jika bernilai benar.
| 
*/

// function untuk membersihkan url
function clear_route($url) {

  // Parse URL untuk mendapatkan query string
  $query_string = parse_url($url, PHP_URL_QUERY);

  // jika ada ?id= ?? data id
  if($query_string != null) {
    parse_str($query_string, $query_params);

    // Hapus key 'id' dari array query params
    unset($query_params['id']);
  
    // Bangun query string baru dari array query params yang sudah dimodifikasi
    $new_query_string = http_build_query($query_params);
  
    // Bangun URL baru dengan query string yang sudah dimodifikasi
    $new_url = str_replace("?$query_string", "", $url) . ($new_query_string ? "?$new_query_string" : "");
  
    // Tampilkan URL baru tanpa ?id=
    return $new_url;
  } else  {
    return $url;
  }
}

//  core 
$route_error = false;

function handle_route($method, $route, $controller, $cntrl_func) {

 // global  function condition error
 global $route_error;

 if ($_SERVER['REQUEST_METHOD'] === $method && clear_route($_SERVER['REQUEST_URI']) ===  '/' . SITE_NAME . $route) {
 // to include
 require_once '../app/controller/' . $controller . '.php';
 // call function
 $cntrl_func();  
 // condition error is dont work
 $route_error = true;
 }
}

// cek cookie
function checkCookie($email) {
  $user = getData("SELECT * FROM user WHERE email = '$email'" );
  
  // tidak ada data, maka balik ke login
  if(empty($sql[0])) {
    header('Location: '. '/' . SITE_NAME . '/' . 'login');  
  } else {
    return TRUE;
  }

}

//  ------------------------ROUTES WEB-------------------------------//

/* 
| berikut adalah route yang di defenisikan dalam website
| bagian ini bisa anda isi
|
| handle_route('METHOD','/_path','/app/controller','function_in_controller');
*/

// route tidak perlu login
handle_route('GET','/','home','index');

handle_route('GET','/login','login','index');

handle_route('POST','/login/go','login','go');

handle_route('GET','/register','register','index');

handle_route('POST','/register/go','register','go');

// cek cookie 'login_user'
if(isset($_COOKIE['login_user']) && checkCookie($_COOKIE['login_user']) ) {

  // isi function ini untuk route harus autentifikasi login admin
  handle_route('GET','/dashboard','dashboard','index');

  handle_route('GET','/add','add','index');

  handle_route('GET','/detail','detail','index');

  handle_route('POST','/add/go','add','go');

  handle_route('GET','/edit','edit','index');

  handle_route('POST','/edit/go','edit','go');

  handle_route('POST','/delete/go','delete','go');

  handle_route('GET','/profile','profile','index');

  handle_route('POST','/profile/go','profile','go');

  handle_route('POST','/logout/go','logout','go');

}


//  ------------------------ROUTES WEB-------------------------------//
/*
| fungsi ini  jangan anda ubah, ini untuk check apakah route berhasil 
*/

if($route_error == false) {
 require_once '../app/views/error.php';
}