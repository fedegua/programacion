<?php
//Controlador de Modelo Hallazgo.

class ControllerHallazgo extends AppController{
    
	//front end
	public function listado(){
        $proyecto_id = $_REQUEST['proyecto'];
        $categoria_id= $_REQUEST['categoria'];      
        $sub_name = 'Proyecto';
       	$cat_name = 'Categoria';
        require_once (MODELS.'Hallazgo.class.php');
       	$Q = new Query;
       	if(!empty($proyecto_id)){

            //Cargo nombre subcategoria.
            require_once (MODELS.'Proyecto.class.php');
            $P = new Proyecto;
            $conds = array('id'=>$proyecto_id);
            $Q->set('conditions',$conds);
            $P->loadMe($Q);
            $sub_name = $P->get('nombre');
            $ciudad = $P->get('ciudad');
            $conds = array('proyecto_id'=>$proyecto_id);


       	}	
       	if(!empty($ciudad)){
                    //cargo nombre categoria
            require_once (MODELS.'Ciudad.class.php');
            //$conds = array('id'=>$ciudad);                                                                        
            //$Q->set('conditions',$conds);			
            $C = new Ciudad;
            $C->loadMe($Q);
            $ciu_name = $C->get('ciudad'); 

                
       	}
        if(!empty($categoria_id)){
            //cargo nombre categoria
            require_once (MODELS.'Categoria.class.php');
            $conds = array('id'=>$categoria_id);
            $Q->set('conditions',$conds);			
            $Ca = new Categoria;
            $Ca->loadMe($Q);
            $cat_name = $Ca->get('nombre');
            $conds = array('categoria_id'=>$categoria_id);

        }   
        $Q->set('conditions',$conds);
        $H = new Hallazgo;
        $rows = $H->fetch($Q);
	 	
        //$breadcrumb = array('Inicio'=>'?controller=index&action=index',$cat_name=>"?controller=hallazgo&action=listado&categoria=$categoria_id",$sub_name=>null);
         if(!empty($categoria_id)){
            $breadcrumb = array('Inicio'=>'?controller=index&action=index',$cat_name=>null);
         }
         else {
             $breadcrumb = array('Inicio'=>'?controller=index&action=index',$ciu_name=>"?controller=hallazgo&action=listado&ciudad=$ciudad",$sub_name=>null);
             
         }
             
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('rows',$rows);
        $this->View->assign('body','Hallazgo/listado.tpl');
        $this->View->display('front_main/main.tpl');
    }
	
	public function delete(){
    	require_once (MODELS.'Hallazgo.class.php');
        $ids = $_REQUEST['id'];
        $do_submit = $_REQUEST['do_submit'];
        if(!empty($ids)){
        	$H = new Hallazgo;
        	//elimino modelos.
        	$H->deleteMe($ids);
        	//elimino directorio de imagenes y contenido.
        	foreach($ids as $id){
            	rrmdir("uploads/$id/");
            	header("location:?controller=hallazgo&action=crud&status=3");
            	exit();
            }           	
        }
    	else{
            header("location:?controller=hallazgo&action=crud&status=2");
            exit();
        }
    }
	
	public function crud(){        
        require_once (MODELS.'Hallazgo.class.php');
        //tomo el parametro enviado desde create_hallazgo.php
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
			$searched = array('id'=>$search,'descripcion'=>$search);
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
        $H = new Hallazgo;
        $rows = $H->fetch($Q);
        //crear breadcrumb para crud
        $breadcrumb = array('Hallazgo'=>'?controller=hallazgo&action=crud','Listado'=>null); 
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('status',$status);
        $this->View->assign('end_period',$end_period);
        $this->View->assign('start_period',$start_period);
        $this->View->assign('search',$search);
        $this->View->assign('msg',$msg);
        $this->View->assign('rows',$rows);
        $this->View->assign('body','Hallazgo/crud.tpl');
        $this->View->display('main/main.tpl');
    }
    
