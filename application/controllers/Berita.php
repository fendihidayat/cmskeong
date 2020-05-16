
<?php

class Berita extends CI_Controller{
    function __construct(){        
        parent::__construct();

        if($this->session->userdata('status') != "login"){
            redirect(base_url("login"));
        }
        $this->load->model('Cmskeong_model');
        $this->model = $this->Cmskeong_model;
    }
    function index(){
        $this->daftarberita();
    }
    function daftarberita(){
        $data['berita'] = $this->model->tampil_orderby('berita','id_berita','DESC')->result();  
        $data['menu'] = "berita";
        $this->load->view('admin/berita_list_view',$data);
    }
    function tambahberita(){
        $data['kategori'] = $this->model->tampil('kategori')->result();  
        $data['menu'] = "tambahberita";
        $this->load->view('admin/berita_add_view',$data);
    }
    function simpan(){  
        $hari = date('l');
        $tanggal = date('Y-m-d');   
        $jam = date('H:i:s a');   
        $link = str_replace(" ", "-", strtolower($_POST['judul']));
        $link = $this->seo_friendly_url($link);
        $data = array(
            'nama_kategori' => $_POST['kategori'],
            'username' => $username,
            'nama_user' => $nama,
            'judul' => $_POST['judul'],
            'isi_berita' => $_POST['isi_berita'],
            'headline' => $_POST['headline'],
            'publish' => $_POST['publish'],
            'deskripsi_gambar' => trim($_POST['deskripsi_gambar']),
            'hari' => $hari,
            'tanggal' => $tanggal,
            'jam' => $jam,
            'tag_label' => trim($_POST['tag_label']),
            //'gambar' => $this->_uploadImage($link), ---Proses upload gambar
            'link' => $link
        );
        
        //----cek dulu datanya sudah pernah ada apa tidak
        $where['link'] = $link;
        $cek = $this->model->cekdata("berita",$where)->num_rows();
        if($cek > 0){
            $data['berita'] = $this->model->tampil('berita')->result();   
            $data['kategori'] = $this->model->tampil('kategori')->result();      
            $data['menu'] = "berita";
            $this->load->view('admin/berita_error_add_view',$data);
        }
        else{
         //---Proses upload gambar   

         /* 
            $config['upload_path']          = './gambar/berita';
            $config['allowed_types']        = 'gif|jpg|png';
            $config['file_name']            = $link;
            $config['overwrite']			= true;
            $config['max_size']             = 2000;
            $config['max_width']            = 2880;
            $config['max_height']           = 2880;

            $this->load->library('upload', $config);

            if ( ! $this->upload->do_upload('gambar')){
                $error = array('error' => $this->upload->display_errors());
                redirect('berita/tambahberita');
            }else{
                $gbr['upload_data'] = $this->upload->data();
                $data['gambar'] = $gbr['upload_data']['file_name'];
            }
            */
            
            //-- Simpan data ke database            
            $data['gambar'] = $this->_uploadImage($link);
            $this->model->simpan($data,'berita');        
            redirect('berita');
        }
    }
    function edit($id_berita){
        $where['id_berita'] = $id_berita;
        $data['berita'] = $this->model->cekdata('berita',$where)->result();        
        $data['kategori'] = $this->model->tampil('kategori')->result();  
        $data['menu'] = "berita";
        $this->load->view('admin/berita_edit_view',$data);       

    }
    
