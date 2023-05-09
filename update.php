<?php
// hubungkan dengan file koneksi.php
require_once('koneksi.php');

// sistem read data
if (isset($_GET['id'])) {

  // sanitize data
  $id_buku = mysqli_real_escape_string($mysqli, $_GET['id']);

  // query untuk ambil data
  $sql = "SELECT * FROM tb_buku_2201010538 WHERE ID_buku_2201010538 = '$id_buku'";

  // eksekusi query
  $result = mysqli_query($mysqli, $sql);

  // cek apakah data ditemukan
  if (mysqli_num_rows($result) > 0) {
    // tampilkan data dalam bentuk tabel
    $data = mysqli_fetch_assoc($result);
  } else {
    // jika data tidak ditemukan
    echo "Data tidak ditemukan.";
    $data = [];
  }

  // berhenti mysqli
  mysqli_close($mysqli);
}

// sistem update data
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  //mendapatkan data dari form update
  $id = $_POST['id_buku'];
  $judul = $_POST['judul_buku'];
  $penerbit = $_POST['penerbit'];
  $penulis = $_POST['penulis'];
  $kategori = $_POST['kategori_buku'];
  $harga = $_POST['harga'];
  $stok = $_POST['stok'];
  
  //update data buku ke database
  $query = "UPDATE tb_buku_2201010538 SET 
      Judul_buku_2201010538='$judul', 
      Kategori_buku_2201010538='$kategori', 
      Penerbit_2201010538='$penerbit', 
      Penulis_2201010538='$penulis', 
      Stok_2201010538='$stok', 
      Harga_2201010538='$harga'
    WHERE ID_buku_2201010538='$id'";

  $result = mysqli_query($mysqli, $query);

  //cek apakah update berhasil
  if($result) {
    echo "Update data buku berhasil";
    header('Location: update.php?id='.$id);
  } else {
    echo "Update data buku gagal";
  }
}

?>

<?php 
  // memanggil header.php
  require_once('header.php');
?>

 <!-- konten -->
 <div class="container">
  <h5 class="text-center mt-5">TAMBAH BUKU</h5>
  <form class="shadow rounded py-4 px-3 my-4" action="update.php" method="POST">
    <div class="mb-3">
      <label for="id_buku" class="form-label">ID Buku</label>
      <input required readonly type="text" class="form-control" id="id_buku" name="id_buku" value="<?= $data['ID_buku_2201010538'] ?>">
    </div>
    <div class="mb-3">
      <label for="judul_buku" class="form-label">Judul Buku</label>
      <input required type="text" class="form-control" id="judul_buku" name="judul_buku" value="<?= $data['Judul_buku_2201010538'] ?>">
    </div>
    <div class="mb-3">
      <label for="kategori_buku" class="form-label">Kategori Buku</label>
      <select class="form-select" id="kategori_buku" name="kategori_buku">
        <option selected disabled>Choose...</option>
        <option value="Hobi" <?php if ($data['Kategori_buku_2201010538'] == 'Hobi') { echo 'selected'; } ?>>Hobi</option>
        <option value="Komputer" <?php if ($data['Kategori_buku_2201010538'] == 'Komputer') { echo 'selected'; } ?>>Komputer</option>
        <option value="Fiksi" <?php if ($data['Kategori_buku_2201010538'] == 'Fiksi') { echo 'selected'; } ?>>Fiksi</option>
      </select>
    </div>
    <div class="mb-3">
      <label for="penerbit" class="form-label">Penerbit</label>
      <input required type="text" class="form-control" id="penerbit" name="penerbit" value="<?= $data['Penerbit_2201010538'] ?>">
    </div>
    <div class="mb-3">
      <label for="penulis" class="form-label">Penulis</label>
      <input required type="text" class="form-control" id="penulis" name="penulis" value="<?= $data['Penulis_2201010538'] ?>">
    </div>
    <div class="mb-3">
      <label for="stok" class="form-label">Stok</label>
      <input required type="number" class="form-control" id="stok" name="stok" value="<?= $data['Stok_2201010538'] ?>">
    </div>
    <div class="mb-3">
      <label for="harga" class="form-label">Harga</label>
      <input required type="number" class="form-control" id="harga" name="harga" value="<?= $data['Harga_2201010538'] ?>">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

<?php 
  // memanggil footer.php
  require_once('footer.php');
?>