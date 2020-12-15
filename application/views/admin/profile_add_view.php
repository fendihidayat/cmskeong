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
            
        <form role="form" action="<?php echo base_url(). 'profile/simpan'; ?>" method="post" enctype="multipart/form-data">
                    <div class="card-body"> 
                            <div class="form-group">
                                <label>Nama Lengkap</label>
                                <input type="text" name="nama_lengkap"  class="form-control" id="exampleInputEmail1" placeholder="Nama Lengkap" required>
                            </div>
                            <div class="form-group">                            
                            <label>Alamat Rumah</label>
                                <textarea name="alamat_tinggal" class="form-control" id="exampleFormControlTextarea1" rows="3" required></textarea>                            
                            </div>
                            <div class="form-group">
                                <label>Provinsi</label>
                                <select name="provinsi_tinggal" id="provinsi" class="form-control">
                                    <option value="0">-PILIH-</option>
                                    <?php foreach($provinsi as $provinsi){ 
                                        echo "<option value='".$provinsi->id_prov."'>".$provinsi->nama_provinsi."</option>";
                                    } ?>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Kota</label>
                                <select name="kota_tinggal" id="kota" class="form-control">
                                    <option value="0">-PILIH-</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>No HP</label>
                                <input type="text" name="no_hp"  class="form-control" id="exampleInputEmail1" placeholder="No HP" required>
                            </div>
                            <div class="form-group">
                                <label>No WA</label>
                                <input type="text" name="no_wa"  class="form-control" id="exampleInputEmail1" placeholder="No WA" required>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Upload Foto Profile</label>
                                <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" name="gambar" class="custom-file-input" id="exampleInputFile" required>
                                    <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                </div>
                                </div>
                            </div>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->                
            </div>
            <div class="col-md-6">
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Identitas Lanjutan</h3>
                    </div><!-- form start -->
                        <div class="card-body">
                            <!--
                            <div class="form-group">
                                <label>NIM Di Polibatam</label>
                                <input type="text" name="nomor_induk"  class="form-control" id="exampleInputEmail1" placeholder="NIM Di Polibatam">
                            </div> -->
                            <table>
                            <tr><td width='15%'>
                                <div class="form-group">
                                    <label>Jenjang</label>
                                    <select name="jenjang_jurusan" class="form-control" required>
                                        <option value="D3">D3</option>
                                        <option value="D4">D4</option>
                                    </select>
                                </div>
                            </td><td>&nbsp; </td>
                            <td width='80%'>
                                <div class="form-group">
                                    <label>Jurusan Di Polibatam</label>
                                    <select name="jurusan_kuliah" class="form-control" required>
                                        <?php foreach($jurusan as $jurusan){ 
                                            echo "<option value='".$jurusan->nama_jurusan."'>".$jurusan->nama_jurusan."</option>";
                                        } ?>
                                    </select>
                                </div>
                            </td></tr>
                        </table>        
                            
                        <table>
                            <tr><td width='45%'>
                                <div class="form-group">
                                    <label>Tahun Masuk Kuliah Di Polibatam</label>
                                    <input type="text" name="tahun_masuk_kuliah"  class="form-control" id="exampleInputEmail1" placeholder="Tahun Masuk Kuliah Di Polibatam" required>
                                </div>
                            </td><td>&nbsp; </td>
                            <td width='45%'>
                                <div class="form-group">
                                    <label>Tahun Lulus Kuliah Di Polibatam</label>
                                    <input type="text" name="tahun_lulus_kuliah"  class="form-control" id="exampleInputEmail1" placeholder="Tahun Lulus Kuliah Di Polibatam">
                                </div>
                            </td></tr>
                        </table>                            
                            
                            <div class="form-group">
                                <label>Nama Perusahaan/Usaha</label>
                                <input type="text" name="nama_perusahaan"  class="form-control" id="exampleInputEmail1" placeholder="Nama Perusahaan/Usaha" required>
                            </div>
                            <div class="form-group">
                                <label>Status Perusahaan/Usaha</label>
                                <select name="status_perusahaan" class="form-control" required>
                                    <option value="Milik Sendiri">Milik Sendiri</option>
                                    <option value="Karyawan/Pegawai">Karyawan/Pegawai</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Perusahaan Bergerak dibidang</label>
                                <select name="bidang_pekerjaan" class="form-control" required>
                                    <option value="0">-PILIH-</option>
                                    <?php foreach($bidang_perusahaan as $bidang_perusahaan){ 
                                        echo "<option value='".$bidang_perusahaan->nama_bidang."'>".$bidang_perusahaan->nama_bidang."</option>";
                                    } ?>
                                </select>
                            </div>
                            <div class="form-group">                            
                            <label>Alamat Perusahaan</label>
                                <textarea name="alamat_perusahaan" class="form-control" id="exampleFormControlTextarea1" rows="2" required></textarea>                            
                            </div>
                            <div class="form-group">
                                <label>Jabatan/Posisi Pekerjaan</label>
                                <input type="text" name="jabatan_kerja"  class="form-control" id="exampleInputEmail1" placeholder="Jabatan/Posisi Pekerjaan" required>
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
        </div>
        <!-- /.row -->        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">
    $(document).ready(function(){
        $('#provinsi').change(function(){
            var id=$(this).val();
            //alert(id);
            $.ajax({
                url : "<?php echo base_url();?>profile/get_kabkota",
                method : "post",
                data : {id: id},
                async : false,
                dataType : 'json',
                success: function(response){
                      // Remove options 
                      $('#kota').find('option').not(':first').remove();                    
                      // Add options                    
                      $.each(response,function(index,data){
                         $('#kota').append('<option value="'+data['nama_kabkota']+'">'+data['nama_kabkota']+'</option>');
                      });
                    
                    /*function(data){
                    var html = '';
                    var i;
                    for(i=0; i<data.length; i++){
                        html += '<option value="'+data['nama_kabkota']+'">'+data[i].nama_kabkota+'</option>';
                        
                        //alert(i);
                    }
                    $('#kota').html(html);
                    */                     
                }
            });
        });
    });
</script>

<?php
    $this->load->view('admin_layout/7_footer');