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
            <h1><? echo $describe_menu; ?></h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url(). $menu ; ?>"><? echo $describe_menu; ?> </a></li>
              <li class="breadcrumb-item active">Lihat <? echo $describe_menu; ?></li>
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
                <div class="card card-success">
                    <div class="card-header">
                        <h3 class="card-title">Identitas Alumni</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body"> 
<?php
$i=1;
foreach($profile as $profile){ 
    echo $profile->username."<br>".$profile->nama_lengkap."<br>".$profile->jenjang_jurusan."<br>".$profile->jurusan_kuliah."<br>".$profile->alamat_tinggal."<br>".$profile->kota_tinggal."<br>".$profile->provinsi_tinggal."<br>".$profile->tahun_masuk_kuliah."<br>".$profile->tahun_lulus_kuliah."<br>".$profile->no_hp."<br>".$profile->no_wa."<br>".$profile->nama_perusahaan."<br>".$profile->alamat_perusahaan."<br>".$profile->jabatan_kerja."<br>".$profile->status_perusahaan."<br>".$profile->bidang_pekerjaan;

?>

                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->                
            </div>
            <div class="col-md-6">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Foto Profile</h3>
                    </div><!-- form start -->
                        <div class="card-body">
                            
                            <div class="mailbox-read-message">
                                <?php 
                                    echo "<img src='".base_url()."gambar/profile/$profile->foto_profile' width='100%' align='center'>";
}
                                ?>
                            </div>
                            
                        </div>
                    </form>
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