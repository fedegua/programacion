<?php

class ControllerLogin extends AppController{
	
	public function signout(){
		unset($_SESSION['usuario']);
		header("location:?controller=login&action=signin&status=1");
        exit();		
	}
	
	public function __construct(){
		unset($_SESSION['usuario']);
		parent::__construct();	
	}
    
    public function signin(){        
        $do_submit = $_REQUEST['do_submit'];
        $status = $_REQUEST['status'];
        if($status ==  1){
        	$msg = 'Su session ha finalizado';   	
        }
        if($status ==  4){
        	$status = 2;
        	$msg = 'Acceso denegado';
        }
        if($do_submit){
            //tomo usuario y pwd enviados
            $pwd = $_REQUEST['pwd'];
            $usr = $_REQUEST['usr'];
            if(empty($pwd) || empty($usr)){
                //no completo los datos
                $status = 2;
                $msg = 'Usuario o Password incorrectos';        
            }
            else{
                //trato de loguear usuario
                require_once (MODELS.'Usuario.class.php');
                $U = new Usuario;
                $pwd_enc = md5($pwd);
                $Q = new Query;
                $conditions = array('usr'=>$usr,'pwd'=>$pwd_enc);
                $Q->set('conditions',$conditions);
                if($U->loadMe($Q)){
                    //usuario correcto
                    //guardo objeto en sesion.
                    $_SESSION['usuario'] = serialize($U);
                    //actualizo datos del usuario
                    $U->set('lastLog',date("Y-m-d H:i:s"));
                    $U->set('lastIp',$_SERVER['REMOTE_ADDR']);
                    $U->updateMe();
                    //envio a crud de articulo.
                    header("location:?controller=autor&action=crud");
                    exit();
                }
                else{
                    //usuario y/o password incorrecto
                    $status = 2;
                    $msg = 'Usuario o Password incorrectos'; 
                }       
            }            
        }
        $this->View->assign('msg',$msg);
        $this->View->assign('status',$status);
        $this->View->assign('body','Login/login.tpl');
        $this->View->display('main/main.tpl');
    }     
}