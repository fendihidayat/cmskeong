
    <!-- ======= Blog Section ======= -->
    <div id="blog" class="blog-area">
      <div class="blog-inner area-padding">
        <div class="blog-overly"></div>
        <div class="container ">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="section-headline text-center">
                <h2>Berita dan Informasi</h2>
              </div>
            </div>
          </div>
          <div class="row">
          <?php  
            $i=1;
            foreach($trending as $headlinetrend){ ?>
            <!-- Start Left Blog -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="single-blog">
                <div class="single-blog-img">
                <?php echo "<a href='".base_url()."news/read/$headlinetrend->link'>"; ?>
                  
                  <?php echo "<img src='".base_url()."gambar/berita/$headlinetrend->gambar' height='300px' alt='$headlinetrend->deskripsi_gambar'>
                  " ?>
                  </a>
                </div>
                <div class="blog-meta">
                  <span class="comments-type">
                    <i class="fa fa-list-alt"></i>
                    <a href="#"><?php echo $headlinetrend->nama_kategori; ?></a>
                  </span>
                  <span class="date-type">
                    <i class="fa fa-calendar"></i><?php echo $headlinetrend->tanggal; ?> / <?php echo $headlinetrend->jam; ?>
                  </span>
                </div>
                <div class="blog-text">
                  <h4>
                    <?php echo "<a href='".base_url()."news/read/$headlinetrend->link'>$headlinetrend->judul</a>"; ?>
                  </h4>
                  <!-- <p>
                    Lorem ipsum dolor sit amet conse adipis elit Assumenda repud eum veniam optio modi sit explicabo nisi magnam quibusdam.sit amet conse adipis elit Assumenda repud eum veniam optio modi sit explicabo nisi magnam quibusdam.
                  </p> -->
                </div>
                <!--
                <span>
                  <a href="blog.html" class="ready-btn">Read more</a>
                </span>-->
              </div>
              <!-- Start single blog -->
            </div>
            <!-- End Left Blog-->
            <?php } ?>
          </div>
        </div>
      </div>
    </div><!-- End Blog Section -->