  
    <!--   Weekly-News start -->
    <div class="weekly-news-area pt-50">
        <div class="container">
           <div class="weekly-wrapper">
                <!-- section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle mb-30">
                            <h3>Weekly Top News</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="weekly-news-active dot-style d-flex dot-style">

                            <?php  
                            $i=1;
                            foreach($trending as $headlinetrend){
                                if($i<2){
                                    echo "
                                <div class='weekly-single active'>";
                                }else{
                                    echo "
                                <div class='weekly-single'>";
                                }
                                echo "
                                    <div class='weekly-img'>
                                        <img src='".base_url()."gambar/berita/$headlinetrend->gambar' height='360px' width='420px' alt='$headlinetrend->deskripsi_gambar'>
                                    </div>
                                    <div class='weekly-caption'>
                                        <span class='color".$i."'>$headlinetrend->nama_kategori</span>
                                        <h4><a href='news/read/$headlinetrend->link'>$headlinetrend->judul</a></h4>
                                    </div>
                                </div> 
                                ";
                                $i++;
                            }?>

<!--
                            <div class="weekly-single">
                                <div class="weekly-img">
                                    <img src="<?php //echo base_url(); ?>assets/front_end/img/news/weeklyNews2.jpg" alt="">
                                </div>
                                <div class="weekly-caption">
                                    <span class="color1">Strike</span>
                                    <h4><a href="#">Welcome To The Best Model  Winner Contest</a></h4>
                                </div>
                            </div> 
                            <div class="weekly-single active">
                                <div class="weekly-img">
                                        <img src="<?php //echo base_url(); ?>assets/front_end/img/news/weeklyNews1.jpg" alt="">
                                </div>
                                <div class="weekly-caption">
                                    <span class="color1">Strike</span>
                                    <h4><a href="#">Welcome To The Best Model  Winner Contest</a></h4>
                                </div>
                            </div>
                            <div class="weekly-single">
                                <div class="weekly-img">
                                        <img src="<?php //echo base_url(); ?>assets/front_end/img/news/weeklyNews3.jpg" alt="">
                                </div>
                                <div class="weekly-caption">
                                    <span class="color1">Strike</span>
                                    <h4><a href="#">Welcome To The Best Model  Winner Contest</a></h4>
                                </div>
                            </div>
                            <div class="weekly-single">
                                <div class="weekly-img">
                                    <img src="<?php //echo base_url(); ?>assets/front_end/img/news/weeklyNews1.jpg" alt="">
                                </div>
                                <div class="weekly-caption">
                                    <span class="color1">Strike</span>
                                    <h4><a href="#">Welcome To The Best Model  Winner Contest</a></h4>
                                </div>
                            </div>
-->
                        </div>
                    </div>
                </div>
           </div>
        </div>
    </div>           
    <!-- End Weekly-News -->