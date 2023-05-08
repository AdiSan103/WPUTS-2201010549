<?php
// hubungkan dengan file koneksi.php
require('koneksi.php');

// sistem tambah data
// cara cek adalah bila method request = POST
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

  // $_POST
  $id_buku = $_POST['id_buku'];
  $judul_buku = $_POST['judul_buku'];
  $kategori_buku = $_POST['kategori_buku'];
  $penerbit = $_POST['penerbit'];
  $penulis = $_POST['penulis'];
  $stok = $_POST['stok'];
  $harga = $_POST['harga'];

  // var_dump($id_buku);
  // die();

  //menambah data baru
  $sql = "INSERT INTO tb_buku_2201010538 (
      ID_buku_2201010538, 
      Judul_buku_2201010538, 
      Kategori_buku_2201010538, 
      Penerbit_2201010538, 
      Penulis_2201010538, 
      Stok_2201010538, 
      Harga_2201010538
    ) VALUES (
      '$id_buku', 
      '$judul_buku', 
      '$kategori_buku', 
      '$penerbit', 
      '$penulis', 
      '$stok', 
      '$harga'
    )";

// $id_buku, 
// $judul_buku, 
// $kategori_buku, 
// $penerbit, 
// $penulis, 
// $stok, 
// $harga

  // 'B001', 'Judul Buku', 'Fiksi', 'Penerbit', 'Penulis', 5, 50000

  if (mysqli_query($mysqli, $sql)) {
    echo "Data berhasil ditambahkan";
  } 

  // berhenti mysqli
  mysqli_close($mysqli);
}

?>

<?php 
  // memanggil header.php
  require_once('header.php');
?>

 <!-- konten -->
 <div class="container">
  <h5 class="text-center mt-5">TAMBAH BUKU</h5>
  <form class="shadow rounded py-4 px-3 my-4" action="create.php" method="POST">
    <div class="mb-3">
      <label for="id_buku" class="form-label">ID Buku</label>
      <input required type="text" class="form-control" id="id_buku" name="id_buku">
    </div>
    <div class="mb-3">
      <label for="judul_buku" class="form-label">Judul Buku</label>
      <input required type="text" class="form-control" id="judul_buku" name="judul_buku">
    </div>
    <div class="mb-3">
      <label for="kategori_buku" class="form-label">Kategori Buku</label>
      <select class="form-select" id="kategori_buku" name="kategori_buku">
        <option selected disabled>Choose...</option>
        <option value="Hobi">Hobi</option>
        <option value="Komputer">Komputer</option>
        <option value="Fiksi">Fiksi</option>
      </select>
    </div>
    <div class="mb-3">
      <label for="penerbit" class="form-label">Penerbit</label>
      <input required type="text" class="form-control" id="penerbit" name="penerbit">
    </div>
    <div class="mb-3">
      <label for="penulis" class="form-label">Penulis</label>
      <input required type="text" class="form-control" id="penulis" name="penulis">
    </div>
    <div class="mb-3">
      <label for="stok" class="form-label">Stok</label>
      <input required type="number" class="form-control" id="stok" name="stok">
    </div>
    <div class="mb-3">
      <label for="harga" class="form-label">Harga</label>
      <input required type="number" class="form-control" id="harga" name="harga">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

<?php 
  // memanggil footer.php
  require_once('footer.php');
?>