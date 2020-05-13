<?php
class User_model extends CI_model{
    function simpan($data,$tabel){
        $this->db->insert($tabel,$data);
    }
    function tampil($tabel){
        return $this->db->get($tabel);
    }
    function update($data,$tabel,$field,$record){
        $this->db->where($field, $record);
        $this->db->update($tabel,$data);
    }    
    function hapus($tabel,$field,$record){
        $this->db->where($field, $record);
        $this->db->delete($tabel);
    }
    function edit($tabel,$field,$record){
        $this->db->where($field, $record);
        return $this->db->get($tabel);
    }  
    function cekdata($table,$where){      
        return $this->db->get_where($table,$where);
    }   
}