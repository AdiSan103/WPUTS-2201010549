<?php
// hubungkan dengan file koneksi.php
require_once('koneksi.php');

// sistem tambah data

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
    // echo "<table>";
    // while ($row = mysqli_fetch_assoc($result)) {
    //   echo "<tr><td>ID Buku:</td><td>" . $row['ID_buku_2201010538'] . "</td></tr>";
    //   echo "<tr><td>Judul Buku:</td><td>" . $row['Judul_buku_2201010538'] . "</td></tr>";
    //   echo "<tr><td>Kategori Buku:</td><td>" . $row['Kategori_buku_2201010538'] . "</td></tr>";
    //   echo "<tr><td>Penerbit:</td><td>" . $row['Penerbit_2201010538'] . "</td></tr>";
    //   echo "<tr><td>Penulis:</td><td>" . $row['Penulis_2201010538'] . "</td></tr>";
    //   echo "<tr><td>Stok:</td><td>" . $row['Stok_2201010538'] . "</td></tr>";
    //   echo "<tr><td>Harga:</td><td>" . $row['Harga_2201010538'] . "</td></tr>";
    // }
    // echo "</table>";
    $data = mysqli_fetch_assoc($result);
  } else {
    // jika data tidak ditemukan
    echo "Data tidak ditemukan.";
    $data = [];
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
  <h5 class="text-center mt-5">DETAIL BUKU</h5>
  <form class="shadow rounded py-4 px-3 my-4">
    <div class="mb-3">
      <label for="id_buku" class="form-label">ID Buku</label>
      <input readonly type="text" class="form-control" id="id_buku" name="id_buku" value="<?= $data['ID_buku_2201010538'] ?>">
    </div>
    <div class="mb-3">
      <label for="judul_buku" class="form-label">Judul Buku</label>
      <input readonly type="text" class="form-control" id="judul_buku" name="judul_buku" value="<?= $data['Judul_buku_2201010538'] ?>">
    </div>
    <div class="mb-3">
      <label for="judul_buku" class="form-label">Kategori Buku</label>
      <input readonly type="text" class="form-control" id="judul_buku" name="judul_buku" value="<?= $data['Kategori_buku_2201010538'] ?>">
    </div>
    <div class="mb-3">
      <label for="penerbit" class="form-label">Penerbit</label>
      <input readonly type="text" class="form-control" id="penerbit" name="penerbit" value="<?= $data['Penerbit_2201010538'] ?>">
    </div>
    <div class="mb-3">
      <label for="penulis" class="form-label">Penulis</label>
      <input readonly type="text" class="form-control" id="penulis" name="penulis" value="<?= $data['Penulis_2201010538'] ?>">
    </div>
    <div class="mb-3">
      <label for="stok" class="form-label">Stok</label>
      <input readonly type="number" class="form-control" id="stok" name="stok" value="<?= $data['Stok_2201010538'] ?>">
    </div>
    <div class="mb-3">
      <label for="harga" class="form-label">Harga</label>
      <input readonly type="number" class="form-control" id="harga" name="harga" value="<?= $data['Harga_2201010538'] ?>">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>

<?php 
  // memanggil footer.php
  require_once('footer.php');
?>