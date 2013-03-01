<?php
//Controlador de Modelo Categoria.

class ControllerCategoria extends AppController{
    
	//front end
	public function listado(){		
       	$Q = new Query;       			
        require_once (MODELS.'Categoria.class.php');        
        $C = new Categoria;
        $rows = $C->fetch($Q);
        //$breadcrumb = array('Inicio'=>'?controller=index&action=index',$cat_name=>"?controller=subcategoria&action=listado&categoria=$categoria_id",$sub_name=>null);
        $breadcrumb = array('Inicio'=>'?controller=index&action=index','Categorias'=>null);
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('rows',$rows);
        $this->View->assign('body','Categoria/listado.tpl');
        $this->View->display('front_main/main.tpl');
    }
	
	public function delete(){
    	require_once (MODELS.'Categoria.class.php');
        $ids = $_REQUEST['id'];
        //$do_submit = $_REQUEST['do_submit'];
        if(!empty($ids)){
        	$C = new Categoria;
        	//elimino modelos.
        	$C->deleteMe($ids);
        	//elimino directorio de imagenes y contenido.
        	foreach($ids as $id){
            	rrmdir("uploads/$id/");
            	header("location:?controller=categoria&action=crud&status=3");
            	exit();
            }           	
        }
    	else{
            header("location:?controller=categoria&action=crud&status=2");
            exit();
        }
    }
	
	public function crud(){        
        require_once (MODELS.'Categoria.class.php');
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
			$searched = array('id'=>$search,'nombre'=>$search);
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
        $C = new Categoria;
        $rows = $C->fetch($Q);
        //crear breadcrumb para crud
        $breadcrumb = array('Categoria'=>'?controller=categoria&action=crud','Listado'=>null); 
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('status',$status);
        $this->View->assign('end_period',$end_period);
        $this->View->assign('start_period',$start_period);
        $this->View->assign('search',$search);
        $this->View->assign('msg',$msg);
        $this->View->assign('rows',$rows);
        $this->View->assign('body','Categoria/crud.tpl');
        $this->View->display('main/main.tpl');
    }
    
    public function update(){        
        require_once (MODELS.'Categoria.class.php');
        $id = $_REQUEST['id'];
        $do_submit = $_REQUEST['do_submit'];
        
        if(!empty($id)){
             $Q = new Query;	        	
			
            $C = new Categoria;
            //cargo modelo de autor
            $conditions = array('id'=>$id);
            $Q->set('conditions',$conditions);
            $C->loadMe($Q);                       
            
            if($do_submit){
                //tomo parametros
                $nombre = $_REQUEST['nombre'];
      
                //seteo modelo
                $C->set('nombre',$nombre);

                $C->set('actualizado',date("Y-m-d H:i:s"));
                
            	//actualizo modelo
                $C->updateMe();
	            //redirecciono al listado
	            header("location:?controller=categoria&action=crud&status=1");
	            exit();
            }    
            //paso datos al template 
            $breadcrumb = array('Categoria'=>'?controller=categoria&action=crud','Update'=>null);  

            $this->View->assign('nombre',$C->get('nombre'));
               
            $this->View->assign('breadcrumb',$breadcrumb);
            //$this->View->assign('categoria_id',$categoria_id);    
            $this->View->assign('id',$id);
            $this->View->assign('body','Categoria/update.tpl');
            $this->View->display('main/main.tpl');  
        }
        else{
            header("location:?controller=categoria&action=crud&status=2");
            exit();
        }
   }
   
   	public function detalle(){
            $id = $_REQUEST['id'];   		
            if(!empty($id)){
            $Q = new Query;
            require_once (MODELS.'Categoria.class.php');
            $C = new Categoria;
            //cargo modelo
            $conds = array('id'=>$id);
            $Q->set('conditions',$conds);
            $C->loadMe($Q);            
        	
            $this->View->assign('nombre',$C->get('nombre'));
            $this->View->assign('creado',$C->get('creado'));
            $this->View->assign('id',$C->get('id'));
            $breadcrumb = array('Inicio'=>'?controller=index&action=index',$cat_name=>"?controller=subcategoria&action=listado&categoria=$categoria_id",$sub_name=>"?controller=categoria&action=listado&subcategoria=$subcategoria_id",$C->get('nombre')=>null);
            $this->View->assign('breadcrumb',$breadcrumb);
            $this->View->assign('body','Categoria/detalle.tpl');
            $this->View->display('front_main/main.tpl');
            }   
   			
   }
   
	public function create(){        
        require_once (MODELS.'Categoria.class.php');  
                
        $do_submit = $_REQUEST['do_submit'];
        $C = new Categoria;
        
        $Q = new Query;		 	
        
        if($do_submit){
       		//tomo parametros
            $nombre = $_REQUEST['nombre'];
            $C->set('nombre',$nombre);
            $C->set('creado',date("Y-m-d H:i:s"));
            
            //creo modelo.
            $C->createMe();

            //redirecciono al listado
            header("location:?controller=categoria&action=crud&status=1");
            exit();
        }  
        
        
        $breadcrumb = array('Categoria'=>'?controller=categoria&action=crud','Create'=>null);                       
        $this->View->assign('breadcrumb',$breadcrumb);      
        
        $this->View->assign('body','Categoria/create.tpl');
        $this->View->display('main/main.tpl');
   }   
   
}