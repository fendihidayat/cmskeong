
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item ">
            <a href="<?php echo base_url(); ?>" 
                <?php if($menu == "dashboard"){ echo "class='nav-link active'"; }else{ echo "class='nav-link'"; }?>>
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
                    
          <li <?php if($menu == "berita" || $menu == "tambahberita" || $menu == "kategori")
          { echo "class='nav-item has-treeview menu-open'"; }else{ echo "class='nav-item has-treeview'"; } ?>>
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-thumbtack"></i>
              <p>
                Berita
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
              <a href="<?php echo base_url('berita'); ?>" 
              <?php if($menu == "berita"){ echo "class='nav-link active'"; }else{ echo "class='nav-link'"; } ?>>
                  <!-- <i class="fas fa-list nav-icon"></i> -->
                  <p>Daftar Berita</p>
                </a>
              </li>
              <li class="nav-item">
              <a href="<?php echo base_url('berita/tambahberita'); ?>" 
              <?php if($menu == "tambahberita"){ echo "class='nav-link active'"; }else{ echo "class='nav-link'"; } ?>>
                  <!-- <i class="far fa-plus-square nav-icon"></i> -->
                  <p>Tambah Berita Baru</p>
                </a>
              </li>
              <li class="nav-item">
              <a href="<?php echo base_url('kategori'); ?>" 
              <?php if($menu == "kategori"){ echo "class='nav-link active'"; }else{ echo "class='nav-link'"; } ?>>
                <!-- <i class="nav-icon fas fa-clipboard-list"></i> -->
                <p>
                  Kategori Berita
                </p>
              </a>
            </li>
            </ul>
          </li>   
 
          
                  
          <li class="nav-item has-treeview">
            <a href="<?php echo base_url('user'); ?>" 
            <?php if($menu == "user"){ echo "class='nav-link active'"; }else{ echo "class='nav-link'"; } ?>>
              <i class="nav-icon fas fa-users-cog"></i>
              <p>
                Manajemen User
               <!-- <i class="fas fa-angle-left right"></i> -->
              </p>
            </a>
            <!--
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?php// echo base_url('user/daftaruser'); ?>" 
                <?php //if($menu == "daftaruser"){ echo "class='nav-link active'"; }else{ //echo "class='nav-link'"; } ?>>
                  <i class="fas fa-list-ol nav-icon"></i>
                  <p>Daftar User</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/forms/advanced.html" class="nav-link">
                  <i class="far fa-user nav-icon"></i>
                  <p>Tambah User</p>
                </a>
              </li>
            </ul>
            -->
          </li>

                   
          <li <?php if($menu == "idwebsite" || $menu == "cpwebsite" || $menu == "website")
          { echo "class='nav-item has-treeview menu-open'"; }else{ echo "class='nav-item has-treeview'"; } ?>>
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-cogs"></i>
              <p>
                Pengaturan
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">     
              <li class="nav-item">
                <a href="<?php echo base_url('website/kontak'); ?>" 
                <?php if($menu == "cpwebsite"){ echo "class='nav-link active'"; }else{ echo "class='nav-link'"; } ?>>
                  <!-- <i class="nav-icon fas fa-headset"></i> -->
                  <p>
                    Hubungi Kami
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo base_url('website/identitas'); ?>" 
                <?php if($menu == "idwebsite"){ echo "class='nav-link active'"; }else{ echo "class='nav-link'"; } ?>>
                  <!-- <i class="nav-icon fas fa-info"></i> -->
                  <p>
                    Identitas Website
                  </p>
                </a>
              </li>
            </ul>
          </li>

            
          <li class="nav-item has-treeview">
            <a href="<?php echo base_url('login/logout'); ?>" 
            <?php if($menu == "logout"){ echo "class='nav-link active'"; }else{ echo "class='nav-link'"; } ?>>
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>
                Keluar
               <!-- <i class="fas fa-angle-left right"></i> -->
              </p>
            </a>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">