<?php
//Modelo de categoria.

class Categoria{
    
    private $id             = null;
    private $nombre 		= null;
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
                FROM categoria
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
        $table = 'categoria';        
        
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
		$actualizado = $this->get('actualizado');
        $id = $this->get('id');
        $sql = "UPDATE categoria
                SET nombre      = '$nombre'
				,actualizado	= '$actualizado'
                WHERE id = $id";
         //me conecto al servidor
        $DA = DataAccess::getInstance();
        //ejecuto la sentencia
        return $DA->execute($sql);       
    }
    
    public function createMe(){
        //grabar un modelo de articulo
        $nombre = $this->get('nombre');
        $creado = $this->get('creado');
        $sql = "INSERT INTO categoria
            (nombre,creado)
             VALUES('$nombre','$creado')";
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
        
        $table = 'categoria';        
        
        $sql = "SELECT *
                FROM $table
                $query";
        //echo $sql;
        $DA = DataAccess::getInstance();
        //ejecuto la sentencia
        $DAR =  $DA->retrieve($sql); 
        $rows = $DAR->getRowSet();
        foreach($rows as $row){
            $cat[] = $row;
        }
        return $cat;
    } 
    
    public function newest($num){
    	
    	$table = 'categoria';        
        
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
            $cat[] = $row;
        }
        return $cat;
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
