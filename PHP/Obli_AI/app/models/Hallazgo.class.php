<?php
//Modelo de hallazgo.

class Hallazgo{
    
    private $id             = null;
    private $descripcion    = null;
    private $imagen         = null;
    private $latitud        = null;
    private $longitud       = null;
    private $material_id    = null;
    private $categoria_id   = null;
    private $fecha_hallazgo  = null;
    private $autor_id       = null;
    private $proyecto_id    = null;
    private $creado         = null;
    private $actualizado    = null;
    
    public function get($att){
        return $this->$att;
    }
    public function set($att,$val){
        $this->$att = $val;
    }
    
    public function deleteMe($ids){
        foreach($ids as $value){
            //en value me van quedando los id.
            $in .= ",$value";
        }
        //le quito primer coma
        $in = substr($in,1);
        
        $sql = "DELETE 
                FROM hallazgo
                WHERE id IN($in)";
        
        //me conecto al servidor
        $DA = DataAccess::getInstance();
        //ejecuto la sentencia
        return $DA->execute($sql);  
    }
    
    public function loadMe($Q){
    	if($where = $Q->toSqlWhere()){
        	$query .= " WHERE $where";
        }
        $table = 'hallazgo';        
        
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
        //actualizar un modelo de hallazgo
        $descripcion = $this->get('descripcion');
        $imagen = $this->get('imagen');
        $actualizado = $this->get('actualizado');
        $proyecto_id = $this->get('proyecto_id');
        $latitud = $this->get('latitud');
        $longitud = $this->get('longitud');
        $material_id = $this->get('material_id');
        $categoria_id = $this->get('categoria_id');
        $fecha_hallazgo = $this->get('fecha_hallazgo');
        $autor_id = $this->get('autor_id');

        $id = $this->get('id');
        $sql = "UPDATE hallazgo
                SET descripcion     = '$descripcion'
                ,imagen         	= '$imagen'
                ,latitud    		= '$latitud'
                ,longitud 			= '$longitud'
                ,material_id    	= '$material_id'
                ,categoria_id		= '$categoria_id'
                ,fecha_hallazgo		= '$fecha_hallazgo'
                ,autor_id			= '$autor_id'
                ,proyecto_id		= '$proyecto_id'
                ,actualizado		= '$actualizado'
                WHERE id = $id";
         //me conecto al servidor
        $DA = DataAccess::getInstance();
        //ejecuto la sentencia
        return $DA->execute($sql);       
    }
    
    public function createMe(){
        //grabar un modelo de articulo
        $descripcion = $this->get('descripcion');
        $imagen = $this->get('imagen');
        $latitud = $this->get('latitud');
        $longitud = $this->get('longitud');
        $material_id = $this->get('material_id');
        $categoria_id = $this->get('categoria_id');
        $fecha_hallazgo = $this->get('fecha_hallazgo');
        $autor_id = $this->get('autor_id');
        $creado = $this->get('creado');
		
		
        $proyecto_id = $this->get('proyecto_id');
        $sql = "INSERT INTO hallazgo
            (descripcion,imagen,latitud,longitud,material_id,categoria_id,fecha_hallazgo,autor_id,proyecto_id,creado)
             VALUES('$descripcion','$imagen','$latitud','$longitud','$material_id','$categoria_id','$fecha_hallazgo','$autor_id','$proyecto_id','$creado')";
         //me conecto al servidor
        $DA = DataAccess::getInstance();
        //ejecuto la sentencia
        $return =  $DA->execute($sql);
        //id generado lo cargo en atributo id
        $this->id = $DA->insert_id;         
        return $return;
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
        
        $table = 'hallazgo';        
        
        $sql = "SELECT *
                FROM $table
                $query";
        //echo $sql;
        $DA = DataAccess::getInstance();
        //ejecuto la sentencia
        $DAR =  $DA->retrieve($sql); 
        $rows = $DAR->getRowSet();
        foreach($rows as $row){
            $hall[] = $row;
        }
        return $hall;
    } 
    
    public function newest($num){
    	
    	$table = 'hallazgo';        
        
        $sql = "SELECT *
                FROM $table
                order by creado desc
                limit 0,$num
                ";
        //echo $sql;
        $DA = DataAccess::getInstance();
        //ejecuto la sentencia
        $DAR =  $DA->retrieve($sql); 
        $rows = $DAR->getRowSet();
        foreach($rows as $row){
            $hall[] = $row;
        }
        return $hall;
    }
    /*
    public function search($value){
        //singleton
        $art = array();
        $mysqli = new mysqli('localhost', 'root', 'root', 'practico8');
        $sql = "SELECT * 
                FROM ARTICULO
                WHERE nombre LIKE '%$value%'";
        //die($sql);
        $result = $mysqli->query($sql);
        while ($row = $result->fetch_assoc()) {
            $art[] = $row;
        }
        return $art;
    } 
    */
}
