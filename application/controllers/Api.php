<?php 
 
class Api extends CI_Controller{
 
	function __construct(){
        parent::__construct();        

        $this->load->model('Cmskeong_model');
        $this->model = $this->Cmskeong_model;		
	}
 
	function index(){
        //redirect('news');
        $this->login();
    }
    function berita(){        
		$result = $this->model->tampil('berita')->result(); 
        echo json_encode($result);
    }
    function login()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $where = array(
            'username' => $username,
            'password' => md5($password)
            );
        $cek = $this->model->cek_login("users",$where)->num_rows();
        $cek_user =  $this->model->cek_login("users",['username' => $username])->num_rows();
        
        if($cek > 0){
            $result['status'] = "sukses";
            //$user = $this->model->getdata('users','username',$username);
            //$result['data'] = $user->nama_lengkap;
            $result['data'] = $this->model->getdata('users','username',$username);
        }else{
            if($cek_user > 0){
                $result['status'] = "gagal";
                $result['data'] = "Password untuk $username salah, silahkan ulangi lagi !";
            }else{
                $result['status'] = "gagal";
                $result['data'] = "Username atau password salah, silahkan ulangi lagi ";
            }  
            //echo "login";
        }

        echo json_encode($result);
    }
}