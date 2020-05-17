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
            <h1>Pengaturan</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url(). 'website'; ?>">Pengaturan</a></li>
              <li class="breadcrumb-item active">Info Website</li>
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
                        <h3 class="card-title">Kontak Website</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body p-0">                        
                        <table class="table table-striped">
                            <!-- Menampilkan list data user dari database-->
                                <?php 
                                foreach($identitas_website as $datawebsite){ ?>                                  
                                <tr><td>Nama Website</td>    <td><?php echo $datawebsite->nama_website; ?></td>  </tr>                                      
                                <tr><td>Footer</td>    <td><?php echo $datawebsite->footer; ?></td> </tr>                         
                                <tr><td></td>    <td>
                                        <a href="<?php echo base_url(); ?>website/edit/<?php echo $datawebsite->id_website; ?>" title="Edit">
                                            <i class="fas fa-edit"></i></a>
                                    </td>
                                </tr>
                                <?php } ?>
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->                
            </div>
            <div class="col-md-6">
                <div class="card card-success">
                    <div class="card-header">
                        <h3 class="card-title">Identitas Website</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body p-0">                        
                        <table class="table table-striped">
                            <!-- Menampilkan list data user dari database-->
                                <?php 
                                foreach($identitas_website as $datawebsite){ ?>
                                <tr><td>ID</td><td><?php echo $datawebsite->id_website; ?></td></tr>                                    
                                <tr><td>Nama Website</td>    <td><?php echo $datawebsite->nama_website; ?></td>  </tr>                              
                                <tr><td>Title Website</td>    <td><?php echo $datawebsite->title_website; ?></td>  </tr>                          
                                <tr><td>Meta Deskripsi</td>    <td><?php echo $datawebsite->meta_deskripsi; ?></td> </tr>                         
                                <tr><td>Meta Keyword</td>    <td><?php echo $datawebsite->meta_keyword; ?></td>     </tr>                         
                                <tr><td>Favicon</td>    <td><img src="<?php echo base_url(); ?>gambar/<?php echo $datawebsite->favicon; ?>"></td></tr>                                  
                                <tr><td>Footer</td>    <td><?php echo $datawebsite->footer; ?></td> </tr>                         
                                <tr><td></td>    <td>
                                        <a href="<?php echo base_url(); ?>user/edit/<?php echo $datawebsite->id_website; ?>" title="Edit">
                                            <i class="fas fa-edit"></i></a>
                                    </td>
                                </tr>
                                <?php } ?>
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