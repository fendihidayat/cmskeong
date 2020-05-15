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
              <li class="breadcrumb-item active">Lihat Semua Berita</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
        
            <div class="col-12">
                <div class="card">
                    <!-- /.card-header -->
                    <div class="card-body">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                        <th>ID Berita</th>
                        <th>Judul</th>
                        <th>Penulis</th>
                        <th>Kategori</th>
                        <th>Tag/Label</th>
                        <th>Tanggal</th>
                        <th>Pembaca</th>
                        <th>Aksi</th>
                        </tr>
                        </thead>
                        <tbody>
                <?php foreach($berita as $data_berita){ ?>
                        <tr>
                        <td><?php echo $data_berita->id_berita; ?></td>
                        <td><?php echo $data_berita->judul; ?></td>
                        <td><?php echo $data_berita->nama_user; ?></td>
                        <td><?php echo $data_berita->nama_kategori; ?></td>
                        <td><?php echo $data_berita->tag_label; ?></td>
                        <td><?php echo $data_berita->tanggal; ?></td>
                        <td><?php echo $data_berita->dibaca; ?></td>                       
                        <td>
                            <a href="<?php echo base_url(); ?>berita/view/<?php echo $data_berita->id_berita; ?>" title="View">
                              <i class="fas fa-eye"></i></a>
                            <a href="<?php echo base_url(); ?>berita/edit/<?php echo $data_berita->id_berita; ?>" title="Edit">
                              <i class="fas fa-edit"></i></a>
                            <a href="<?php echo base_url(); ?>berita/hapus/<?php echo $data_berita->id_berita; ?>" title="Hapus">
                              <i class="fas fa-trash"></i></a>&nbsp;
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