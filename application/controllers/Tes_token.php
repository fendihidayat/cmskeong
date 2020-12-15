<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';
//use Restserver\Libraries\REST_Controller;
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
class Tes_token extends REST_Controller {
    public function __construct() {
        parent::__construct();
        
        // Load these helper to create JWT tokens
        $this->load->helper(['jwt', 'authorization']); 
        
        $this->load->model('Cmskeong_model');
        $this->model = $this->Cmskeong_model;	
    }
    
    public function hello_get()
    {
        $tokenData = 'Hello World!';
        
        // Create a token
        $token = AUTHORIZATION::generateToken($tokenData);
        // Set HTTP status code
        $status = parent::HTTP_OK;
        // Prepare the response
        $response = ['status' => $status, 'token' => $token];
        // REST_Controller provide this method to send responses
        $this->response($response, $status);
    }
    public function login_post()
     {
            // Have dummy user details to check user credentials
            // send via postman
            $dummy_user = [
                'username' => 'fendi',
                'password' => '123'
            ];
            // Extract user data from POST request
            $username = $this->post('username');
            $password = $this->post('password');
            // Check if valid user
            if ($username === $dummy_user['username'] && $password === $dummy_user['password']) {

                // Create a token from the user data and send it as reponse
                $token = AUTHORIZATION::generateToken(['username' => $dummy_user['username']]);
                // Prepare the response
                $status = parent::HTTP_OK;
                $response = ['status' => $status, 'token' => $token];
                $this->response($response, $status);
            }
            else {
                $this->response(['msg' => 'Invalid username or password!'], parent::HTTP_NOT_FOUND);
            }
     }
     
    //--------Tes pakai data
function masuk_post()
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
            //$user = $this->model->getdata('users','username',$username);
            //$result['data'] = $user->nama_lengkap;
            $result['data'] = $this->model->getdata('users','username',$username);
            

                // Create a token from the user data and send it as reponse
                $token = AUTHORIZATION::generateToken(['username' => $result['data']]);
                // Prepare the response
                $status = parent::HTTP_OK;
                $response = ['status' => $status, 'token' => $token, 'data' => $result['data']];
                $this->response($response, $status);
        }else{
            //echo "login";
            $this->response(['msg' => 'Invalid username or password!'], parent::HTTP_NOT_FOUND);
        }

        //echo json_encode($response);
}
//---end test
    
    private function verify_request()
    {
        // Get all the headers
        $headers = $this->input->request_headers();
        // Extract the token
        $token = $headers['Authorization'];
        // Use try-catch
        // JWT library throws exception if the token is not valid
        try {
            // Validate the token
            // Successfull validation will return the decoded user data else returns false
            $data = AUTHORIZATION::validateToken($token);
            if ($data === false) {
                $status = parent::HTTP_UNAUTHORIZED;
                $response = ['status' => $status, 'msg' => 'Unauthorized Access!'];
                $this->response($response, $status);
                exit();
            } else {
                return $data;
            }
        } catch (Exception $e) {
            // Token is invalid
            // Send the unathorized access message
            $status = parent::HTTP_UNAUTHORIZED;
            $response = ['status' => $status, 'msg' => 'Unauthorized Access! '];
            $this->response($response, $status);
        }
    }
    public function get_me_data_post()
    {
        // Call the verification method and store the return value in the variable
        $data = $this->verify_request();
        // Send the return data as reponse
        $status = parent::HTTP_OK;
        $response = ['status' => $status, 'data' => $data];
        $this->response($response, $status);
    }
    
//--------Tes pakai data
function promo_post(){       

        // Call the verification method and store the return value in the variable
        $data = $this->verify_request();
        // Send the return data as reponse
        $status = parent::HTTP_OK;
        $result['data'] = $this->model->tampil_limit_where_orderby('berita','nama_kategori','Iklan',5,'id_berita','DESC')->result();  
        
    
        //$response = ['status' => $status, 'data' => $data, 'promo' => $result['data']];
        $response = ['data' => $result['data']];
        $this->response($response, $status);
}
//---------end test

}
