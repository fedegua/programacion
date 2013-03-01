<?php

class ControllerProyecto extends AppController{	
	
	//front-end
	
	//=>en categoria va ciudad
	//=>en subcategoria va proyecto
	
	public function listado(){
        $ciudad = $_REQUEST['ciudad'];		
        require_once (MODELS.'Proyecto.class.php');
        $Q = new Query;
        //Levanto modelos de la ciudad pasada por parametro.
        //validar ciudad no sea vacia.
        if(!empty($ciudad)){
            $conds = array('id'=>$ciudad);
            $Q->set('conditions',$conds);
            require_once (MODELS.'Ciudad.class.php');
            $C = new Ciudad;
            $C->loadMe($Q);
            $ciu_name = $C->get('ciudad');
            $conds = array('ciudad'=>$ciudad);
            $Q->set('conditions',$conds);
       	}	
       	$S= new Proyecto;
        $rows = $S->fetch($Q);
        $breadcrumb = array('Inicio'=>'?controller=index&action=index',$ciu_name=>null);
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('rows',$rows);
        $this->View->assign('body','Proyecto/listado.tpl');
        $this->View->display('front_main/main.tpl');
    }
    
    //se invoca desde jquery
    public function combo(){
            $ciudad = $_REQUEST['ciudad'];
            require_once (MODELS.'Proyecto.class.php');
        $Q = new Query;
        $S = new Proyecto;
        //condiciones recupererar todas las subcategorias de la categoria seleccionada.
		$conditions = array('ciudad'=>$ciudad);
		$Q->set('conditions',$conditions);
		$subs	= $S->fetch($Q);
		//creo array con options, con id como clave y nombre como value
		foreach($subs as $value){
			$options .= '<option value="' . $value['id'] . '">' . $value['nombre'] . '</option>';
		}
		echo $options;
	}	
        
        
        public function crud(){        
        require_once (MODELS.'Proyecto.class.php');
        //tomo el parametro enviado desde create_autor.php
        $status = $_REQUEST['status'];
        $search = $_REQUEST['search'];
        $start_period = $_REQUEST['start_period'];
        $end_period = $_REQUEST['end_period'];
                
        if($status == 1){
            $msg = 'El registro se creo correctamente.';
        }
        if($status == 2){
            $msg = 'Seleccione un item para continuar.';
        }
        if($status == 3){
            $status = 1;
            $msg = 'El registro se elimino correctamente.';
        }
        
       	$Q = new Query;       	
		$searched = array();
		if(!empty($search)){
			$searched = array('nombre'=>$search,'codigo'=>$search);
		}
		$Q->set('search', $searched);
				
		$period = array();
		if(!empty($start_period)){
			$period[]  = $this->toDateTime($start_period, 'start');			
		}
		if(!empty($end_period)){
			$period[]  = $this->toDateTime($end_period, 'end');
		}
		if(!empty($period)){
			$Q->set('period',array('creado'=>$period));		
		}	
        $P = new Proyecto;
        $rows = $P->fetch($Q);
        //crear breadcrumb para crud
        $breadcrumb = array('Proyecto'=>'?controller=proyecto&action=crud','Listado'=>null); 
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('status',$status);
        $this->View->assign('end_period',$end_period);
        $this->View->assign('start_period',$start_period);
        $this->View->assign('search',$search);
        $this->View->assign('msg',$msg);
        $this->View->assign('rows',$rows);
        $this->View->assign('body','Proyecto/crud.tpl');
        $this->View->display('main/main.tpl');
    }
    
   public function create(){        
        require_once (MODELS.'Proyecto.class.php');
        $ciudad_id = $_REQUEST['ciudad'];   
        $do_submit = $_REQUEST['do_submit'];
        $P = new Proyecto;
        
        $Q = new Query;
        //cargo lista de categorias para el list box categoria
        require_once (MODELS.'Ciudad.class.php');
        $C = new Ciudad;
        $rows = $C->fetch($Q);
        $options_ciudad = $this->toList($rows,'id','ciudad');    	
        
        if($do_submit){
       		//tomo parametros
            $nombre = $_REQUEST['nombre'];
            $descripcion = $_REQUEST['descripcion'];
            $ciudad = $_REQUEST['ciudad'];     
            //seteo modelo           
            $P->set('nombre',$nombre);
            $P->set('descripcion',$descripcion);
            $P->set('ciudad',$ciudad);       
            $P->set('creado',date("Y-m-d H:i:s"));        
            
            //creo modelo.
            $P->createMe();            
            
            //redirecciono al listado
            header("location:?controller=proyecto&action=crud&status=1");
            exit();
        }  
        
        
        $breadcrumb = array('Proyectos'=>'?controller=proyecto&action=crud','Create'=>null);                
        $this->View->assign('ciudad',$options_ciudad);
        $this->View->assign('breadcrumb',$breadcrumb);
       // $this->View->assign('ciudad',$options_ciudad);        
        $this->View->assign('body','Proyecto/create.tpl');
        $this->View->display('main/main.tpl');
   }	
    
   public function update(){        
        require_once (MODELS.'Proyecto.class.php');
        $id = $_REQUEST['id'];
        $do_submit = $_REQUEST['do_submit'];
        
        if(!empty($id)){
            $Q = new Query;
            //cargo lista de categorias para el list box categoria
            require_once (MODELS.'Ciudad.class.php');
            $C = new Ciudad;
            $rows = $C->fetch($Q);
            $options_ciudad = $this->toList($rows,'id','ciudad'); 
            $ciudad_id = $C->get('ciudad');
			
            $P = new Proyecto;
            //cargo modelo de articulo
            $conditions = array('id'=>$id);
            $Q->set('conditions',$conditions);
            $P->loadMe($Q);                       
            
            if($do_submit){
                //tomo parametros
                $nombre = $_REQUEST['nombre'];
                $codigo = $_REQUEST['descripcion']; 
                $ciudad = $_REQUEST['ciudad'];                      
                //seteo modelo
                $P->set('nombre',$nombre);
                $P->set('descripcion',$codigo);
                $P->set('ciudad',$ciudad);
                $P->set('actualizado',date("Y-m-d H:i:s"));
            	//actualizo modelo
                $P->updateMe();
	            //redirecciono al listado
	            header("location:?controller=proyecto&action=crud&status=1");
	            exit();
            }    
            //paso datos al template 
            $breadcrumb = array('Proyecto'=>'?controller=proyecto&action=crud','Update'=>null);  

            $this->View->assign('ciudad',$options_ciudad);
            $this->View->assign('nombre',$P->get('nombre'));
            $this->View->assign('descripcion',$P->get('descripcion'));   
            $this->View->assign('breadcrumb',$breadcrumb);
            $this->View->assign('ciudad_id',$ciudad_id);    
            $this->View->assign('id',$id);
            $this->View->assign('body','Proyecto/update.tpl');
            $this->View->display('main/main.tpl');  
        }
        else{
            header("location:?controller=articulo&action=crud&status=2");
            exit();
        }
   }
}