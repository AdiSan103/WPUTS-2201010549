  <!-- partial -->
  <div class="main-panel">
    <div class="content-wrapper">
      <div class="row">
        <div class="col-sm-12">
          <div class="home-tab">
            <div class="d-sm-flex align-items-center justify-content-between border-bottom">
            </div>
            <div class="tab-content tab-content-basic">
              <div class="tab-pane fade show active" id="overview" role="tabpanel" aria-labelledby="overview"> 
                <div class="row">
                  <div class="col-sm-12">
                    <div class="statistics-details row gap-md-5 gap-3 col-xl-6 col-lg-10 col-12">
                      <!-- total -->
                      <div class="bg-white py-4 rounded shadow-sm col-md-3 col-5">
                        <p class="statistics-title">Total</p>
                        <h3 class="rate-percentage"><?= count($mahasiswa); ?></h3>
                      </div>
                      <!-- man -->
                      <div class="bg-white py-4 rounded shadow-sm col-md-3 col-5">
                        <p class="statistics-title">Pria</p>
                        <h3 class="rate-percentage"><?= count($man); ?></h3>
                      </div>
                      <!-- woman -->
                      <div class="bg-white py-4 rounded shadow-sm col-md-3 col-5">
                        <p class="statistics-title">Wanita</p>
                        <h3 class="rate-percentage"><?= count($woman); ?></h3>
                      </div>
                    </div>
                  </div>
                </div> 
                <div class="row">
                  <div class="col-lg-12 d-flex flex-column">
                    <div class="row flex-grow">
                      <div class="col-12 grid-margin stretch-card">
                        <div class="card card-rounded">
                          <div class="card-body">
                            <div class="d-sm-flex justify-content-between align-items-start">
                              <div>
                                <h4 class="card-title card-title-dash">Pending Requests</h4>
                                <p class="card-subtitle card-subtitle-dash">You have 50+ new requests</p>
                              </div>
                              <div>
                                <a href="<?= '/'.SITE_NAME.'/add' ?>" class="btn btn-primary btn-lg text-white mb-0 me-0" type="button"><i class="mdi mdi-account-plus"></i>Add new member</a>
                              </div>
                            </div>
                            <div class="table-responsive  mt-1">
                              <table class="table table-striped" id="myTable">
                                <thead>
                                  <tr>
                                    <th scope="col">No.</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Gender</th>
                                    <th scope="col">NIM</th>
                                    <th scope="col">Jurusan</th>
                                    <th scope="col">Created At</th>
                                    <th scope="col">Action</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <?php 
                                    for($i = 0;  $i < count($mahasiswa); $i++){ 
                                    $item = $mahasiswa[$i];
                                  ?>
                                  <tr>
                                    <td><?= $i + 1; ?></td>
                                    <td><?= $item['nama']; ?></td>
                                    <td><?= ($item['gender'] == 1) ? 'Man' : 'woman'; ?></td>
                                    <td><?= $item['nim'] ?></td>
                                    <td><?= $item['jurusan'] ?></td>
                                    <td><?= $item['created_at'] ?></td>
                                    <td class="d-flex ">
                                      <a href="<?= '/'.SITE_NAME.'/edit?id=' . $item['id']  ?>" class="btn btn-warning py-2 px-4 btn-fw text-white">Edit</a>
                                      <a href="<?= '/'.SITE_NAME.'/detail?id=' . $item['id']  ?>" class="btn btn-success py-2 px-4 btn-fw text-white">Detail</a>
                                      <form action="" method="">
                                        <button type="submit" class="btn btn-danger py-2 px-4 btn-fw text-white" onclick="return confirm('Yakin Hapus Data?')">Hapus</button>
                                      </form>
                                    </td>
                                  </tr>
                                  <?php 
                                    }; 
                                  ?>
                                </tbody>
                              </table>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- content-wrapper ends -->
    <!-- partial:partials/_footer.html -->
    <footer class="footer">
      <div class="d-sm-flex justify-content-center justify-content-sm-between">
        <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash.</span>
        <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Copyright © 2021. All rights reserved.</span>
      </div>
    </footer>
    <!-- partial -->
  </div>
