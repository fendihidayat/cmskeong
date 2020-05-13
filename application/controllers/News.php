<?php 
 
class News extends CI_Controller{
 
	function __construct(){
		parent::__construct();
	
        $this->load->model('Cmskeong_model');
        $this->model = $this->Cmskeong_model;		
	}
 
	function index(){
		$this->home();
		//$this->load->view('client/client_index_view');
	}
	function home(){		
		$data['trending'] = $this->model->tampil('berita')->result(); 
		$data['kategori'] = $this->model->tampil('kategori')->result(); 
		$data['identitas_website'] = $this->model->tampil('identitas_website')->result();     
        $data['menu'] = "home";
        $this->load->view('client/client_index_view',$data);
	}
	function read($link){
		$data['trending'] = $this->model->tampil('berita')->result(); 
        $where['link'] = $link;
        $data['berita'] = $this->model->cekdata('berita',$where)->result();        
        $data['kategori'] = $this->model->tampil('kategori')->result();  
        $data['menu'] = "berita";
        $this->load->view('client/client_read_view',$data);  		
	}
}