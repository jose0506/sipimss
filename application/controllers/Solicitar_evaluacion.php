<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Clase que gestiona el login
 * @version 	: 1.0.0
 * @autor 		: Mr. Guag
 * fecha: 29/08/2016
 */
class Solicitar_evaluacion extends MY_Controller {

    function __construct(){
        parent::__construct();
        $this->lang->load('interface_administracion');
        $this->load->library('form_complete');
        $this->load->library('form_validation');
        $this->load->library('seguridad');
        $this->load->model('Usuario_model','usuario');
    }
    
    function index(){
        $this->lang->load('interface', 'spanish');
        $data["string_value"] = $this->lang->line('interface_secd');

        $this->load->model("Solicitud_ecv_model","secv");
        $data["actividades"]=$this->secv->getValidatedCourses($this->session->idempleado);
        
        $main_content = $this->load->view('solicitar_evaluacion/index.tpl.php',$data, true);
        //$this->template->setCuerpoModal($this->ventana_modal->carga_modal());
        $this->template->setMainContent($main_content);
        $this->template->getTemplate(FALSE,'template/sipimss/index.php.tpl');
    }
    
}