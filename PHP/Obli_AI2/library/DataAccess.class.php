<?php

//Clase para dar acceso a DB.
class DataAccess extends mysqli{
    private static $instance = null;
    //Redefino el constructor para que
    //no puedan hacer NEW de la clase.
    
    private function __construct() {
        //Intento invocar con parametros
        //al constructor de mi padre.
        parent::__construct(HOST, USER, PWD, DB);
            if($this->connect_errno){
                die($this->connect_error.$this->connect_errno); 
            }           
     }
     
     public function getInstance(){
         //Patron creacional para obtener unica instancia
         //de Data Access.
         if(!isset(self::$instance)){
             $C = __CLASS__; //CTE Devuelve el nombre de la clase
             //donde se esta ejecutando
             self::$instance = new $C;
             //Constructor se esta ejecutando una sola Vez.
         }
         return self::$instance;
     }
     
     //Retornar Objeto resultado de acceder a datos(DAR)    
     public function retrieve($sql){
          	if(!$this->real_query($sql)){
          		//esto no se debe mostrar en ambiente produccion, se debe crear un try/catch y log de errores.
            	die($this->error.$this->errno);
            }
             //Retorno instancia de DAR.
             return new DataAccessResult($this);  
     }  
     
     public function execute($sql){
         //Ejecuto query contra DB
         if(!$this->query($sql)){
         	die($this->error.$this->errno);
         }
         return true;        
     }
}