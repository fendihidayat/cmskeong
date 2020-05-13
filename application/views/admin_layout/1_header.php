<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <?php
  if($this->session->userdata('status') == "login"){ 
  echo"
                <title>".$this->session->userdata('nama_website')."</title>
                <meta name='description' content='".$this->session->userdata('meta_deskripsi')."'>
                <meta name='keyword' content='".$this->session->userdata('meta_keyword')."'>
                <link rel='shortcut icon' type='image/x-icon' href='".base_url()."gambar/".$this->session->userdata('favicon')."'>
            ";
}else{
  if(count($identitas_website)>0){
        foreach($identitas_website as $seo){
            echo"
                <title>$seo->nama_website</title>
                <meta name='description' content='$seo->meta_deskripsi'>
                <meta name='keyword' content='$seo->meta_keyword'>
                <link rel='shortcut icon' type='image/x-icon' href='".base_url()."gambar/$seo->favicon'>
            ";
        }
  }else{
    echo"
                <title>Selamat Datang</title>
                <meta name='description' content='isi deskripsi'>
                <meta name='keyword' content='isi keyword'>
                <link rel='shortcut icon' type='image/x-icon' href='".base_url()."gambar/favicon.png'>
            ";
  }
        
}
  ?>
  <!-- Tell the browser to be responsive to screen width 
  <meta name="viewport" content="width=device-width, initial-scale=1">-->
  
  <meta name='viewport' content='width=device-width, initial-scale=1'>
  <link rel='manifest' href='site.webmanifest'>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/summernote/summernote-bs4.css">

  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">

  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

</head>