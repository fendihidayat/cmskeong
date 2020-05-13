
<?php

class Kategori extends CI_Controller{
    function __construct(){        
        parent::__construct();

        if($this->session->userdata('status') != "login"){
            redirect(base_url("login"));
        }
        
        $this->load->model('Cmskeong_model');
        $this->model = $this->Cmskeong_model;
    }
    function index(){
        $this->daftarkategori();
    }
    function daftarkategori(){
        $data['kategori'] = $this->model->tampil('kategori')->result();  
         $data['menu'] = "kategori";
         $this->load->view('admin/kategori_list_view',$data);
    }
    function simpan(){       
        $nama_kategori = $_POST['nama_kategori'];   
        $str = strtolower($nama_kategori);
        $inisial_kategori = str_replace(" ", "-", $str);
        $data = array(
            'nama_kategori' => $nama_kategori,
            'inisial_kategori' => $inisial_kategori 
        );
        
        //----cek dulu datanya sudah pernah ada apa tidak
        $where['inisial_kategori'] = $inisial_kategori;
        $cek = $this->model->cekdata("kategori",$where)->num_rows();
        if($cek > 0){
            $data['kategori'] = $this->model->tampil('kategori')->result();    
            $data['menu'] = "kategori";
            $this->load->view('admin/kategori_error_add_view',$data);
        }
        else{
            $this->model->simpan($data,'kategori');        
            redirect('kategori');
        }
    }
    function hapus($id_kategori){
        $this->model->hapus('kategori','id_kategori',$id_kategori);  
        redirect('kategori');
    }
    function edit($id_kategori){
        $data['kategori'] = $this->model->edit('kategori','id_kategori',$id_kategori)->result();
        $data['menu'] = "kategori";
        $this->load->view('admin/kategori_edit_view',$data);
    }
    function update(){
        $id_kategori = $_POST['id_kategori'];        
        $nama_kategori_asli = $_POST['nama_kategori_asli'];    
        $nama_kategori = $_POST['nama_kategori'];   
        $str = strtolower($nama_kategori);
        $inisial_kategori = str_replace(" ", "-", $str);

        $inisial_kategori_asli = str_replace(" ", "-", strtolower($nama_kategori_asli));
        $data = array(
            'nama_kategori' => $nama_kategori,
            'inisial_kategori' => $inisial_kategori 
        );
        
        //----cek dulu datanya sudah pernah ada apa tidak
        $where['inisial_kategori'] = $inisial_kategori;
        $cek = $this->model->cekdata("kategori",$where)->num_rows();
        if($cek > 0){
           if($inisial_kategori == $inisial_kategori_asli){
               
                //$this->edit($id_kategori);
                $data['pesan_error'] = "Anda Belum Merubah, silahkan lakukan perubahan." ;
           }else{ 
                $data['pesan_error'] = "Maaf, Kategori <b>".$nama_kategori."</b> sudah ada." ;}
                $data['kategori'] = $this->model->edit('kategori','id_kategori',$id_kategori)->result();
                $data['id_kategori'] = $_POST['id_kategori'];
                $data['nama_kategori_asli'] = $_POST['nama_kategori_asli'];               
                $data['menu'] = "kategori";
                $this->load->view('admin/kategori_error_edit_view',$data);
            //}
        }
        else{ 
            $this->model->update($data,'kategori','id_kategori', $id_kategori);        
            redirect('kategori');
        }
    }
}