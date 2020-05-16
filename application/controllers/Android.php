<?php 
 
class Android extends CI_Controller{
 
	function __construct(){
        parent::__construct();        

        $this->load->model('Cmskeong_model');
        $this->model = $this->Cmskeong_model;		
	}
 
	function index(){
        //redirect('news');
        $this->login_api();
    }
    function berita(){        
		$result = $this->model->tampil('berita')->result(); 
        echo json_encode($result);
    }
    function login_api()
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
            $result['error'] = false;
            $result['data'] = $this->model->getdata('users','username',$username);
        }else{
            if($cek_user > 0){
                $result['error'] = true;
                $result['data'] = "Password untuk $username salah, silahkan ulangi lagi !";
            }else{
                $result['error'] = true;
                $result['data'] = "Username atau password salah, silahkan ulangi lagi ";
            }  
            //echo "login";
        }

        echo json_encode($result);
    }
}