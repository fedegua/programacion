<?php

class ControllerIndex extends AppController{
	
	//front-end, metodo por defecto sino se pasa controlador por parametro.
	public function index(){
		require_once (MODELS.'Hallazgo.class.php');
		$H = new Hallazgo;
		//pido a modelo ultimos 10 ingresados.
		$rows =  $H->newest(10);
		$this->View->assign('rows',$rows);
		$this->View->assign('body','Hallazgo/newest.tpl');
        $this->View->display('front_main/main.tpl');
	}	
	
	//front-end se invoca desde cuadro de busqueda.
	public function search(){
		require_once (MODELS.'Hallazgo.class.php');
		$search = $_REQUEST['search'];
		$H = new Hallazgo;
		$Q = new Query;
		$searched = array();
		if(!empty($search)){
			$searched = array('descripcion'=>$search,'id'=>$search);
		}
		$Q->set('search', $searched);
		$rows =  $H->fetch($Q);
		$this->View->assign('rows',$rows);
		$this->View->assign('search',$search);
		$this->View->assign('body','Hallazgo/search.tpl');
        $this->View->display('front_main/main.tpl');
	}
	
	//front-end
	public function contacto(){
		$this->View->assign('body','Index/contacto.tpl');
        $this->View->display('front_main/main.tpl');	
	}
	
}