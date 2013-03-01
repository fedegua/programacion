<?php

class ControllerSubcategoria extends AppController{	
	
	//front-end
	public function listado(){
		$categoria_id = $_REQUEST['categoria'];		
	 	require_once (MODELS.'Subcategoria.class.php');
        $Q = new Query;
        //Levanto modelos de la categoria pasada por parametro.
        //validar categoria no sea vacia.
        if(!empty($categoria_id)){
       		$conds = array('id'=>$categoria_id);
			$Q->set('conditions',$conds);
			require_once (MODELS.'Categoria.class.php');
			$C = new Categoria;
			$C->loadMe($Q);
			$cat_name = $C->get('nombre');
			$conds = array('categoriaId'=>$categoria_id);
			$Q->set('conditions',$conds);
       	}	
       	$S= new Subcategoria;
        $rows = $S->fetch($Q);
        $breadcrumb = array('Inicio'=>'?controller=index&action=index',$cat_name=>null);
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('rows',$rows);
        $this->View->assign('body','Subcategoria/listado.tpl');
        $this->View->display('front_main/main.tpl');
    }
    
    //se invoca desde jquery
    public function combo(){
		$categoria_id = $_REQUEST['categoria'];
		require_once (MODELS.'Subcategoria.class.php');
        $Q = new Query;
        $S = new Subcategoria;
        //condiciones recupererar todas las subcategorias de la categoria seleccionada.
		$conditions = array('categoriaId'=>$categoria_id);
		$Q->set('conditions',$conditions);
		$subs	= $S->fetch($Q);
		//creo array con options, con id como clave y nombre como value
		foreach($subs as $value){
			$options .= '<option value="' . $value['id'] . '">' . $value['nombre'] . '</option>';
		}
		echo $options;
	}	
 	
}