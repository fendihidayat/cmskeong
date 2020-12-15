<?php

class Profile extends CI_Controller{
    function __construct(){        
        parent::__construct();

        if($this->session->userdata('status') != "login"){
            redirect(base_url("login"));
        }
        $this->load->model('Cmskeong_model');
        $this->model = $this->Cmskeong_model;
    }
    function index(){
        $username = $this->session->userdata('username');
        $cek =  $this->model->cek_login("profile",['username' => $username])->num_rows();
        
        if($cek == 0){
            $this->input();
        }else{
            $this->view();
        }
    }
    function view(){   
        $username = $this->session->userdata('username');
        $data['profile'] = $this->model->tampil_where_orderby('profile','username',$username,'username','DESC')->result();
        $data['menu'] = "profile";
        $data['describe_menu'] = "Profile User";
        $this->load->view('admin/profile_view',$data);                
    }
    function input(){        
        $data['jurusan'] = $this->model->tampil('tb_jurusan')->result(); 
        $data['provinsi'] = $this->model->tampil('tb_provinsi')->result(); 
        $data['bidang_perusahaan'] = $this->model->tampil('bidang_perusahaan')->result();   
        $data['menu'] = "profile";
        $data['describe_menu'] = "Profile User";
        $this->load->view('admin/profile_add_view',$data);
    }    
    function get_kabkota(){  
        $id = $_POST['id'];
        //$id = '11';
        $data = $this->model->tampil_where_orderby('tb_kabkota','id_prov',$id,'id_kabkota','DESC')->result();
        echo json_encode($data);        
    }
    
    function simpan(){          
        //echo $username."<br>".$nama_lengkap."<br>".$jenjang_jurusan." ".$jurusan_kuliah."<br>".$alamat_tinggal."<br>".$kota_tinggal."<br>".$provinsi_tinggal."<br>".$tahun_masuk_kuliah."<br>".$tahun_lulus_kuliah."<br>".$no_hp."<br>".$no_wa."<br>".$nama_perusahaan."<br>".$alamat_perusahaan."<br>".$jabatan_kerja."<br>".$status_perusahaan."<br>".$bidang_pekerjaan;

        $username = $this->session->userdata('username');
        $data = array(
            'username' => $this->session->userdata('username'),
            'nama_lengkap' => $_POST['nama_lengkap'],
            'jenjang_jurusan' => $_POST['jenjang_jurusan'],
            'jurusan_kuliah' => $_POST['jurusan_kuliah'],
            'alamat_tinggal' => $_POST['alamat_tinggal'],
            'kota_tinggal' => $_POST['kota_tinggal'],
            'provinsi_tinggal' => $_POST['provinsi_tinggal'],
            'tahun_masuk_kuliah' => $_POST['tahun_masuk_kuliah'],
            'tahun_lulus_kuliah' => $_POST['tahun_lulus_kuliah'],
            'no_hp' => $_POST['no_hp'],
            'no_wa' => $_POST['no_wa'],
            'nama_perusahaan' => $_POST['nama_perusahaan'],
            'alamat_perusahaan' => $_POST['alamat_perusahaan'],
            'jabatan_kerja' => $_POST['jabatan_kerja'],
            'status_perusahaan' => $_POST['status_perusahaan'],
            'bidang_pekerjaan' => $_POST['bidang_pekerjaan']
            //'foto_profile' => $_POST['foto_profile'],
        );    
        $data['foto_profile'] = $this->_uploadImage($username);
        $this->model->simpan($data,'profile');        
        redirect('profile');
    }
    
    private function _uploadImage($nama_file)
    {        
        $config['upload_path']          = './gambar/profile';
        $config['allowed_types']        = 'gif|jpg|jpeg|png';
        $config['file_name']            = $nama_file;
        $config['overwrite']			= true;
        $config['max_size']             = 2000;
        $config['max_width']            = 2880;
        $config['max_height']           = 2880;

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('gambar')){
            $error = array('error' => $this->upload->display_errors());
            return FALSE;
            //redirect('berita/tambahberita');
        }else{
            return $this->upload->data("file_name");
        }
        return "default.png";
    }
}