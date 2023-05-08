<!-- partial -->
<div class="main-panel">        
  <div class="content-wrapper">
    <div class="row">
      <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title">Data Mahasisa : <?= $mahasiswa['nama'] ?></h4>
            <p class="card-description">
              Daftar Identitas
            </p>
            <form class="forms-sample">
              <div class="form-group">
                <label for="exampleInputEmail1">Gender</label>
                <input type="email" readonly class="form-control" value="<?= ($mahasiswa['gender'] == 1) ? 'Man' : 'woman'; ?>">
              </div>
              <div class="form-group">
                <label >NIM</label>
                <input type="text"readonly class="form-control" value="<?= $mahasiswa['nim'] ?>">
              </div>
              <div class="form-group">
                <label >Jurusan</label>
                <input type="text"readonly class="form-control" value="<?= $mahasiswa['jurusan'] ?>">
              </div>
              <div class="form-group">
                <label >Tanggal Bergabung</label>
                <input type="date"readonly class="form-control" value="<?= date("Y-m-d", strtotime($mahasiswa['created_at'])) ?>">
              </div>
              <a href="<?= '/'.SITE_NAME.'/'.'dashboard' ?>" class="btn btn-primary me-2">Kembali</a>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>