<!-- Trending Area Start -->
<div class="trending-area fix">
        <div class="container">
            <div class="trending-main">
                <!-- Trending Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="trending-tittle">
                            <strong>Trending now</strong>
                            <!-- <p>Rem ipsum dolor sit amet, consectetur adipisicing elit.</p> -->
                            <div class="trending-animated">
                                <ul id="js-news" class="js-hidden">
                                <?php  foreach($trending as $headlinetrend){
                                    echo "<li class='news-item'><a href='news/read/$headlinetrend->link'>$headlinetrend->judul</a></li>";
                                }?>
                                </ul>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php
                    $i=0;$j=1;
                    foreach($trending as $headlinetrend){
                        if($i<1){
                            echo "<div class='col-lg-8'>";
                                echo "
                                <div class='trending-top mb-30'>
                                    <div class='trend-top-img'>
                                        <img src='".base_url()."gambar/berita/$headlinetrend->gambar' alt='$headlinetrend->deskripsi_gambar'>
                                        <div class='trend-top-cap'>
                                            <span>$headlinetrend->nama_kategori</span>
                                            <h2><a href='news/read/$headlinetrend->link'>$headlinetrend->judul</a></h2>
                                        </div>
                                    </div>
                                </div>";

                        }
                        elseif($i>=1 && $i<=3){                            
                            if($i==1){
                                echo "
                                <div class='trending-bottom'>
                                    <div class='row'>";
                            }
                                    echo "
                                    <div class='col-lg-4'>
                                    <div class='single-bottom mb-35'>
                                        <div class='trend-bottom-img mb-30'>
                                            <img src='".base_url()."gambar/berita/$headlinetrend->gambar' alt='$headlinetrend->deskripsi_gambar'>
                                        </div>
                                        <div class='trend-bottom-cap'>
                                            <span class='color".$i."'>$headlinetrend->nama_kategori</span>
                                            <h4><a href='news/read/$headlinetrend->link'>$headlinetrend->judul</a></h4>
                                        </div>
                                    </div>
                                    </div>";

                                                   
                            if($i==3){
                                echo "
                                    </div>
                                </div>
                            </div>";
                            }

                        }
                        elseif($i>=4 && $i<=8){
                            if($i==4){
                                echo "<div class='col-lg-4'>";
                            }
                            
                            echo "
                                        <div class='trand-right-single d-flex'>
                                            <div class='trand-right-img'>
                                                <img src='".base_url()."gambar/berita/$headlinetrend->gambar' height='100px' width='120px' alt='$headlinetrend->deskripsi_gambar'>
                                            </div>
                                            <div class='trand-right-cap'>
                                                <span class='color".$j."'>$headlinetrend->nama_kategori</span>
                                                <h4><a href='news/read/$headlinetrend->link'>$headlinetrend->judul</a></h4>
                                            </div>
                                        </div>
                            ";
                            if($i==5){
                                echo "</div>";
                            }
                            $j++;
                        }
                        $i++;
                    }
                    //echo "</div>";
                    ?>
                    
                </div>
            </div>
        </div>
    </div>
    <!-- Trending Area End -->