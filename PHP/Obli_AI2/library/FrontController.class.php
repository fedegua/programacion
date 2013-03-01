<?php
//clase para crear controladores de mi app.

class FrontController{
    
    public function dispatch(){
        //tomo que controller y metetodo invocan
        //desde la URL
        $controller = $_REQUEST['controller'];
        $action     = $_REQUEST['action'];
        
        if(empty($controller)){
            $controller = 'index';            
        }
        if(empty($action)){
        	$action     = 'index';
        }
        /*
        validaciones:
         * si el archivo existe
         * si la clase esta definida en ese archivo
         * si el metodo existe en esa clase
         */
        $file_name = $controller.'.php';
        //incluyo archivo de esa clase.
        require_once (CONTROLLERS.$file_name);
        //instanctio controlador
        $class_name = 'Controller'.$controller;
        $C = new $class_name;
        //invoco metodo
        $C->$action();
    }
}