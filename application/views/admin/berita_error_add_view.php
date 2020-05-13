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
            <h1>Tulis Berita Baru</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url()."berita/"; ?>">Berita</a></li>
              <li class="breadcrumb-item active">Tambah Berita Baru</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

                
    <form role="form" action="<?php echo base_url(). 'berita/simpan'; ?>" method="post" enctype="multipart/form-data">
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
            <div class="col-md-9">
                <div class="card card-primary">
                        <div class="card-body">
                            <div class="form-group">
                               
                                <input type="text" value="<?php echo $judul; ?>" name="judul" class="form-control" placeholder="Tulis Judul Berita" 
                                style="width: 100%; height: 100%; font-size: 40px; font-weight: bold; line-height: 18px; border: 1px solid #dddddd; padding: 5px;"required>
                                <div class="alert alert-warning alert-dismissible fade show">
                                        <strong>Error!</strong> Judul berita sudah ada.
                                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    </div>
                            </div>
                            <!-- /.card-header -->
                            <div class="mb-3">                            
                            <label>Isi Berita</label>                                
                                <textarea name="isi_berita" id="summernote" required>
                                    <?php echo $isi_berita; ?>
                                </textarea>
                            </div>
                        </div>
                        <!-- /.card-body -->
                </div>
                <!-- /.card -->                
            </div>
            <div class="col-md-3">
                <div class="card card-success">
                    <!-- /.card-header -->
                    <div class="card-body"> 
                    
                        <div class="form-group">
                            <button type="submit"  name="Simpan" class="btn btn-primary">Simpan</button>
                        </div>

                            <div class="form-group">
                                <label>Kategori</label> 
                                <select name="kategori" class="form-control" >
                                    <?php
                                    foreach($kategori as $listkategori){ ?>
                                       <option <?php echo "value='".$listkategori->nama_kategori."'";
                                            if($listkategori->nama_kategori == $nama_kategori){echo "selected";}?>><?php echo $listkategori->nama_kategori;?></option>;
                                    <?php } ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Publish</label>
                                <select name="publish" class="form-control" >
                                    <option value="Y" <?php if($publish == 'Y'){echo "selected";} ?>>Ya</option>
                                    <option value="N" <?php if($publish == 'N'){echo "selected";} ?>>Tidak</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Headline</label>
                                <select name="headline" class="form-control" >
                                    <option value="N" <?php if($headline == 'N'){echo "selected";} ?>>Tidak</option>
                                    <option value="Y" <?php if($headline == 'Y'){echo "selected";} ?>>Ya</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Gambar</label><label>Gambar</label>
                                <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" name="gambar" class="custom-file-input" id="exampleInputFile" required>
                                    <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                </div>
                                </div>
                            </div>
                            <div class="form-group">                         
                            <label>Deskripsi Gambar</label>
                                <textarea name="deskripsi_gambar" class="note"  required>
                                    <?php echo $deskripsi_gambar; ?>
                                </textarea>
                            
                            </div>
                            <!-- /.card-header -->
                            <div class="mb-3">                            
                            <label>Tag/Label</label>
                                <textarea name="tag_label" class="note"  required>
                                    <?php echo $tag_label; ?>
                                </textarea>
                            <small>*Pisahkan dengan tanda koma</small>
                            </div>

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
    </form>

<?php
    $this->load->view('admin_layout/7_footer');