    function update(){  
        $id_berita = $_POST['id_berita'];
        $judul_asli = $_POST['judul_asli'];
        $hari = date('l');
        $tanggal = date('Y-m-d');   
        $jam = date('H:i:s a');   
        $link = str_replace(" ", "-", strtolower($_POST['judul']));
        $link_asli = str_replace(" ", "-", strtolower($_POST['judul_asli']));
        
        $link = $this->seo_friendly_url($link);
        $link_asli = $this->seo_friendly_url($link_asli);
        $nama = $this->session->userdata('nama');
        $username = $this->session->userdata('username');
        
        $data = array(
            'nama_kategori' => $_POST['kategori'],
            'username' => $username,
            'nama_user' => $nama,
            'judul' => $_POST['judul'],
            'isi_berita' => $_POST['isi_berita'],
            'headline' => $_POST['headline'],
            'publish' => $_POST['publish'],
            'deskripsi_gambar' => trim($_POST['deskripsi_gambar']),
            'hari' => $hari,
            'tanggal' => $tanggal,
            'jam' => $jam,
            'tag_label' => trim($_POST['tag_label']),
            //'gambar' => $this->_uploadImage(), //---Proses upload gambar
            'link' => $link
        );
        
        //----cek dulu datanya sudah pernah ada apa tidak
        $where['link'] = $link;
        $cek = $this->model->cekdata("berita",$where)->num_rows();
        if($cek > 0){
            if($link_asli == $link){                
                if (!empty($_FILES["gambar"]["name"])) {
                    $data['gambar'] = $this->_uploadImage($link);
                } 
                $this->model->update($data,'berita','id_berita', $id_berita);        
                redirect('berita/view/'.$id_berita);
           }else{ 
            
            $data['id_berita'] = $_POST['id_berita'];
            $data['judul_asli'] = $_POST['judul_asli'];
            $data['gambar_asli'] = $_POST['gambar_asli'];
            //$data['berita'] = $this->model->tampil('berita')->result();      
            $data['kategori'] = $this->model->tampil('kategori')->result();      
            $data['menu'] = "berita";
            $this->load->view('admin/berita_error_edit_view',$data);
           }
        }
        else{                
            if (!empty($_FILES["gambar"]["name"])) {
                $data['gambar'] = $this->_uploadImage($link);
            } 
            $this->model->update($data,'berita','id_berita', $id_berita);        
            redirect('berita/view/'.$id_berita);
        }
    }
    function view($id_berita){
        //if($id_berita==NULL){redirect('berita');}
        $where['id_berita'] = $id_berita;
        $data['berita'] = $this->model->cekdata('berita',$where)->result();
        $data['allberita'] = $this->model->tampil('berita')->result(); 
        $data['menu'] = "berita";
        $this->load->view('admin/berita_view',$data);        
    }
    function hapus($id_berita){
        $this->_deleteImage($id_berita);
                
        $this->model->hapus('berita','id_berita',$id_berita);  
        redirect('berita');
    }
    private function _deleteImage($id_berita)
    {
        $where['id_berita'] = $id_berita;
        $product = $this->model->cekdata('berita',$where)->row();
        $filename = explode(".", $product->gambar)[0];
        //echo "<img src='../../gambar/berita/$filename.jpg' align='left'>";
        return array_map('unlink', glob(FCPATH."gambar/berita/$filename.*")); //menghapus file gambar berita
    }
    private function _uploadImage($link)
    {        
        $config['upload_path']          = './gambar/berita';
        $config['allowed_types']        = 'gif|jpg|jpeg|png';
        $config['file_name']            = $link;
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
        return "default.jpg";
    }
    //Upload image summernote
    function upload_image(){
        $this->load->library('upload');
        if(isset($_FILES["image"]["name"])){
            $config['upload_path'] = './gambar/berita/post';
            $config['allowed_types'] = 'jpg|jpeg|png|gif';
            $this->upload->initialize($config);
            if(!$this->upload->do_upload('image')){
                $this->upload->display_errors();
                return FALSE;
            }else{
                $data = $this->upload->data();
                $filename = $this->upload->data("file_name");
                //Compress Image
                $config['image_library']='gd2';
                $config['source_image']='./gambar/berita/post/'.$data['file_name'];
                $config['create_thumb']= FALSE;
                $config['maintain_ratio']= TRUE;
                $config['quality']= '60%';
                $config['width']= 800;
                $config['height']= 800;
                $config['new_image']= './gambar/berita/post/'.$data['file_name'];
                $this->load->library('image_lib', $config);
                $this->image_lib->resize();
                echo base_url().'gambar/berita/post/'.$filename; 
            }
        }
    }
 
    //Delete image summernote
    function delete_image(){
        $src = $this->input->post('src');
        $file_name = str_replace(base_url(), '', $src);
        if(unlink($file_name))
        {
            echo 'File Delete Successfully';
        }
    }
    function seo_friendly_url($string){
        $string = str_replace(array('[\', \']'), '', $string);
        $string = preg_replace('/\[.*\]/U', '', $string);
        $string = preg_replace('/&(amp;)?#?[a-z0-9]+;/i', '-', $string);
        $string = preg_replace(array('/[^a-z0-9]/i', '/[-]+/') , '-', $string);
        return strtolower(trim($string, '-'));
    }
}