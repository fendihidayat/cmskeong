<?php
defined('BASEPATH') OR exit ('Error');
class Login extends CI_Controller{
    function __construct(){
        parent::__construct();

        
       /* if($this->session->userdata('status') == "login"){           
            redirect(base_url("dashboard"));
        }*/
        $this->load->model('Cmskeong_model');
        $this->model = $this->Cmskeong_model;
    }

    function index(){
        if($this->session->userdata('status') == "login"){           
            redirect(base_url("dashboard"));
        }else{
        $data['identitas_website'] = $this->model->tampil('identitas_website')->result(); 
        $data['pesan'] = "";
        $this->load->view('login_form_view',$data);
        }
    }

    function aksi_login(){
        $username = $this->input->post('usernama');
        $password = $this->input->post('sandi');
        $where = array(
            'username' => $username,
            'password' => md5($password)
            );
        $cek = $this->model->cek_login("users",$where)->num_rows();
        $cek_user =  $this->model->cek_login("users",['username' => $username])->num_rows();
        
		$seo = $this->model->tampil('identitas_website')->row(); 

        //getdata($tabel,$field,$record)
        if($cek > 0){
            $user = $this->model->getdata('users','username',$username);
            $data_session = array(
                'nama' => $user->nama_lengkap,
                'username' => $user->username,
                'status' => "login",
                'blokir' => $user->blokir,
                'level' => $user->level,
                'password' => $user->password,
                'nama_website' => $seo->nama_website,
                'title_website' => $seo->title_website,
                'meta_deskripsi' => $seo->meta_deskripsi,
                'meta_keyword' => $seo->meta_keyword,
                'favicon' => $seo->favicon
                );
            $this->session->set_userdata($data_session);
           /*
            echo $this->session->userdata('status')."<br>";
            echo $this->session->userdata('level')."<br>";
            echo $this->session->userdata('username')."<br>";
            echo "<br><a href='".base_url('login/logout')."' class='btn btn-danger square-btn-adjust'>Logout </a>";
           
            echo $seo->nama_website;
            echo $this->session->userdata('nama_website');     */
            redirect(base_url("dashboard"));
        }else{
            if($cek_user > 0){
                $data['pesan'] = "Password untuk <b>$username</b> salah, silahkan ulangi lagi ! ";
            }else{
                $data['pesan'] = "Username atau password salah, silahkan ulangi lagi ! ";
            }            
            //redirect(site_url('login'));
            $data['identitas_website'] = $this->model->tampil('identitas_website')->result(); 
            $this->load->view('login_form_view',$data);
        }
    }

    function logout(){
        //$this->session->unset_userdata("status");
        
        $this->session->sess_destroy();
        redirect(site_url('login'));
    }
}
