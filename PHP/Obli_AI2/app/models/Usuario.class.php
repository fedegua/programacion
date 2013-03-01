<?php
//Modelo de usuario.
class Usuario{
    
    private $id             = null;
    private $usr            = null;
    private $pwd            = null;
    private $lastLog        = null;
    private $lastIp         = null;
    private $creado         = null;
    private $actualizado    = null;
    
    public function get($att){
        return $this->$att;
    }
    public function set($att,$val){
        $this->$att = $val;
    }
    
    public function updateMe(){
        //actualizar un modelo de usuario
        //$usr = $this->get('usr');
        $last_log = $this->get('lastLog');
        $last_ip = $this->get('lastIp');
        $id = $this->get('id');
        $sql = "UPDATE usuario
                SET lastLog = '$last_log'
                ,lastIp         = '$last_ip'
                WHERE id = $id";
         //me conecto al servidor
        $DA = DataAccess::getInstance();
        //ejecuto la sentencia
        return $DA->execute($sql);       
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
