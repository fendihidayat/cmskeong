
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="<?php echo base_url(); ?>assets/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" ><?php echo $this->session->userdata('nama');?></a>
          <?php  echo "<a href='".base_url('login/logout')."'>( Logout )</a>";?>
        </div>
      </div>
