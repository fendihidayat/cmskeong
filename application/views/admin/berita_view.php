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
            <h1>Berita</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url(). $menu; ?>">Berita</a></li>
              <li class="breadcrumb-item active">Lihat Detail Berita</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
        
            <div class="col-6">
                
                <?php foreach($berita as $data_berita){ ?>
                <div class="card card-primary card-outline">
                    <div class="card-header">
                    <h3 ><?php echo $data_berita->judul; ?></h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body p-0">
                    <div class="mailbox-read-info">
                        <h5>Ditulis : <?php echo $data_berita->nama_user; ?></h5>
                        <h6>
                        <?php echo $data_berita->hari.", ".$data_berita->tanggal.", ".$data_berita->jam; ?> </h6>
                    </div>
                    <!-- /.mailbox-read-info -->
                    <div class="mailbox-controls with-border text-center">
                        <div class="btn-group">
                        
                                    <a href="<?php echo base_url(); ?>berita/edit/<?php echo $data_berita->id_berita; ?>" title="Edit">
                                    <i class="fas fa-edit"></i></a>
                                    <a href="<?php echo base_url(); ?>berita/hapus/<?php echo $data_berita->id_berita; ?>" title="Hapus">
                                    <i class="fas fa-trash"></i></a>
                                    
                        </div>
                    </div>
                    <!-- /.mailbox-controls -->
                    <div class="mailbox-read-message">
                        <?php 
                        echo "<img src='../../gambar/berita/$data_berita->gambar' width='100%' height='305' align='center'>";
                        echo "<small>".$data_berita->deskripsi_gambar."</small><p>";
                        echo $data_berita->isi_berita; ?>
                    </div>
                    <!-- /.mailbox-read-message -->
                    </div>
                    <!-- /.card-body -->
                    
                    <!-- /.card-footer -->
                </div>
                <!-- /.card -->
                <?php } ?>

            </div>
            
            <div class="col-6">
                <div class="card">
                    <!-- /.card-header -->
                    <div class="card-body">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                        <th>Judul</th>
                        <th>Penulis</th>
                        <th>Tanggal</th>
                        <th>Kategori</th>
                        <th>Aksi</th>
                        </tr>
                        </thead>
                        <tbody>
                <?php foreach($allberita as $all_berita){ ?>                    
                        <tr>
                        <td><?php echo $all_berita->judul; ?></td>    
                        <td><?php echo $all_berita->nama_user; ?></td>  
                        <td><?php echo $all_berita->tanggal; ?></td>   
                        <td><?php echo $all_berita->nama_kategori; ?></td>  
                        <td><a href="<?php echo base_url(); ?>berita/view/<?php echo $all_berita->id_berita; ?>"  title="View">
                        <i class="fas fa-eye"></i></a>
                        </td>
                        </tr>
                <?php } ?>
                        </tfoot>
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