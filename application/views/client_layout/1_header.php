<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <?php
            if(count($identitas_website)>0){
                    foreach($identitas_website as $seo){
                        echo"
                            <title>$seo->nama_website</title>
                            <meta name='description' content='$seo->meta_deskripsi'>
                            <meta name='keyword' content='$seo->meta_keyword'>
                            <meta name='viewport' content='width=device-width, initial-scale=1'>
                            <link rel='manifest' href='site.webmanifest'>
                            <link rel='shortcut icon' type='image/x-icon' href='".base_url()."gambar/$seo->favicon'>
                        ";
                    }
            }else{
                echo"
                            <title>Selamat Datang</title>
                            <meta name='description' content='isi deskripsi'>
                            <meta name='keyword' content='isi keyword'>
                            <meta name='viewport' content='width=device-width, initial-scale=1'>
                            <link rel='manifest' href='site.webmanifest'>
                            <link rel='shortcut icon' type='image/x-icon' href='".base_url()."gambar/favicon.png'>
                        ";
            }
        ?>
		<!-- CSS here -->
            <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front_end/css/bootstrap.min.css">
            <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front_end/css/owl.carousel.min.css">
            <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front_end/css/ticker-style.css">
            <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front_end/css/flaticon.css">
            <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front_end/css/slicknav.css">
            <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front_end/css/animate.min.css">
            <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front_end/css/magnific-popup.css">
            <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front_end/css/fontawesome-all.min.css">
            <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front_end/css/themify-icons.css">
            <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front_end/css/slick.css">
            <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front_end/css/nice-select.css">
            <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front_end/css/style.css">
   </head>

<body>