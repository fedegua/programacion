// JavaScript Document

function Dado(){
	this.mValor = 0;
	this.mSeleccionado = false;
	
	this.getSeleccionado = function(){
		return this.mSeleccionado;
	}
	this.setSeleccionado = function(pSeleccionado){
		this.mSeleccionado = pSeleccionado;
	}
	this.getValor = function(){
		return this.mValor;
	}
	this.setValor = function(pValor){
		this.mValor = pValor;
	}
	/*Cambia el valor logico del atributo mSeleccionado */
	this.seleccionarDado = function(){
		if (this.getSeleccionado()){
			this.setSeleccionado(false);
			retorno = false
		}
		else{
			this.setSeleccionado(true);
			retorno = true
		}
	return retorno;		
	}
}