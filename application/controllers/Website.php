
<?php

class Website extends CI_Controller{
    function __construct(){        
        parent::__construct();
/*
        if($this->session->userdata('status') != "login"){
            redirect(base_url("login"));
        }
        if($this->session->userdata('akses') != "2"){
            redirect(base_url("publik"));
        }
*/        
        $this->load->library('upload');
        $this->load->model('Cmskeong_model');
        $this->model = $this->Cmskeong_model;
    }
    
    function index(){
        $this->identitas();
    }
    function infowebsite(){
        //$data['seo'] = $this->model->tampil('identitas_website')->result();
        $data['identitas_website'] = $this->model->tampil('identitas_website')->result();  
         $data['menu'] = " idwebsite";
         $this->load->view('admin/website_info_view',$data);
    }
    function identitas(){
        $data['identitas_website'] = $this->model->tampil('identitas_website')->result();  
         $data['menu'] = "idwebsite";
        $this->load->view('admin/website_add_identitas_view',$data);
    }
    function simpan_identitas(){
        $data = array(
            'nama_website' => $_POST['nama_website'],
            'meta_deskripsi' => $_POST['meta_deskripsi'],
            'meta_keyword' => $_POST['meta_keyword'],
            'favicon' => $this->_uploadImage(),
            'footer' => $_POST['footer']
        );
        $this->model->simpan($data,'identitas_website');        
        redirect('website/');

    }
    function update_identitas(){
        $id_website = $_POST['id_website'];
        $data = array(
            'nama_website' => $_POST['nama_website'],
            'meta_deskripsi' => $_POST['meta_deskripsi'],
            'meta_keyword' => $_POST['meta_keyword'],
            'footer' => $_POST['footer']
        );
                    
        if (!empty($_FILES["gambar"]["name"])) {
            $data['favicon'] = $this->_uploadImage($link);
        } 
        $this->model->update($data,'identitas_website','id_website', $id_website); 
        redirect('website/');
    }
    private function _uploadImage()
    {        
        $config['upload_path']          = './gambar';
        $config['allowed_types']        = 'gif|jpg|png|ico';
        $config['file_name']            = 'favicon';
        $config['overwrite']			= true;
        $config['max_size']             = 1000;
        $config['max_width']            = 2880;
        $config['max_height']           = 2880;

        //$this->load->library('upload', $config);
        
        $this->upload->initialize($config);

        if ( ! $this->upload->do_upload('gambar')){
            $error = array('error' => $this->upload->display_errors());
            return FALSE;
        }else{
            return $this->upload->data("file_name");
        }
        return "default.jpg";
    }

}