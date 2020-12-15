<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <?php
            if(count($identitas_website)>0){
                    foreach($identitas_website as $seo){
                        echo"
                            <title>$seo->title_website</title>
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
            
            <!-- Google Fonts -->
            <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700|Raleway:300,400,400i,500,500i,700,800,900" rel="stylesheet">

            <!-- Vendor CSS Files -->
            <link href="<?php echo base_url(); ?>assets/front_end/index/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
            <link href="<?php echo base_url(); ?>assets/front_end/index/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
            <link href="<?php echo base_url(); ?>assets/front_end/index/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
            <link href="<?php echo base_url(); ?>assets/front_end/index/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
            <link href="<?php echo base_url(); ?>assets/front_end/index/assets/vendor/nivo-slider/css/nivo-slider.css" rel="stylesheet">
            <link href="<?php echo base_url(); ?>assets/front_end/index/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
            <link href="<?php echo base_url(); ?>assets/front_end/index/assets/vendor/venobox/venobox.css" rel="stylesheet">

            <!-- Template Main CSS File -->
            <link href="<?php echo base_url(); ?>assets/front_end/index/assets/css/style.css" rel="stylesheet">
   </head>

<body data-spy="scroll" data-target="#navbar-example">