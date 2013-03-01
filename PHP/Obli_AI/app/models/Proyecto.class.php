<?php
//Modelo de Subcategoria.

class Proyecto{
    
    private $id             = null;
    private $nombre         = null;
    private $descripcion    = null;
    private $ciudad         = null;
    private $creado         = null;
    private $actualizado    = null;
    
    public function get($att){
        return $this->$att;
    }
    public function set($att,$val){
        $this->$att = $val;
    }
    
    public function fetch($Q){
           	
    	$query = null;
        if($where = $Q->toSqlWhere()){
        	$query .= " WHERE $where";
        }
        if($period = $Q->toSqlPeriod()){
        	$query  .= !empty($query)?" AND $period":" WHERE $period";        	  	
        }
    	if($in = $Q->toSqlIn()){
        	$query  .= !empty($query)?" AND $in":" WHERE $in";        	      	
       	}
    	if($like = $Q->toSqlLike()){
        	$query  .= !empty($query)?" AND $like":" WHERE $like";        	     	
        } 
        if($order = $Q->toSqlOrder()){
        	$query  .= $order;        	   	
        }        
        
        $table = 'proyecto';        
        
        $sql = "SELECT *
                FROM $table
                $query";
       
        $DA = DataAccess::getInstance();
        //ejecuto la sentencia
        $DAR =  $DA->retrieve($sql); 
        $rows = $DAR->getRowSet();
        foreach($rows as $row){
            $proyecto[] = $row;
        }
        return $proyecto;
    }

    public function loadMe($Q){
    	if($where = $Q->toSqlWhere()){
        	$query .= " WHERE $where";
        }
        $table = 'proyecto';        
        
        $sql = "SELECT *
                FROM $table
                $query";
             
    	$DA = DataAccess::getInstance();
        //ejecuto la sentencia
        $DAR =  $DA->retrieve($sql);  
        $row = $DAR->getRow();
        if($row){
            //en key tengo el nombre del atributo
            //en value el valor del campo.
            foreach ($row as $key=>$value){
                $this->set($key,$value);
            }
            //cargue el objeto.
            return true;
        }
        else{
            //no cargue el objeto.
            return false;
        }
    }
     public function updateMe(){
        //actualizar un modelo de autor
        $nombre = $this->get('nombre');
        $descripcion = $this->get('descripcion');
        $ciudad = $this->get('ciudad');
        //$telefono = $this->get('telefono');
        //$imagen = $this->get('imagen');
	$actualizado = $this->get('actualizado');
        $id = $this->get('id');
        $sql = "UPDATE proyecto
                SET nombre      = '$nombre'
                ,descripcion       = '$descripcion'
                ,actualizado    = '$actualizado'
                ,ciudad 	= '$ciudad'
                WHERE id = $id";
         //me conecto al servidor
        $DA = DataAccess::getInstance();
        //ejecuto la sentencia
        return $DA->execute($sql);       
    }
    
    public function createMe(){
        //grabar un modelo de articulo
        $nombre = $this->get('nombre');
        $descripcion = $this->get('descripcion');
        $ciudad = $this->get('ciudad');
        $creado = $this->get('creado');
        $sql = "INSERT INTO proyecto
            (nombre,descripcion,ciudad,creado)
             VALUES('$nombre','$descripcion','$ciudad','$creado')";
         //me conecto al servidor
        $DA = DataAccess::getInstance();
        //ejecuto la sentencia
        $return =  $DA->execute($sql);
        //id generado lo cargo en atributo id
        $this->id = $DA->insert_id;         
        return $return;
    }
    public function deleteMe($ids){
        foreach($ids as $value){
            //en value me van quedando los id.
            $in .= ",$value";
        }
        //le quito primer coma
        $in = substr($in,1);
        
        $sql = "DELETE 
                FROM proyecto
                WHERE id IN($in)";
        
        //me conecto al servidor
        $DA = DataAccess::getInstance();
        //ejecuto la sentencia
        return $DA->execute($sql);  
    }
 
    
}
