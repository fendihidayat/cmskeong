<?php

class Publik extends CI_Controller{
    function __construct(){        
        parent::__construct();

        /*if($this->session->userdata('status') != "login"){
            redirect(base_url("login"));
        }*/

        $this->load->model('Peta_model');
        $this->model = $this->Peta_model;
    }
    function index(){
        $data['petugas'] = $this->model->tampilpublik();
        $data['menu'] = "publik";
        $this->load->view('peta_user_publik_view',$data);
    }
    function daftar(){   
        $data['menu'] = "daftar";
        $this->load->view('peta_user_register_view',$data);
    }
    function usulan(){
        $data['menu'] = "member";
        $this->load->view('peta_user_publik_usulan_view',$data);
    }
    function kegiatan($id){
        $query = $this->db->query("SELECT * FROM program where id='$id'");
        $data['program'] = $query->row();
        $data['menu'] = "kegiatan";
        $this->load->view('peta_detail_view',$data);
         //$this->load->view('peta_form_view');
    }
    function tabel(){        
        $pengusul = $this->session->userdata('nama');
        $data['program'] = $this->model->datausulan($pengusul);
        $data['menu'] = "member";
        $this->load->view('peta_user_publik_tabel_view',$data);
    }
    function lihatuser($namauser){    
        $data['user'] = $this->model->datauser($namauser);   
        $data['menu'] = "member";
        $this->load->view('peta_user_edit_view',$data);
    }
    function simpan_usulan(){
        $nama= $_POST['nama'];
        $alamat = $_POST['alamat'];
        $rt = $_POST['rt'];
        $rw = $_POST['rw'];
        $lat = $_POST['lat'];
        $lang = $_POST['lang'];
        $jml_kk = $_POST['jml_kk'];
        $volume = $_POST['volume'];
        $deskripsi = $_POST['deskripsi'];
        $pengusul = $this->session->userdata('nama');
        
		$config['upload_path']          = './gambar';
		$config['allowed_types']        = 'gif|jpg|png';
		$config['max_size']             = 2000;
		$config['max_width']            = 1024;
		$config['max_height']           = 768;

		$this->load->library('upload', $config);

		if ( ! $this->upload->do_upload('berkas')){
			$error = array('error' => $this->upload->display_errors());
			$this->load->view('peta_form_view', $error);
		}else{
			$data = array('upload_data' => $this->upload->data());
            $data = array(
                'nama'=>$nama,
                'alamat'=>$alamat,
                'foto'=>$data['upload_data']['file_name'],'rt'=>$rt,
                'rw'=>$rw,
                'lat'=>$lat,
                'lang'=>$lang,
                'jml_kk'=>$jml_kk,
                'volume'=>$volume,
                'deskripsi'=>$deskripsi,
                'nama_pengusul'=>$pengusul,
                'keterangan'=>'diusulkan'
            );

            $this->model->simpan($data,'program');
            redirect('publik/tabel');
        }
    }
    function simpanuser()
    {
        $namauser = $_POST['namauser'];
        $pass = $_POST['pass'];
        $nama= $_POST['nama'];
        $nik = $_POST['nik'];
        $alamat = $_POST['alamat'];
        $telp = $_POST['telp'];
        $jabatan = 'masyarakat';      

        $config['upload_path']          = './gambar';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['max_size']             = 2000;
        $config['max_width']            = 2880;
        $config['max_height']           = 2880;

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('berkas')){
            $error = array('error' => $this->upload->display_errors());
            redirect('publik/daftar');
        }else{
            $data = array('upload_data' => $this->upload->data());
            $data = array(    
                'namauser' => $namauser,
                'passwd' => md5($pass),
                'nama' => $nama,
                'nik' => $nik,
                'alamat' => $alamat,
                'telp' => $telp,
                'foto'=> $data['upload_data']['file_name'],
                'jabatan' => $jabatan,
                'akses' => '4'
            );

           $this->model->simpan($data,'user');
            redirect('publik/index');
        }
    }
}