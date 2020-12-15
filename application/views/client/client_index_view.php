<?php
    $this->load->view('client_index_layout/1_header');
    $this->load->view('client_index_layout/2_head_menu');
    $this->load->view('client_index_layout/3_slider');

    echo "<main id=\"main\">";
    $this->load->view('client_index_layout/4_about');
    $this->load->view('client_index_layout/5_services');
   // $this->load->view('client_index_layout/6_section');
   // $this->load->view('client_index_layout/7_team');
    $this->load->view('client_index_layout/8_join');
    $this->load->view('client_index_layout/9_blog');
    echo "</main>";
    $this->load->view('client_index_layout/11_footer');