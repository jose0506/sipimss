<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Evaluacion_docente_model extends CI_Model {
    var $string_values;

	public function __construct() {
        // Call the CI_Model constructor
        parent::__construct();
        $this->load->database();
        $this->lang->load('interface_evaluacion');
        $this->string_values = $this->lang->line('interface_evaluacion')['evaluacion']['model']; //Cargar textos utilizados en vista
    }

    /*public function delete_convocatoria_evaluacion($params=null){
        $resultado = array('result'=>null, 'msg'=>'', 'data'=>null);
        
        $this->db->trans_begin(); //Definir inicio de transacción

        if(array_key_exists('conditions', $params)){
            $this->db->where($params['conditions']);
        }
        
        $this->db->delete('admin_validador');
        
        if ($this->db->trans_status() === FALSE){
            $this->db->trans_rollback();
            $resultado['result'] = FALSE;
            $resultado['msg'] = $this->string_values['error'];
        } else {
            $this->db->trans_commit();
            $resultado['result'] = TRUE;
            $resultado['msg'] = $this->string_values['eliminacion'];
        }
        
        return $resultado;
    }*/


    public function get_evaluacion_docente($params=null){
        $resultado = array();

        if(array_key_exists('fields', $params)){
            if(is_array($params['fields'])){
                $this->db->select($params['fields'][0], $params['fields'][1]);
            } else {
                $this->db->select($params['fields']);
            }
        }
        if(array_key_exists('conditions', $params)){
            $this->db->where($params['conditions']);
        }
        if(array_key_exists('order', $params)){
            $this->db->order_by($params['order']);
        }

        $this->db->join('ccategoria_dictamen', 'dictamen.CATEGORIA_CVE=ccategoria_dictamen.CATEGORIA_CVE', 'left');

        $query = $this->db->get('dictamen'); //Obtener conjunto de registros
        //pr($this->db->last_query());
        $resultado=$query->result_array();

        $query->free_result(); //Libera la memoria

        return $resultado;
    }

   /* public function insert_convocatoria_evaluacion($datos){
        $resultado = array('result'=>null, 'msg'=>'', 'data'=>null);
        
        $this->db->trans_begin(); //Definir inicio de transacción
        
        $this->db->insert('admin_validador', $datos); //Inserción de registro
        
        $data_id = $this->db->insert_id(); //Obtener identificador insertado
        
        if ($this->db->trans_status() === FALSE){
            $this->db->trans_rollback();
            $resultado['result'] = FALSE;
            $resultado['msg'] = $this->string_values['error'];
        } else {
            $this->db->trans_commit();
            $resultado['data']['identificador'] = $data_id;
            $resultado['msg'] = $this->string_values['insercion'];
            $resultado['result'] = TRUE;
        }
        
        return $resultado;
    }

    public function update_convocatoria_evaluacion($identificador, $datos){
        $resultado = array('result'=>null, 'msg'=>'', 'data'=>null);
        
        $this->db->trans_begin(); //Definir inicio de transacción
        
        $this->db->where('ADMIN_VALIDADOR_CVE', $identificador);
        $this->db->update('admin_validador', $datos); //Inserción de registro

        $data_id = $this->db->insert_id(); //Obtener identificador insertado
        
        if ($this->db->trans_status() === FALSE){
            $this->db->trans_rollback();
            $resultado['result'] = FALSE;
            $resultado['msg'] = $this->string_values['error'];
        } else {
            $this->db->trans_commit();
            $resultado['data']['identificador'] = $identificador;
            $resultado['msg'] = $this->string_values['actualizacion'];
            $resultado['result'] = TRUE;
        }

        return $resultado;
    }*/
}
