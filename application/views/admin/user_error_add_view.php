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
              <li class="breadcrumb-item active">Lihat Daftar User</li>
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
                        <h3 class="card-title">Tambah User</h3>
                    </div><!-- form start -->
                    <form role="form" action="<?php echo base_url(). 'user/simpan'; ?>" method="post" enctype="multipart/form-data">
                        <div class="card-body">
                            <div class="form-group">
                                <label>Username</label>
                                <input type="text" value="<?php echo $username;?>" name="username" class="form-control" id="exampleInputEmail1" placeholder="Username" required>
                                    <div class="alert alert-warning alert-dismissible fade show">
                                        <strong>Error!</strong> Maaf, username sudah digunakan.
                                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    </div>
                            </div>
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" value="<?php echo $nama_lengkap;?>" name="nama_lengkap"  class="form-control" id="exampleInputEmail1" placeholder="Nama Lengkap" required>
                            </div>
                            <div class="form-group">
                                <label>Email address</label>
                                <input type="email" value="<?php echo $email;?>" name="email"  class="form-control" id="exampleInputEmail1" placeholder="Enter email" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password"  class="form-control" id="exampleInputPassword1" placeholder="Password" required>
                            </div>
                            <div class="form-group">
                                <label>Level</label>
                                <select name="level" class="form-control">
                                    <option value="user" <?php if($level == 'user'){echo "selected";} ?>>user</option>
                                    <option value="admin" <?php if($level == 'admin'){echo "selected";} ?>>admin</option>
                                </select>
                            </div>
                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                        <button type="submit"  name="simpan" class="btn btn-primary">Simpan</button>
                        </div>
                    </form>
                </div>
                <!-- /.card -->                
            </div>
            <div class="col-md-6">
                <div class="card card-success">
                    <div class="card-header">
                        <h3 class="card-title">Daftar User</h3>
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
                                <th style="width: 40px">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                            <!-- Menampilkan list data user dari database-->
                                <?php 
                                $i=1;
                                foreach($users as $users){ ?>
                                <tr>
                                    <td><?php echo $i; ?></td>                                    
                                    <td><?php echo $users->username; if($users->blokir == 'Y'){echo " <i class='fas fa-ban'></i>";} ?></td>                         
                                    <td><?php echo $users->nama_lengkap; ?></td>                         
                                    <td><?php echo $users->email; ?></td>                                 
                                    <td><?php echo $users->level; ?></td>                         
                                    <td>
                                        <a href="<?php echo base_url(); ?>user/edit/<?php echo $users->username; ?>" title="Edit">
                                            <i class="fas fa-edit"></i></a>
                                        <a href="<?php echo base_url(); ?>user/hapus/<?php echo $users->username; ?>" title="Hapus">
                                            <i class="fas fa-trash"></i></a>&nbsp;
                                    </td>
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