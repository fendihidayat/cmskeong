
<?php

class User extends CI_Controller{
    function __construct(){        
        parent::__construct();

        if($this->session->userdata('status') != "login"){
            redirect(base_url("login"));
        }

        $this->load->model('Cmskeong_model');
        $this->model = $this->Cmskeong_model;
    }
    function index(){
        $this->daftaruser();
    }
    function daftaruser(){
        $data['users'] = $this->model->tampil('users')->result();  
         $data['menu'] = "user";
         $this->load->view('admin/user_list_view',$data);
    }
    function simpan(){          
        $data = array(
            'username' => $_POST['username'],
            'nama_lengkap' => $_POST['nama_lengkap'],
            'password' => md5($_POST['password']),
            'email' => $_POST['email'],
            'level' => $_POST['level'],
            'blokir' => 'N'
        );
        
        //----cek dulu datanya sudah pernah ada apa tidak
        $where['username'] = $_POST['username'];
        $cek = $this->model->cekdata("users",$where)->num_rows();
        if($cek > 0){
            $data['users'] = $this->model->tampil('users')->result();    
            $data['menu'] = "user";
            $this->load->view('admin/user_error_add_view',$data);
        }
        else{
            $this->model->simpan($data,'users');        
            redirect('user');
        }
    }
    function hapus($username){
        $this->model->hapus('users','username',$username);  
        redirect('user');
    }
    function edit($username){
        $data['users'] = $this->model->edit('users','username',$username)->result();
        $data['menu'] = "user";
        $this->load->view('admin/user_edit_view',$data);
    }
    function update(){
        $username_asli = $_POST['username_asli'];        
        $data = array(
            'username' => $_POST['username'],
            'nama_lengkap' => $_POST['nama_lengkap'],
            'email' => $_POST['email'],
            'level' => $_POST['level'],
            'blokir' => $_POST['blokir']
        );
        if($_POST['password'] != ''){ 
            $data['password'] = md5($_POST['password']);
        }
        $this->model->update($data,'users','username', $username_asli);        
        redirect('user');
    }
}