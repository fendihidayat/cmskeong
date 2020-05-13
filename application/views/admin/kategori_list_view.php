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
            <h1>Kelola Kategori Berita</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url(). $menu; ?>">Kelola Kategori Berita</a></li>
              <li class="breadcrumb-item active">Lihat Kategori Berita</li>
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
                        <h3 class="card-title">Tambah Kategori Berita</h3>
                    </div><!-- form start -->
                    <form role="form" action="<?php echo base_url(). 'kategori/simpan'; ?>" method="post" enctype="multipart/form-data">
                        <div class="card-body">
                            <div class="form-group">
                                <label>Nama Kategori</label>
                                <input type="text" name="nama_kategori" class="form-control" id="exampleInputEmail1" placeholder="Nama Kategori Berita" required>
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
                        <h3 class="card-title">Daftar Kategori Berita</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body p-0">                        
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                <th style="width: 10px">No</th>
                                <th>ID Kategori</th>
                                <th>Nama Kategori</th>
                                <th>Inisial Kategori</th>
                                <th>Link</th>
                                <th style="width: 40px">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                            <!-- Menampilkan list data kategori dari database-->
                                <?php 
                                $i=1;
                                foreach($kategori as $isi_data){ ?>
                                <tr>
                                    <td><?php echo $i; ?></td>                                    
                                    <td><?php echo $isi_data->id_kategori; ?></td>                         
                                    <td><?php echo $isi_data->nama_kategori; ?></td>                         
                                    <td><?php echo $isi_data->inisial_kategori ?></td>                                 
                                    <td><?php echo ""; ?></td>                         
                                    <td>
                                        <a href="<?php echo base_url(); ?>kategori/edit/<?php echo $isi_data->id_kategori; ?>" title="Edit">
                                            <i class="fas fa-edit"></i></a>
                                        <a href="<?php echo base_url(); ?>kategori/hapus/<?php echo $isi_data->id_kategori; ?>" title="Hapus">
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