    public function update(){        
        require_once (MODELS.'Hallazgo.class.php');
        $id = $_REQUEST['id'];
        $do_submit = $_REQUEST['do_submit'];
        
        if(!empty($id)){
            $Q = new Query;
            //cargo lista de categorias para el list box categoria
            require_once (MODELS.'Ciudad.class.php');
            $C = new Ciudad;
            $rows = $C->fetch($Q);
            $options_ciudad = $this->toList($rows,'id','ciudad'); 		

            $H = new Hallazgo;
            //cargo modelo de hallazgo
            $conditions = array('id'=>$id);
            $Q->set('conditions',$conditions);
            $H->loadMe($Q);

        //cargo lista de proyecto para el list box proyecto
            require_once (MODELS.'Proyecto.class.php');
            $P = new Proyecto;
            //para dejar seleccionada la categoria actual del articulo.
            $conditions = array('id'=>$H->get('proyecto_id'));
            $Q->set('conditions',$conditions);
            $P->loadMe($Q);
            $ciudad = $P->get('ciudad');
            //cargo proyecto de ciudad actual.
            $conditions = array('ciudad'=>$ciudad);
            $Q->set('conditions',$conditions);
            $rows = $P->fetch($Q);
            $options_proyecto = $this->toList($rows,'id','nombre'); 
            
            require_once (MODELS.'Material.class.php');
            $Q = new Query;
            $M = new Material;
            $rows = $M->fetch($Q);
            $options_material = $this->toList($rows,'id','nombre');
            
            require_once (MODELS.'Categoria.class.php');
            $Ca = new Categoria;
            $rows = $Ca->fetch($Q);
            $options_categoria = $this->toList($rows,'id','nombre');
            
            require_once (MODELS.'Autor.class.php');
            $A = new Autor;
            $rows = $A->fetch($Q);
            $options_autor = $this->toList($rows,'id','nombre');
            
        if($do_submit){
            //tomo parametros
            $descripcion = $_REQUEST['descripcion'];
            $imagen = $_REQUEST['imagen'];
            $latitud = $_REQUEST['latitud'];
            $longitud = $_REQUEST['longitud'];
            $material_id = $_REQUEST['material'];
            $categoria_id = $_REQUEST['categoria'];
            $fecha_hallazgo = $_REQUEST['fechaHallazgo'];
            $autor_id = $_REQUEST['autor'];
            $proyecto_id = $_REQUEST['proyecto'];


            $ciudad = $_REQUEST['ciudad'];       
            //seteo modelo
            $H->set('descripcion',$descripcion);
            $H->set('imagen',$imagen);
            $H->set('latitud',$latitud);
            $H->set('longitud',$longitud);
            $H->set('material_id',$material_id);
            $H->set('categoria_id',$categoria_id);
            $H->set('fecha_hallazgo',$fecha_hallazgo);
            $H->set('autor_id',$autor_id);
            $H->set('proyecto_id',$proyecto_id);
            $H->set('ciudad',$ciudad);
            $H->set('actualizado',date("Y-m-d H:i:s"));
            //imagen.
            $tmp_name = $_FILES["file"]["tmp_name"];
            $name = $_FILES["file"]["name"];
            if(!empty($name)){
                    //borro archivos actuales.
                    $id = $H->get('id');
                    $imagen = $H->get('imagen');
                    $uploads_dir = 'uploads/'.$H->get('id');

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
                    $H->set('imagen',$descripcion);
            }
            //actualizo modelo
            $H->updateMe();
                //redirecciono al listado
                header("location:?controller=hallazgo&action=crud&status=1");
                exit();
        }    
        //paso datos al template 
        $breadcrumb = array('Hallazgo'=>'?controller=hallazgo&action=crud','Update'=>null);  

        $this->View->assign('ciudad',$options_ciudad);
            $this->View->assign('proyecto',$options_proyecto);
        $this->View->assign('descripcion',$H->get('descripcion'));
        $this->View->assign('imagen',$H->get('imagen')); 
        $this->View->assign('latitud',$H->get('latitud'));
        $this->View->assign('fechaHallazgo',$H->get('fecha_hallazgo'));
            $this->View->assign('longitud',$H->get('longitud'));
            $this->View->assign('material_id',$H->get('material_id'));
            $this->View->assign('categoria_id',$H->get('categoria_id'));
            $this->View->assign('fecha_hallazgo',$H->get('fecha_hallazgo'));
            $this->View->assign('autor_id',$H->get('autor_id'));
            $this->View->assign('proyecto_id',$H->get('proyecto_id'));

        $this->View->assign('breadcrumb',$breadcrumb);
            $this->View->assign('ciudad',$options_ciudad); 
            $this->View->assign('autor',$options_autor);
            $this->View->assign('material',$options_material);
            $this->View->assign('categoria',$options_categoria);
            $this->View->assign('ciudad_id',$ciudad); 
            $this->View->assign('id',$id);
            $this->View->assign('body','Hallazgo/update.tpl');
            $this->View->display('main/main.tpl');  
    }
    else{
        header("location:?controller=hallazgo&action=crud&status=2");
        exit();
    }
   }
   
