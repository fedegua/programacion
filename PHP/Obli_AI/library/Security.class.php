<?php
//Clase para permitir el ingreso a //controller/action/

class Security{
    //controladores y acciones publicos
    //(se acceden sin estar pedir login)
   
    private $public_controllers   = array('login','index');
    private $public_actions       = array(
                                        'autor'=>array('listado', 'detalle'),
                                        'proyecto'=>array('listado', 'detalle'),
                                        'ciudad'=>array('listado'),      
                                        'hallazgo'=>array('listado','detalle'),
    					'categoria'=>array('listado'),
                                        'index'=>array('index'));
    
    function __construct() {
        $controller = $_REQUEST['controller'];
        $action     = $_REQUEST['action'];
        $controller = strtolower($controller);
        $action 	= strtolower($action);
        
        if(empty($controller)){
        	return;
        }
        if(empty($action)){
        	return;
        }
        
        if(isset($this->public_controllers) && in_array($controller, $this->public_controllers)){
            return;
        }
    	if(isset($this->public_actions[$controller]) && in_array($action, $this->public_actions[$controller])){
            return;
        }
        require_once (MODELS.'Usuario.class.php');
        $U = unserialize($_SESSION['usuario']);
        if(is_object($U)){
        	//hay usuario logged
        	return;    
    	}
    	else{
    		header("location:?controller=login&action=signin&status=4");
        	exit();		
    	}   
	}
}	