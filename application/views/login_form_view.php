<?php
	$this->load->view('admin_layout/1_header');
?>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <img src='<?php echo base_url().'gambar/logologin2.png'; ?>' width='333' height='150'>
    <!-- <a href="../../index2.html"><b>Admin</b>LTE</a> -->
  </div>
  	  	
  <?php 
			  if($pesan != ""){
				  echo "<div class='alert alert-danger alert-dismissible fade show'>";
				  echo "<strong>Error : </strong>$pesan";
				  //echo "<button type='button' class='close' data-dismiss='alert'>&times;</button>";
				  echo "</div>";
			  }
			  	
			  ?>       
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <form action="<?php echo base_url().'login/aksi_login'; ?>" method="post">
        <div class="input-group mb-3">
          <input type="text" name='usernama' class="form-control" placeholder="Username">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" name='sandi' class="form-control" placeholder="Password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>	       
            
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Log in</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
	  <!--
      <p class="mb-1">
        <a href="forgot-password.html">I forgot my password</a>
      </p>
      <p class="mb-0">
        <a href="register.html" class="text-center">Register a new membership</a>
      </p>
	  -->
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

</div>