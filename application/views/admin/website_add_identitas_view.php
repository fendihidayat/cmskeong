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
              <li class="breadcrumb-item active">Identitas Website</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        
        <?php 
        //echo count($identitas_website);
        foreach($identitas_website as $datawebsite){ ?>
        <div class="row">
            <div class="col-md-6">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title"><?php if(count($identitas_website)<1){ echo'Atur Identitas Website';}else{ echo'Ganti Identitas Website';}?></h3>
                    </div><!-- form start -->
                    <form role="form" action="<?php 
                        if(count($identitas_website)<1){ echo base_url(). 'website/simpan_identitas';}
                        else{echo base_url(). 'website/update_identitas';} ?>" method="post" enctype="multipart/form-data">
                        <div class="card-body">
                            <div class="form-group">
                                <?php if(count($identitas_website)>=1){ echo"<input type='hidden' name='id_website' value='$datawebsite->id_website'>";}?>
                                <label>Nama Website</label>
                                <input type="text" name="nama_website" <?php if(count($identitas_website)>=1){ echo"value='$datawebsite->nama_website'";}?> class="form-control" id="exampleInputEmail1" placeholder="Nama Website" required>
                            </div>
                            <div class="form-group">
                                <label>Title Website</label>
                                <input type="text" name="title_website" <?php if(count($identitas_website)>=1){ echo"value='$datawebsite->title_website'";}?> class="form-control" id="exampleInputEmail1" placeholder="Nama Website" required>
                            </div>
                            <div class="form-group">
                                <label>Meta Deskripsi</label>
                                <input type="text" name="meta_deskripsi" <?php if(count($identitas_website)>=1){ echo"value='$datawebsite->meta_deskripsi'";}?> class="form-control" id="exampleInputEmail1" placeholder="Meta Deskripsi" required>
                            </div>
                            <div class="form-group">
                                <label>Meta Keyword</label>
                                <input type="text" name="meta_keyword" <?php if(count($identitas_website)>=1){ echo"value='$datawebsite->meta_keyword'";}?> class="form-control" id="exampleInputEmail1" placeholder="Meta Keyword" required>
                            </div>
                            <div class="form-group">
                            <?php if(count($identitas_website)>=1){?>
                                <label>Gambar Favicon</label> <img src="<?php echo base_url(); ?>gambar/<?php echo $datawebsite->favicon; ?>"><br>
                            <?php echo "<label>Ubah Gambar Favicon</label>";}else{ echo "<label>Gambar Favicon</label>"; } ?>
                                <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" name="gambar" class="custom-file-input" id="exampleInputFile">
                                    <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Footer</label>
                                <input type="text" name="footer" <?php if(count($identitas_website)>=1){ echo"value='$datawebsite->footer'";}?> class="form-control" id="exampleInputEmail1" placeholder="Footer" required>
                            </div>
                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                        <button type="submit"  name="simpan" class="btn btn-primary"><?php if(count($identitas_website)<1){ echo'Simpan';}else{ echo'Update';}?></button>
                        </div>
                    </form>
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
                                <tr><td>ID</td><td><?php echo $datawebsite->id_website; ?></td></tr>                                    
                                <tr><td>Nama Website</td>    <td><?php echo $datawebsite->nama_website; ?></td>  </tr>                                  
                                <tr><td>Title Website</td>    <td><?php echo $datawebsite->title_website; ?></td>  </tr>                        
                                <tr><td>Meta Deskripsi</td>    <td><?php echo $datawebsite->meta_deskripsi; ?></td> </tr>                         
                                <tr><td>Meta Keyword</td>    <td><?php echo $datawebsite->meta_keyword; ?></td>     </tr>                         
                                <tr><td>Favicon</td>    <td><img src="<?php echo base_url(); ?>gambar/<?php echo $datawebsite->favicon; ?>"></td></tr>                                  
                                <tr><td>Footer</td>    <td><?php echo $datawebsite->footer; ?></td> </tr>                        
                                
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->                
            </div>
        </div>
     <?php } ?>
        <!-- /.row -->        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->


<?php
    $this->load->view('admin_layout/7_footer');