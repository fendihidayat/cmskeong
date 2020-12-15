<?php
class Cmskeong_model extends CI_model{
    function simpan($data,$tabel){
        $this->db->insert($tabel,$data);
    }
    function tampil($tabel){
        return $this->db->get($tabel);
    }
    function tampil_limit($tabel, $limit){
        return $this->db->get($tabel, $limit);
    }
    function tampil_orderby($tabel, $urutkan, $type){
        $this->db->order_by($urutkan, $type);
        return $this->db->get($tabel);
    }
    function tampil_limit_orderby($tabel, $limit, $urutkan, $type){
        $this->db->limit($limit);
        $this->db->order_by($urutkan, $type);
        return $this->db->get($tabel);
    }
    function tampil_where_orderby($tabel, $field, $record, $urutkan, $type){
        $this->db->where($field, $record);
        $this->db->order_by($urutkan, $type);
        return $this->db->get($tabel);
    }
    function tampil_limit_where_orderby($tabel, $field, $record, $limit, $urutkan, $type){
        $this->db->where($field, $record);
        $this->db->limit($limit);
        $this->db->order_by($urutkan, $type);
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
    function cekfokusdata($table,$field,$where){      
        $this->db->select($field);    
        return $this->db->get_where($table,$where);
    }        
    function cek_login($table,$where){      
        return $this->db->get_where($table,$where);
    }  
    function getdata($tabel,$field,$record){
        $this->db->where($field, $record);
        return $this->db->get($tabel)->row();
    }  

}