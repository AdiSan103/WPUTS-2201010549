
<!-- partial -->
<div class="main-panel">        
  <div class="content-wrapper">
    <div class="row">
      <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title">Ubah Mahasiswa</h4>
            <p class="card-description">
              Formulir
            </p>
            <form class="forms-sample" method="POST" action="<?= '/'.SITE_NAME.'/edit/go' ?>">
              <input type="hidden" name="id" value="<?= $mahasiswa['id'] ?>">
              <div class="form-group">
                <label for="exampleInputUsername1">Username</label>
                <input required type="text" class="form-control" id="exampleInputUsername1" placeholder="Username" name="nama" value="<?= $mahasiswa['nama'] ?>">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">NIM</label>
                <input required type="number" class="form-control" id="exampleInputEmail1" placeholder="2321" name="nim" value="<?= $mahasiswa['nim'] ?>">
              </div>
              <div>
                <p>Gender</p>
                <div class="form-group px-4">
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="gender1" value="1" <?php if ($mahasiswa['gender'] == 1) { echo ' checked'; } ?>>
                    <label class="form-check-label" for="gender1">
                      Man
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="gender" id="gender2" value="0" <?php if ($mahasiswa['gender'] == 0) { echo ' checked'; } ?>>
                    <label class="form-check-label" for="gender2">
                      Woman
                    </label>
                  </div>
                </div>
              </div>
              <div class="form-group">
              <select required class="form-select" aria-label="jurusan" name="jurusan">
                <option >Pilih Jurusan</option>
                <option value="MTI" <?php echo $mahasiswa['jurusan'] == 'MTI' ? 'selected' : ''; ?>>MTI</option>
                <option value="DKV" <?php echo $mahasiswa['jurusan'] == 'DKV' ? 'selected' : ''; ?>>DKV</option>
                <option value="KAB" <?php echo $mahasiswa['jurusan'] == 'KAB' ? 'selected' : ''; ?>>KAB</option>
              </select>
              </div>
              <button type="submit" class="btn btn-primary me-2">Submit</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- content-wrapper ends -->
  <!-- partial:../../partials/_footer.html -->
  <footer class="footer">
    <div class="d-sm-flex justify-content-center justify-content-sm-between">
      <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash.</span>
      <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Copyright © 2021. All rights reserved.</span>
    </div>
  </footer>
  <!-- partial -->
</div>


