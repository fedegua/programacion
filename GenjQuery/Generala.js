// JavaScript Document
function Generala(){
	this.mDados=new Array();
	this.mContador=0;
	this.mPuntaje=0;

	this.getDados=function(){
		return this.mDados;
	}
	this.setDados = function(pDados){
		this.mDados = pDados
	}
	
	this.setContador = function (pContador){
		this.mContador = pContador;
	} 
	
	this.getContador = function (){
		return this.mContador;
	}	

	this.setPuntaje = function (pPuntaje){
		this.mPuntaje = pPuntaje;
	} 

	this.getPuntaje = function (){
		return this.mPuntaje;
	}
	/*crea los dados y carga la coleccion*/
	this.comienzo = function() {
		tmpDados = new Array();
		for (i=0; i<=4; i++){
			tmpDados[i]= new Dado();
			numero= aleatorio();
			tmpDados[i].setSeleccionado(false);
			tmpDados[i].setValor(numero);
		}
		juego.setDados(tmpDados);
	}
	/*Determina si la figura es foul*/
	this.foul=function(){
		var pDados=this.getDados();
		var contador1=0;
		var contador2=0;
		var contador3=0;
		var contador4=0;
		var contador5=0;
		var contador6=0;
		var retorno=false;
		for(i=0;i<=4;i++){
			switch (pDados[i].getValor()){ 
				case 1 :{
					contador1++;
					break;
				}
				case 2 :{
					contador2++
					break;
				}
				case 3 :{
					contador3++
					break;
				}
				case 4:{
					contador4++
					break;
				}
				case 5 :{
					contador5++
					break;
				}
				case 6 :{
				contador6++
				break;
				}
			}
		}
		if((contador1==3||contador2==3||contador3==3||contador4==3||contador5==3||contador6==3)&&
			(contador1==2||contador2==2||contador3==2||contador4==2||contador5==2||contador6==2)){
			retorno =true;	
		}
		return retorno;	
	}
	/*Determina si la figura es poker*/
	this.poker=function(){
		var retorno = false;
		var tmpDados = this.getDados();
		var i=0;
		var contador=0;
		while (i<=4){
			if (tmpDados[i].getValor()== tmpDados[0].getValor()){
				contador++;
			}
			i++;
		}
		if(contador == 4){
			retorno=true;
		}else {
			i=0;
			contador= 0;
			while (i<=4){
				if (tmpDados[i].getValor()== tmpDados[1].getValor()){
					contador++;
				}
			i++;
			}	
		}
		if (contador == 4){
			retorno = true
		}
		return retorno;	
	}
	/*Determina si la figura es generala*/
	this.generala=function(){
		var pDados=this.getDados();
		var contador=0;
		var retorno=false;
		for(i=0;i<=3;i++){
			if(pDados[i].getValor()==pDados[i+1].getValor()){
				contador++;
			}
			if(contador==4){
				retorno=true;
			}
		}
		return retorno;
	}
	/*Determina si la figura es escalera*/		
	this.escalera=function(){
		var pDados=this.getDados();
		var retorno = false;
		var esta2 = false;
		var esta3 = false;
		var esta4 = false;
		var esta5 = false;
		var a=pDados[0].getValor();
		var b=pDados[1].getValor();
		var c=pDados[2].getValor();
		var d=pDados[3].getValor();
		var e=pDados[4].getValor();
		if(a!=b && a!=c && a!=d && a!=e && c!=b && d!=b && e!=b && c!=d && c!=e && d!=e){		
			for(i=0;i<=4;i++){
				switch(pDados[i].getValor()){
					case 2: {esta2 = true;	
							break;}
					case 3: {esta3 = true;	
							break;}
					case 4: {esta4 = true;	
							break;}
					case 5: {esta5 = true;	
							break;}
				}
			}
			if(esta2 && esta3 && esta4 && esta5 ){
				retorno = true;
			}		
		}
		return retorno;	
	}
	
	this.finJuego=function(){
		this.setPuntaje(0);	
	}
	/*Segun la figura obtenida se incrementa el puntaje y pone el contador de manos en 0*/
	this.finMano=function(){
		if (this.getContador()!=0 || this.getContador() == 3 ){
			if(this.generala()){
				this.setPuntaje(this.getPuntaje() +5);
			}
			else{
				if(this.poker()){
					this.setPuntaje(this.getPuntaje() +4);
				}
				else{
					if(this.foul()){
						this.setPuntaje(this.getPuntaje() +3);
					}
					else{
						if(this.escalera()){
							this.setPuntaje(this.getPuntaje() +2);
						}
					}
				}
			}
			this.setContador(0);
		}
	}
	/*Genera un numero aleatorio entre 1 y 6 inclusive*/
	aleatorio=function(){
		return Math.round((Math.random()*5)+1);
	}
	/*Le carga un nuevo valor a cada dado y si corresponde incrementa el contador de manos*/
	this.tirar=function(){
		var tmpDados=this.getDados();
		var incremento = false;
		if (this.getContador()!=0){
			for (i=0; i<=4; i++){
				if(tmpDados[i].getSeleccionado()){
					tmpDados[i].setValor(aleatorio());
					tmpDados[i].setSeleccionado(false);
					incremento=true;
				}
			}
			if (incremento){
				this.setContador(this.getContador() + 1);
			}
			/*if(this.getContador() == 3){
				this.setContador(0)
			}*/
		
		}else{
			for (i=0; i<=4; i++){
				tmpDados[i].setValor(aleatorio());
			}
			this.setContador(this.getContador() + 1);			
		}
	}
	
}