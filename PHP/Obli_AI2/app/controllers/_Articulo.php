<?php
//Controlador de Modelo Articulo.

class ControllerArticulo extends AppController{
    
	//front end
	public function listado(){
		$subcategoria_id = $_REQUEST['subcategoria'];
		$sub_name = 'Subcategoria';
       	$cat_name = 'Categoria';
       	$Q = new Query;
       	if(!empty($subcategoria_id)){
       		//Cargo nombre subcategoria.
       		require_once (MODELS.'Subcategoria.class.php');
			$SU = new Subcategoria;
			$conds = array('id'=>$subcategoria_id);
			$Q->set('conditions',$conds);
			$SU->loadMe($Q);
			$sub_name = $SU->get('nombre');
			$categoria_id = $SU->get('categoriaId');
       	}	
       	if(!empty($categoria_id)){
			//cargo nombre categoria
       		require_once (MODELS.'Categoria.class.php');
			$conds = array('id'=>$categoria_id);
			$Q->set('conditions',$conds);			
			$C = new Categoria;
			$C->loadMe($Q);
			$cat_name = $C->get('nombre');       		
       	}
		
	 	require_once (MODELS.'Articulo.class.php');        
        $conds = array('subcategoriaId'=>$subcategoria_id);
		$Q->set('conditions',$conds);
		$A = new Articulo;
        $rows = $A->fetch($Q);
        $breadcrumb = array('Inicio'=>'?controller=index&action=index',$cat_name=>"?controller=subcategoria&action=listado&categoria=$categoria_id",$sub_name=>null);
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('rows',$rows);
        $this->View->assign('body','Articulo/listado.tpl');
        $this->View->display('front_main/main.tpl');
    }
	
	public function delete(){
    	require_once (MODELS.'Articulo.class.php');
        $ids = $_REQUEST['id'];
        $do_submit = $_REQUEST['do_submit'];
        if(!empty($ids)){
        	$A = new Articulo;
        	//elimino modelos.
        	$A->deleteMe($ids);
        	//elimino directorio de imagenes y contenido.
        	foreach($ids as $id){
            	rrmdir("uploads/$id/");
            	header("location:?controller=articulo&action=crud&status=3");
            	exit();
            }           	
        }
    	else{
            header("location:?controller=articulo&action=crud&status=2");
            exit();
        }
    }
	
	public function crud(){        
        require_once (MODELS.'Articulo.class.php');
        //tomo el parametro enviado desde create_articulo.php
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
        $A = new Articulo;
        $rows = $A->fetch($Q);
        //crear breadcrumb para crud
        $breadcrumb = array('Articulos'=>'?controller=articulo&action=crud','Listado'=>null); 
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('status',$status);
        $this->View->assign('end_period',$end_period);
        $this->View->assign('start_period',$start_period);
        $this->View->assign('search',$search);
        $this->View->assign('msg',$msg);
        $this->View->assign('rows',$rows);
        $this->View->assign('body','Articulo/crud.tpl');
        $this->View->display('main/main.tpl');
    }
    