   	public function detalle(){
            $id = $_REQUEST['id'];   		
            if(!empty($id)){
            $Q = new Query;
            require_once (MODELS.'Hallazgo.class.php');
            $H = new Hallazgo;
            //cargo modelo
            $conds = array('id'=>$id);
            $Q->set('conditions',$conds);
            $H->loadMe($Q);
            $proyecto_id = $H->get('proyecto_id');  
            $cat = $H->get('categoria_id');
            $autor = $H->get('autor_id');
            $material = $H->get('material_id');

            if(!empty($material)){
                //Cargo descripcion proyecto.
                require_once (MODELS.'Material.class.php');
                $M = new Material;
                $conds = array('id'=>$material);
                $Q->set('conditions',$conds);
                $M->loadMe($Q);
                $material_name = $M->get('nombre');       
            }	
            if(!empty($autor)){
                //Cargo descripcion proyecto.
                require_once (MODELS.'Autor.class.php');
                $A = new Autor();
                $conds = array('id'=>$autor);
                $Q->set('conditions',$conds);
                $A->loadMe($Q);
                $auto_name = $A->get('nombre');       
            }	
	        //validar que venga una proyecto.
            if(!empty($proyecto_id)){
                //Cargo descripcion proyecto.
                require_once (MODELS.'Proyecto.class.php');
                $P = new Proyecto;
                $conds = array('id'=>$proyecto_id);
                $Q->set('conditions',$conds);
                $P->loadMe($Q);
                $sub_name = $P->get('descripcion');
                $ciudad  = $P->get('ciudad');
        

            }	
            if(!empty($ciudad)){
                //cargo nombre ciudad
                require_once (MODELS.'Ciudad.class.php');
                $conds = array('id'=>$ciudad);
                $Q->set('conditions',$conds);			
                $C = new Ciudad;
                $C->loadMe($Q);
                $ciudad_name = $C->get('ciudad');
               //echo $ciudad_name;
                //die();
            }
            if(!empty($cat)){

                //cargo nombre ciudad
                require_once (MODELS.'Categoria.class.php');
                $conds = array('id'=>$cat);
                $Q->set('conditions',$conds);			
                $Ca = new Categoria;
                $Ca->loadMe($Q);
                
                $cat_name = $Ca->get('nombre');
               //echo $ciudad_name;
                //die();
            }
            
            
            $this->View->assign('descripcion',$H->get('descripcion'));
            $this->View->assign('imagen',$H->get('imagen'));
            $this->View->assign('latitud',$H->get('latitud'));
            $this->View->assign('longitud',$H->get('longitud'));


            $this->View->assign('categoria_id',$H->get('categoria_id'));
            $this->View->assign('fecha_hallazgo',$H->get('fecha_hallazgo'));
            $this->View->assign('autor_id',$H->get('autor_id'));
            $this->View->assign('proyecto_id',$H->get('proyecto_id'));
            $this->View->assign('creado',$H->get('creado'));
            $this->View->assign('id',$H->get('id'));
            $breadcrumb = array('Inicio'=>'?controller=index&action=index',$cat_name=>"?controller=hallazgo&action=listado&categoria=$cat" ,$H->get('descripcion')=>null);
            //$breadcrumb = array('Inicio'=>'?controller=index&action=index',$ciudad_name=>"?controller=ciudad&action=listado&ciudad=$ciudad",$sub_name=>"?controller=hallazgo&action=listado&subcategoria=$proyecto_id",$H->get('descripcion')=>null);
            $this->View->assign('breadcrumb',$breadcrumb);
            $this->View->assign('proyecto_id',$proyecto_id);
            $this->View->assign('categoria',$cat);
            $this->View->assign('ciudad',$ciudad);
            $this->View->assign('ciudad_name',$ciudad_name);
            $this->View->assign('proyecto_name',$sub_name);
            $this->View->assign('material_name',$material_name);
            $this->View->assign('autor_name',$auto_name);
            $this->View->assign('categoria_name',$cat_name);
            $this->View->assign('body','Hallazgo/detalle.tpl');
            $this->View->display('front_main/main.tpl');
   		}   
   			
   }
   
