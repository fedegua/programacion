<?php

class Query{
	
	private $conditions = null;
	private $search		= null;
	private $period		= null;
	private $order		= null;
	private $Pagination	= null;
	private $in			= null;
	
	public function toSqlIn(){
		$in = false;
		if(is_array($this->in) && !empty($this->in)){
        	$lista = current($this->in);
        	$campo = key($this->in);
        	foreach($lista as $value){
            	$in .= ",value";
        	}
        	$in = substr($in, 1);
        	$in = "`$campo` IN ($in)";
        }
        return $in;	
	}
	
	public function toSqlPeriod(){
		$period = false;
		if(is_array($this->period) && !empty($this->period)){
			$values = array_values($this->period);
			$field = key($this->period);
			if(count($values[0]) == 2){
				$ini = $values[0][0];
				$end = $values[0][1];
				$period = "`$field` >= '$ini' AND `$field` <= '$end'";
			}
			elseif(count($values[0]) == 1){
				$period = "`$field` = $ini";	
			}				
		}
		return $period;
	}
	
	public function toSqlWhere(){
		$where = false;
		if(is_array($this->conditions) && !empty($this->conditions)){
            foreach($this->conditions as $key=>$value){
                $where .= " AND `$key` = '$value'";
             }
             $where = substr($where,4);             
        }
        return $where;
	}
	
	public function toSqlLike(){
		$search = false;
		if(is_array($this->search) && !empty($this->search)){
            foreach($this->search as $key=>$value){
                $search .= " OR `$key` LIKE '%$value%'";
             }
             $search = substr($search,3);                      
        }	
        return $search;       
	}
	
	public function toSqlOrder(){		
		$order = false;
        if(is_array($this->order) && !empty($this->order)){
            foreach($this->order as $key=>$value){
                $order .= ",`$key` $value";
            }
            $order = substr($order,1);            
            $order = " ORDER BY $order";
                    
        }
        return $order;
    }
    
    public function set($att,$val){
    	$this->$att = $val;
    }
    
    public function get($att){
    	return $this->$att;
    }
	
}