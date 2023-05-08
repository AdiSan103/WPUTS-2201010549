<!-- partial -->
<div class="main-panel">        
  <div class="content-wrapper">
    <div class="row">
      <div class="col-md-6 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title">Data User</h4>
            <p class="card-description">
              Daftar Identitas
            </p>
            <form class="forms-sample" action="<?= '/'.SITE_NAME.'/profile/go' ?>" method="POST">
            <input type="hidden" name="id" value="<?= $user['id'] ?>">
              <div class="form-group">
                <label >Nama</label>
                <input type="text" class="form-control" name="username" value="<?= $user['username'] ?>">
              </div>
              <div class="form-group">
                <label >Email</label>
                <input type="text" class="form-control" name="email" value="<?= $user['email'] ?>">
              </div>
              <div class="form-group">
                <label >Tanggal Bergabung</label>
                <input readonly type="date" class="form-control" value="<?= date("Y-m-d", strtotime($user['created_at'])) ?>">
              </div>
              <div class="form-group">
                <label >Password Baru</label>
                <input type="password" class="form-control" name="password">
              </div>
              <div class="form-group">
                <label >Password Konfirmasi</label>
                <input type="password" class="form-control" name="password_confirmation">
              </div>
              <button type="submit" class="btn btn-primary me-2">Update</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>