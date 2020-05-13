<?php
    $this->load->view('admin_layout/1_header');
    $this->load->view('admin_layout/2_navbar');
    $this->load->view('admin_layout/3_main');
    $this->load->view('admin_layout/4_sidebar');
    $this->load->view('admin_layout/5_menu');
?>

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Manajemen User</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url(). 'user'; ?>">Manajemen User</a></li>
              <li class="breadcrumb-item active">Ubah Data User</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Ubah Data User</h3>
                    </div><!-- form start -->
                    <form role="form" action="<?php echo base_url(). 'user/update'; ?>" method="post" enctype="multipart/form-data">
                        <?php 
                            foreach($users as $user){ 
                        ?>
                        <tr>
                        <div class="card-body">
                            <div class="form-group">
                                <label>Username</label>
                                <input type="hidden" value="<?php echo $user->username; ?>" name="username_asli" class="form-control" id="exampleInputEmail1" placeholder="Username">                            
                                <input type="text" value="<?php echo $user->username; ?>" name="username" class="form-control" id="exampleInputEmail1" placeholder="Username" required>
                            </div>
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" value="<?php echo $user->nama_lengkap; ?>" name="nama_lengkap"  class="form-control" id="exampleInputEmail1" placeholder="Nama Lengkap" required>
                            </div>
                            <div class="form-group">
                                <label>Email address</label>
                                <input type="email" value="<?php echo $user->email; ?>"  name="email"  class="form-control" id="exampleInputEmail1" placeholder="Enter email" required>
                            </div>
                            <div class="form-group">
                                <label>Password (baru)</label>
                                <input type="password" name="password"  class="form-control" id="exampleInputPassword1" placeholder="Password"  required>
                                <span class="info-container"> <small>*Kosongkan jika tidak ingin merubah password</small></span>
                            </div>
                            <div class="form-group">
                                <label>Level</label>
                                <select name="level" class="form-control">
                                    <option value="user" <?php if($user->level == 'user'){echo "selected";} ?>>user</option>
                                    <option value="admin" <?php if($user->level == 'admin'){echo "selected";} ?>>admin</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Blokir</label>
                                <select name="blokir" class="form-control">
                                    <option value="N" <?php if($user->blokir == 'N'){echo "selected";} ?>>Tidak</option>
                                    <option value="Y" <?php if($user->blokir == 'Y'){echo "selected";} ?>>Ya</option>
                                </select>
                            </div>
                        </div>
                        <!-- /.card-body -->
                        
                        <?php } ?>

                        <div class="card-footer">
                        <button type="submit"  name="ubah" class="btn btn-primary">Ubah</button>
                        </div>
                    </form>
                </div>
                <!-- /.card -->                
            </div>
            <div class="col-md-6">
                <div class="card card-success">
                    <div class="card-header">
                        <h3 class="card-title">Data Lengkap User Yang Akan Diubah</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body p-0">                        
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                <th style="width: 10px">No</th>
                                <th>Usename</th>
                                <th>Nama Lengkap</th>
                                <th>Email</th>
                                <th>Level</th>
                                <th>Blokir</th>
                                </tr>
                            </thead>
                            <tbody>
                            <!-- Menampilkan list data user dari database-->
                            <?php 
                            $i=1;
                            foreach($users as $user2){ 
                            ?>
                                <tr>
                                    <td><?php echo $i; ?></td>                                    
                                    <td><?php echo $user2->username; ?></td>                         
                                    <td><?php echo $user2->nama_lengkap; ?></td>                         
                                    <td><?php echo $user2->email; ?></td>                                 
                                    <td><?php echo $user2->level; ?></td>                                 
                                    <td><?php echo $user2->blokir; ?></td>     
                                </tr>
                                <?php $i++; } ?>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->                
            </div>
        </div>
        <!-- /.row -->        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->


<?php
    $this->load->view('admin_layout/7_footer');