    public function update(){        
        require_once (MODELS.'Articulo.class.php');
        $id = $_REQUEST['id'];
        $do_submit = $_REQUEST['do_submit'];
        
        if(!empty($id)){
        	$Q = new Query;
	        //cargo lista de categorias para el list box categoria
	       	require_once (MODELS.'Categoria.class.php');
			$C = new Categoria;
			$rows = $C->fetch($Q);
			$options_categoria = $this->toList($rows,'id','nombre'); 		
			
            $A = new Articulo;
            //cargo modelo de articulo
            $conditions = array('id'=>$id);
            $Q->set('conditions',$conditions);
            $A->loadMe($Q);
            
            //cargo lista de subcategorias para el list box subcategoria
            require_once (MODELS.'Subcategoria.class.php');
            $S = new Subcategoria;
            //para dejar seleccionada la categoria actual del articulo.
            $conditions = array('id'=>$A->get('subcategoriaId'));
            $Q->set('conditions',$conditions);
            $S->loadMe($Q);
            $categoria_id = $S->get('categoriaId');
			//cargo subcategorias de categoria actual.
            $conditions = array('categoriaId'=>$categoria_id);
            $Q->set('conditions',$conditions);
            
            $rows = $S->fetch($Q);
            $options_subcategoria = $this->toList($rows,'id','nombre'); 
            
            if($do_submit){
                //tomo parametros
                $nombre = $_REQUEST['nombre'];
                $codigo = $_REQUEST['codigo']; 
                $precio = $_REQUEST['precio'];   
                $subcategoria_id = $_REQUEST['subcategoria'];
        		$categoria_id = $_REQUEST['categoria'];       
                //seteo modelo
                $A->set('nombre',$nombre);
                $A->set('codigo',$codigo);
                $A->set('precio',$precio);
                $A->set('actualizado',date("Y-m-d H:i:s"));
                $A->set('subcategoriaId',$subcategoria_id);
                //imagen.
                $tmp_name = $_FILES["file"]["tmp_name"];
            	$name = $_FILES["file"]["name"];
            	if(!empty($name)){
            		//borro archivos actuales.
	            	$id = $A->get('id');
	            	$imagen = $A->get('imagen');
	            	$uploads_dir = 'uploads/'.$A->get('id');
	            	
	            	if(file_exists("$uploads_dir/$imagen")){
	            		unlink("$uploads_dir/$imagen");
	            		unlink("$uploads_dir/mini/$imagen");            		
	            	}
	            	else{
	            		//creo directorio para grabar imagen
			            mkdir($uploads_dir);
			            //creo directorio para imagenes mini
			            mkdir("$uploads_dir/mini/");	
	            	}
	            	move_uploaded_file($tmp_name, "$uploads_dir/$name");
		            $image = new SimpleImage();
		            $image->load("$uploads_dir/$name");
		            $image->resize(100, 100);
		            $image->save("$uploads_dir/mini/$name");
		           
	                $A->set('imagen',$name);
            	}
            	//actualizo modelo
                $A->updateMe();
	            //redirecciono al listado
	            header("location:?controller=articulo&action=crud&status=1");
	            exit();
            }    
            //paso datos al template 
            $breadcrumb = array('Articulos'=>'?controller=articulo&action=crud','Update'=>null);  

            $this->View->assign('categorias',$options_categoria);
        	$this->View->assign('subcategorias',$options_subcategoria);
            $this->View->assign('nombre',$A->get('nombre'));
            $this->View->assign('codigo',$A->get('codigo')); 
            $this->View->assign('precio',$A->get('precio')); 
            $this->View->assign('subcategoria_id',$A->get('subcategoriaId'));   
            $this->View->assign('breadcrumb',$breadcrumb);
	        $this->View->assign('categoria_id',$categoria_id);    
	        $this->View->assign('id',$id);
	        $this->View->assign('body','Articulo/update.tpl');
	        $this->View->display('main/main.tpl');  
        }
        else{
            header("location:?controller=articulo&action=crud&status=2");
            exit();
        }
   }
   
