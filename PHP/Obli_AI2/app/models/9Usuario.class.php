<?php
//Modelo de Usuario.

class Usuario{
    
    private $id             = null;
    private $usr            = null;
    private $pwd            = null;
    private $lastlog        = null;
    private $lastip         = null;
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
        
        $table = 'usuario';        
        
        $sql = "SELECT *
                FROM $table
                $query";
       
        $DA = DataAccess::getInstance();
        //ejecuto la sentencia
        $DAR =  $DA->retrieve($sql); 
        $rows = $DAR->getRowSet();
        foreach($rows as $row){
            $usuario[] = $row;
        }
        return $usuario;
    }

    public function loadMe($Q){
    	if($where = $Q->toSqlWhere()){
        	$query .= " WHERE $where";
        }
        $table = 'usuario';        
        
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
	
    
}
