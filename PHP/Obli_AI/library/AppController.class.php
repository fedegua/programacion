<?php

class AppController{
	
	protected $View = null;
	
	function __construct(){
		//instancio clase
		//defino donde estan los archivos tpl y commpilados		
		$this->View = new Smarty;
		$this->View->template_dir = TEMPLATES;
		$this->View->compile_dir = COMPILES;
		//paso nombre de controlador y action a la vista para utilizarlo en los templates
		$controller = $_REQUEST['controller'];
        $action     = $_REQUEST['action'];
		$this->View->assign('controller',$controller);
		$this->View->assign('action',$action);
        //paso datos del usuario a la vista
        require_once (MODELS.'Usuario.class.php');
        $U = unserialize($_SESSION['usuario']);
        //si es un objeto
        $login = false;
        if(is_object($U)){
        	$login = true;
            $last_log = $U->get('lastLog');
            $last_ip = $U->get('lastIp');
            $usr = $U->get('usr');
            $this->View->assign('login',$login);
            $this->View->assign('last_log',$last_log);
            $this->View->assign('last_ip',$last_ip);
            $this->View->assign('usr',$usr);		
        }
        new Security;
                
	}
	
	public function toList($rows, $key, $value){
		foreach($rows as $val){
			$result[$val[$key]] = $val[$value];
		}
		return $result;
	}
	
	public function toDateTime($date, $format){
		switch($format){
			case 'start';
				return $date.' 00:00:00';
			case 'end':
				return $date.' 23:59:59';
			default:
				die(__METHOD__.' Invalid format');	
		}
	}
}