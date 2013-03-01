<?php

//Clase resultado de acceder a datos.
class DataAccessResult extends mysqli_result{
    
    //Devuelvo un solo registro.
    public function getRow(){
        return $this->fetch_assoc();
    }
    
    //Devuelvo conjunto de registros.
    public function getRowSet(){
        //Me aseguro de devolver siempre un array
        $rows = array();
        while($row = $this->getRow()){
            $rows[] = $row;
        }
        return $rows;
    }
}