	public function create(){        
        require_once (MODELS.'Hallazgo.class.php');
        $proyecto_id = $_REQUEST['proyecto'];
        $material_id = $_REQUEST['material']; 
        $autor_id = $_REQUEST['autor'];
        $proyecto_id = $_REQUEST['proyecto'];
        $categoria_id = $_REQUEST['categoria'];
        $ciudad = $_REQUEST['ciudad'];      
        $do_submit = $_REQUEST['do_submit'];
        $H = new Hallazgo;
        
        $Q = new Query;
        
		//cargo lista de ciudad para el list box proyectos
       	require_once (MODELS.'Ciudad.class.php');
        $C = new Ciudad;
        $rows = $C->fetch($Q);
        $options_ciudad = $this->toList($rows,'id','ciudad'); 

        //cargo lista de autor para el list box proyectos
        require_once (MODELS.'Proyecto.class.php');
        $P = new Proyecto;
        $rows = $P->fetch($Q);
        $options_proyecto = $this->toList($rows,'id','nombre');  
        //cargo lista de autor para el list box proyectos
        require_once (MODELS.'Material.class.php');
        $M = new Material;
        $rows = $M->fetch($Q);
        $options_material = $this->toList($rows,'id','nombre');  
            //cargo lista de autor proyectos para el list box proyectos
        require_once (MODELS.'Categoria.class.php');
        $C = new Categoria;
        $rows = $C->fetch($Q);
        $options_categoria = $this->toList($rows,'id','nombre');  
            //cargo lista de autor para el list box proyectos
        require_once (MODELS.'Autor.class.php');
        $A = new Autor;
        $rows = $A->fetch($Q);
        $options_autor = $this->toList($rows,'id','nombre');  
        
        if($do_submit){
       		//tomo parametros
            $descripcion = $_REQUEST['descripcion'];
            $imagen = $_REQUEST['imagen'];
            $latitud = $_REQUEST['latitud'];
            $longitud = $_REQUEST['longitud'];
            $fecha_hallazgo = $_REQUEST['fecha_hallazgo'];

            $tmp_name = $_FILES["file"]["tmp_name"];
            $name = $_FILES["file"]["name"];         
            //seteo modelo           
            $H->set('descripcion',$descripcion);            
            $H->set('latitud',$latitud);
            $H->set('longitud',$longitud);
            $H->set('material_id',$material_id);
            $H->set('categoria_id',$categoria_id);
            $H->set('fecha_hallazgo',$fecha_hallazgo);
            $H->set('autor_id',$autor_id);
            $H->set('proyecto_id',$proyecto_id);           
            $H->set('creado',date("Y-m-d H:i:s"));
            $upload_img = false;
            if(!empty($name)){
            	$H->set('imagen',$name);
	            $upload_img = true;
            }
            //creo modelo.
            $H->createMe();
            if($upload_img){
            	 //Subida de imagen.
	            $uploads_dir = 'uploads/'.$H->get('id');
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
            header("location:?controller=hallazgo&action=crud&status=1");
            exit();
        }  
        
        
        $breadcrumb = array('Hallazgo'=>'?controller=hallazgo&action=crud','Create'=>null);                
        $this->View->assign('ciudad',$options_ciudad);
        $this->View->assign('proyecto',$options_proyecto);
        $this->View->assign('material',$options_material);
        $this->View->assign('categoria',$options_categoria);
        $this->View->assign('autor',$options_autor);        
        $this->View->assign('breadcrumb',$breadcrumb);
        $this->View->assign('proyecto_id',$proyecto_id);
        $this->View->assign('ciudadId',$ciudad);
        $this->View->assign('material_id',$material_id);
        $this->View->assign('categoria_id',$categoria_id);
        $this->View->assign('autor_id',$autor_id);
        
        $this->View->assign('body','Hallazgo/create.tpl');
        $this->View->display('main/main.tpl');
   }   
   
}