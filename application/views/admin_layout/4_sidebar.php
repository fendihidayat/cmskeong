 <!-- Brand Logo -->
    <a href="<?php echo base_url(); ?>" class="brand-link">
      <img src="<?php echo base_url(); ?>gambar/<?php echo $this->session->userdata('favicon'); ?>" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light"><?php echo $this->session->userdata('nama_website'); ?></span>
    </a>
     <!-- Sidebar -->
    <div class="sidebar">
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<?php echo base_url(); ?>assets/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" ><?php echo $this->session->userdata('nama');?></a>
        </div>
      </div>
