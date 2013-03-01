<?php

class ControllerCiudad extends AppController{	
	
	//fron-end
	public function listado(){		
	 	require_once (MODELS.'Ciudad.class.php');
        $Q = new Query;
        //Levanto todos modelos de la categoria
        $C = new Ciudad;
        $rows = $C->fetch($Q);
        $breadcrumb = array('Inicio'=>'?controller=index&action=index','Ciudades'=>null);
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('rows',$rows);
        $this->View->assign('body','Ciudad/listado.tpl');
        $this->View->display('front_main/main.tpl');
    }
	
}