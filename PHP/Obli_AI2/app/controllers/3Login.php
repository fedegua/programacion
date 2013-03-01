<?php

class ControllerLogin extends AppController{
    
    public function signin(){        
        $do_submit = $_REQUEST['do_submit'];
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
                if($U->loadMe(array('usr'=>$usr,'pwd'=>$pwd))){
                    //usuario correcto
                    //guardo objeto en sesion.
                    $_SESSION['usuario'] = serialize($U);
                    //actualizo datos del usuario
                    $U->set('lastLog',date("Y-m-d H:i:s"));
                    $U->set('lastIp',$_SERVER['REMOTE_ADDR']);
                    $U->updateMe();
                    header("location:?controller=Proyecto&
                        action=crud");
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