<?php

class ControllerUsuario extends AppController{	
	
	//fron-end
	public function listado(){		
	 	require_once (MODELS.'Usuario.class.php');
        $Q = new Query;
        //Levanto todos modelos de la categoria
        $U = new Usuario;
        $rows = $U->fetch($Q);
        $breadcrumb = array('Inicio'=>'?controller=index&action=index','Usuario'=>null);
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('rows',$rows);
        $this->View->assign('body','Usuario/listado.tpl');
        $this->View->display('front_main/main.tpl');
    }
	
}