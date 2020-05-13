<?php 
 
class Login_model extends CI_Model{ 
    function cek_login($table,$where){      
        return $this->db->get_where($table,$where);
    }  
    function getdata($tabel,$field,$record){
        $this->db->where($field, $record);
        return $this->db->get($tabel)->row();
    }  

}