   	public function detalle(){
   		$id = $_REQUEST['id'];   		
   		if(!empty($id)){
        	$Q = new Query;
        	require_once (MODELS.'Articulo.class.php');
            $A = new Articulo;
            //cargo modelo
            $conds = array('id'=>$id);
			$Q->set('conditions',$conds);
            $A->loadMe($Q);
            $subcategoria_id = $A->get('subcategoriaId');        
	        //validar que venga una subcategoria.
	       	if(!empty($subcategoria_id)){
	       		//Cargo nombre subcategoria.
	       		require_once (MODELS.'Subcategoria.class.php');
				$SU = new Subcategoria;
				$conds = array('id'=>$subcategoria_id);
				$Q->set('conditions',$conds);
				$SU->loadMe($Q);
				$sub_name = $SU->get('nombre');
				$categoria_id  = $SU->get('categoriaId');
	       	}	
	       	if(!empty($categoria_id)){
				//cargo nombre categoria
	       		require_once (MODELS.'Categoria.class.php');
				$conds = array('id'=>$categoria_id);
				$Q->set('conditions',$conds);			
				$C = new Categoria;
				$C->loadMe($Q);
				$cat_name = $C->get('nombre');				
	       	}
        	
            $this->View->assign('codigo',$A->get('codigo'));
            $this->View->assign('nombre',$A->get('nombre'));
            $this->View->assign('imagen',$A->get('imagen'));
            $this->View->assign('creado',$A->get('creado'));
            $this->View->assign('precio',$A->get('precio'));
            $this->View->assign('id',$A->get('id'));
            $breadcrumb = array('Inicio'=>'?controller=index&action=index',$cat_name=>"?controller=subcategoria&action=listado&categoria=$categoria_id",$sub_name=>"?controller=articulo&action=listado&subcategoria=$subcategoria_id",$A->get('nombre')=>null);
       		$this->View->assign('breadcrumb',$breadcrumb);
	        $this->View->assign('subcategoria_id',$subcategoria_id);
	        $this->View->assign('categoria_id',$categoria_id);    
	        $this->View->assign('body','Articulo/detalle.tpl');
	        $this->View->display('front_main/main.tpl');
   		}   
   			
   }
   
	public function create(){        
        require_once (MODELS.'Articulo.class.php');
        $subcategoria_id = $_REQUEST['subcategoria'];
        $categoria_id = $_REQUEST['categoria'];        
                
        $do_submit = $_REQUEST['do_submit'];
        $A = new Articulo;
        
        $Q = new Query;
		//cargo lista de categorias para el list box categoria
       	require_once (MODELS.'Categoria.class.php');
        $C = new Categoria;
        $rows = $C->fetch($Q);
        $options_categoria = $this->toList($rows,'id','nombre'); 

        //cargo lista de subcategorias para el list box categoria
        require_once (MODELS.'Subcategoria.class.php');
        $S = new Subcategoria;
        $rows = $S->fetch($Q);
        $options_subcategoria = $this->toList($rows,'id','nombre');     	
        
        if($do_submit){
       		//tomo parametros
            $nombre = $_REQUEST['nombre'];
            $codigo = $_REQUEST['codigo'];
            $precio = $_REQUEST['precio'];
            $tmp_name = $_FILES["file"]["tmp_name"];
            $name = $_FILES["file"]["name"];         
            //seteo modelo           
            $A->set('nombre',$nombre);
            $A->set('codigo',$codigo);
            $A->set('precio',$precio);
            $A->set('subcategoriaId',$subcategoria_id);
            $A->set('creado',date("Y-m-d H:i:s"));
            $upload_img = false;
            if(!empty($name)){
            	$A->set('imagen',$name);
	            $upload_img = true;
            }
            //creo modelo.
            $A->createMe();
            if($upload_img){
            	 //Subida de imagen.
	            $uploads_dir = 'uploads/'.$A->get('id');
	            //creo directorio para grabar imagen
	            mkdir($uploads_dir);
	            //creo directorio para imagenes mini
	            mkdir("$uploads_dir/mini/");            
	            move_uploaded_file($tmp_name, "$uploads_dir/$name");
	            $image = new SimpleImage();
	            $image->load("$uploads_dir/$name");
	            $image->resize(100, 100);
	            $image->save("$uploads_dir/mini/$name");
            }
            //redirecciono al listado
            header("location:?controller=articulo&action=crud&status=1");
            exit();
        }  
        
        
        $breadcrumb = array('Articulos'=>'?controller=articulo&action=crud','Create'=>null);                
        $this->View->assign('categorias',$options_categoria);
        $this->View->assign('subcategorias',$options_subcategoria);
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('subcategoria_id',$subcategoria_id);
        $this->View->assign('categoria_id',$categoria_id);
        
        $this->View->assign('body','Articulo/create.tpl');
        $this->View->display('main/main.tpl');
   }   
   
}