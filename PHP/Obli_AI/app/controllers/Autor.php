<?php
//Controlador de Modelo Autor.

class ControllerAutor extends AppController{
    
	//front end
	public function listado(){

       	$Q = new Query;
	require_once (MODELS.'Autor.class.php');        
        //$conds = array('subcategoriaId'=>$subcategoria_id);
        //$Q->set('conditions',$conds);
        $A = new Autor;
        $rows = $A->fetch($Q);
        $breadcrumb = array('Inicio'=>'?controller=index&action=index','Autores'=>null);
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('rows',$rows);
        $this->View->assign('body','Autor/listado.tpl');
        $this->View->display('front_main/main.tpl');
    }
	
	public function delete(){
    	require_once (MODELS.'Autor.class.php');
        $ids = $_REQUEST['id'];
       // $do_submit = $_REQUEST['do_submit'];
        if(!empty($ids)){
        	$A = new Autor;
        	//elimino modelos.
        	$A->deleteMe($ids);
        	//elimino directorio de imagenes y contenido.
        	foreach($ids as $id){
            	rrmdir("uploads/autor/$id/");
            	header("location:?controller=autor&action=crud&status=3");
            	exit();
            }           	
        }
    	else{
            header("location:?controller=autor&action=crud&status=2");
            exit();
        }
    }
	
	public function crud(){        
        require_once (MODELS.'Autor.class.php');
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
        $A = new Autor;
        $rows = $A->fetch($Q);
        //crear breadcrumb para crud
        $breadcrumb = array('Autor'=>'?controller=autor&action=crud','Listado'=>null); 
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('status',$status);
        $this->View->assign('end_period',$end_period);
        $this->View->assign('start_period',$start_period);
        $this->View->assign('search',$search);
        $this->View->assign('msg',$msg);
        $this->View->assign('rows',$rows);
        $this->View->assign('body','Autor/crud.tpl');
        $this->View->display('main/main.tpl');
    }
    
    public function update(){        
        require_once (MODELS.'Autor.class.php');
        $id = $_REQUEST['id'];
        $do_submit = $_REQUEST['do_submit'];
        
        if(!empty($id)){
            $Q = new Query;	      	
			
            $A = new Autor;
            //cargo modelo de autor
            $conditions = array('id'=>$id);
            $Q->set('conditions',$conditions);
            $A->loadMe($Q);
                        
            if($do_submit){
                //tomo parametros
                $nombre = $_REQUEST['nombre'];
                $apellido = $_REQUEST['apellido'];
                $documento = $_REQUEST['documento'];
                $telefono = $_REQUEST['telefono'];      
                //seteo modelo
                $A->set('nombre',$nombre);
                $A->set('apellido',$apellido);
                $A->set('documento',$documento);
		$A->set('telefono',$telefono);
                $A->set('actualizado',date("Y-m-d H:i:s"));
                //imagen.
                $tmp_name = $_FILES["file"]["tmp_name"];
            	$name = $_FILES["file"]["name"];
            	if(!empty($name)){
            		//borro archivos actuales.
                    $id = $A->get('id');
                    $imagen = $A->get('imagen');
                    $uploads_dir = 'uploads/autor/'.$A->get('id');

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
                header("location:?controller=autor&action=crud&status=1");
                exit();
            }    
            //paso datos al template 
            $breadcrumb = array('Autor'=>'?controller=autor&action=crud','Update'=>null);  
           
            $this->View->assign('nombre',$A->get('nombre'));
            $this->View->assign('apellido',$A->get('apellido')); 
            $this->View->assign('documento',$A->get('documento'));
            $this->View->assign('telefono',$A->get('telefono')); 
            //$this->View->assign('subcategoria_id',$A->get('subcategoriaId'));   
            $this->View->assign('breadcrumb',$breadcrumb);
	        //$this->View->assign('categoria_id',$categoria_id);    
            $this->View->assign('id',$id);
            $this->View->assign('body','Autor/update.tpl');
            $this->View->display('main/main.tpl');  
        }
        else{
            header("location:?controller=autor&action=crud&status=2");
            exit();
        }
   }
   
   	public function detalle(){
   		$id = $_REQUEST['id'];   		
   		if(!empty($id)){
        	$Q = new Query;
        	require_once (MODELS.'Autor.class.php');
            $A = new Autor;
            //cargo modelo
            $conds = array('id'=>$id);
			$Q->set('conditions',$conds);
            $A->loadMe($Q);            
        	
            $this->View->assign('nombre',$A->get('nombre'));
            $this->View->assign('apellido',$A->get('apellido'));
            $this->View->assign('documento',$A->get('documento'));
            $this->View->assign('telefono',$A->get('telefono'));
            $this->View->assign('imagen',$A->get('imagen'));
            $this->View->assign('creado',$A->get('creado'));
            $this->View->assign('id',$A->get('id'));
            $breadcrumb = array('Inicio'=>'?controller=index&action=index','Autores'=>"?controller=autor&action=listado" ,$A->get('nombre')=>null);
       		$this->View->assign('breadcrumb',$breadcrumb);
	        //$this->View->assign('subcategoria_id',$subcategoria_id);
	        //$this->View->assign('categoria_id',$categoria_id);    
	        $this->View->assign('body','Autor/detalle.tpl');
	        $this->View->display('front_main/main.tpl');
   		}   
   			
   }
   
	public function create(){        
        require_once (MODELS.'Autor.class.php');
        /*$subcategoria_id = $_REQUEST['subcategoria'];
        $categoria_id = $_REQUEST['categoria']; */       
                
        $do_submit = $_REQUEST['do_submit'];
        $A = new Autor;
        
        $Q = new Query;
		//cargo lista de categorias para el list box categoria
       	/*require_once (MODELS.'Categoria.class.php');
		$C = new Categoria;
		$rows = $C->fetch($Q);
		$options_categoria = $this->toList($rows,'id','nombre'); 
		  
		//cargo lista de subcategorias para el list box categoria
		require_once (MODELS.'Subcategoria.class.php');
		$S = new Subcategoria;
		$rows = $S->fetch($Q);
		$options_subcategoria = $this->toList($rows,'id','nombre'); */    	
        
        if($do_submit){
       		//tomo parametros
            $nombre = $_REQUEST['nombre'];
            $apellido = $_REQUEST['apellido'];
            $documento = $_REQUEST['documento'];
            $telefono = $_REQUEST['telefono'];
            $tmp_name = $_FILES["file"]["tmp_name"];
            $name = $_FILES["file"]["name"];         
            //seteo modelo           
            $A->set('nombre',$nombre);
            $A->set('apellido',$apellido);
            $A->set('documento',$documento);
            $A->set('telefono',$telefono);
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
	            $uploads_dir = 'uploads/autor/'.$A->get('id');
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
            header("location:?controller=autor&action=crud&status=1");
            exit();
        }  

        
        $breadcrumb = array('Autor'=>'?controller=autor&action=crud','Create'=>null);                
        /*$this->View->assign('categorias',$options_categoria);
        $this->View->assign('subcategorias',$options_subcategoria);*/
        $this->View->assign('breadcrumb',$breadcrumb);
        /*$this->View->assign('subcategoria_id',$subcategoria_id);
        $this->View->assign('categoria_id',$categoria_id);*/
        
        $this->View->assign('body','Autor/create.tpl');
        $this->View->display('main/main.tpl');
   }   
   
}