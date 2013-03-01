// JavaScript Document
juego = new Generala ()
$(document).ready(inicializo);

function inicializo(){
	$("#tirar").click(tirar);
	$("#dado0").click(seleccion0);
	$("#dado1").click(seleccion1);
	$("#dado2").click(seleccion2);
	$("#dado3").click(seleccion3);
	$("#dado4").click(seleccion4);
	$("#finMano").click(finalizarMano);
	$("#si").click(finalizarMano);
	$("#no").click(finalizarJuego);
	$("#finJuego").click(finalizarJuego);
	$("#aceptar").click(reiniciar);
	$("#instrucciones").click(desplegar);
	$("#insAceptar").click(replegar);
	$("#puntajeBoton").click(desplegar2)
	$("#puntajeAceptar").click(replegar2)	
	comienza();
}
/*Llama a la funcion de la clase generala que crea los dados y carga la coleccion */
function comienza(){
	juego.comienzo();
	$("#puntajeI").val(0);
	$("#tiradasI").val(0);
	$("#aviso").hide();
	$("#alerta").hide();
	$("#alerta2").hide();
	$("#recuadro2").hide();
	}
/* Selecciona o deselecciona el primer dado */	
function seleccion0(){
	if (juego.getContador() !=0 && juego.getContador() !=3) {
		tmpDados=juego.getDados();
		if(tmpDados[0].seleccionarDado()){
			img="Imagenes/" + tmpDados[0].getValor() + ".png"
			$("#dado0").attr("src",img);
		}
		else{
			img="Imagenes/" + tmpDados[0].getValor() + ".gif"
			$("#dado0").attr("src",img);
		}
	}
}
/* Selecciona o deselecciona el segundo dado */	
function seleccion1(){
	if (juego.getContador() !=0 && juego.getContador() !=3){
		tmpDados=juego.getDados();
		if(tmpDados[1].seleccionarDado()){
			img="Imagenes/" + tmpDados[1].getValor() + ".png"
			$("#dado1").attr("src",img);
		}
		else{img="Imagenes/" + tmpDados[1].getValor() + ".gif"
			$("#dado1").attr("src",img);
		}
	}
}
/* Selecciona o deselecciona el tercer dado */	
function seleccion2(){
	if (juego.getContador() !=0 && juego.getContador() !=3){
		tmpDados=juego.getDados();
		if(tmpDados[2].seleccionarDado()){
			img="Imagenes/" + tmpDados[2].getValor() + ".png"
			$("#dado2").attr("src",img);
		}
		else{
			img="Imagenes/" + tmpDados[2].getValor() + ".gif"
			$("#dado2").attr("src",img);
		}
	}
}
/* Selecciona o deselecciona el cuarto dado */	
function seleccion3(){
	if (juego.getContador() !=0 && juego.getContador() !=3){
		tmpDados=juego.getDados();
		if(tmpDados[3].seleccionarDado()){
			img="Imagenes/" + tmpDados[3].getValor() + ".png"
			$("#dado3").attr("src",img);
		}
		else{
			img="Imagenes/" + tmpDados[3].getValor() + ".gif"
			$("#dado3").attr("src",img);
		}
	}
}
/* Selecciona o deselecciona el quinto dado */	
function seleccion4(){
	if (juego.getContador() !=0 && juego.getContador() !=3){
		tmpDados=juego.getDados();
		if(tmpDados[4].seleccionarDado()){
			img="Imagenes/" + tmpDados[4].getValor() + ".png"
			$("#dado4").attr("src",img);
		}
		else{
			img="Imagenes/" + tmpDados[4].getValor() + ".gif"
			$("#dado4").attr("src",img);
		}
	}
}
/*Cambia los dados y muestra si obtuvo alguna figura*/
function tirar(){
	juego.tirar()
	$("#aviso").hide()
	tmpDados= juego.getDados()
	for(i = 0; i<=4; i++){
		nombre="dado"+i;
		img="Imagenes/" + tmpDados[i].getValor() + ".gif";
		$("#" + nombre).attr("src",img)
	}
	if(juego.generala()){
		$("#aviso").show();
		$("#aviso").html("Usted tiene generala!!!");
		$("#alerta").show()
		$("#botones").hide()
		$("#tirar").hide()
	}
	else{ 
		if(juego.poker()){
			$("#aviso").show()
			$("#aviso").html("Usted tiene poker!!!");
		}
		else{
			if(juego.foul()){
				$("#aviso").show()
				$("#aviso").html("Usted tiene foul!!!");
			}
			else{
				if(juego.escalera()){
					$("#aviso").show()
					$("#aviso").html("Usted tiene escalera!!!");
				}				
			}
		}
	}
	if(juego.getContador() == 3){
		$("#botones").hide()
		$("#tirar").hide()
		$("#alerta").show()
	}
	$("#tiradasI").val(juego.getContador())
}
function preguntar(){
	finalizarMano();
}
/*Carga imagen de los dados para iniciar un nueva mano y actualiza puntaje*/
function finalizarMano(){
	juego.finMano();
	for (i=0; i<=4; i++){
		nombre = "dado" + i;
		dado= "Imagenes/c.gif";
		$("#" + nombre).attr("src",dado);
	}
	$("#puntajeI").val(juego.getPuntaje());
	$("#alerta").hide();
	$("#aviso").hide();
	$("#botones").show();
	$("#tirar").show();
	$("#puntaje").show();
	$("#tiradas").show();
	$("#tiradasI").val(0);	
}
/*Termina la mano y alerta que si se quiere reiniciar juego*/
function finalizarJuego(){
	juego.finMano();
	$("#alerta").hide();
	$("#puntaje").hide();
	$("#tiradas").hide();
	$("#botones").hide();
	$("#tirar").hide();
	$("#puntajeFinal").html(juego.getPuntaje());
	$("#alerta2").show();
	$("#aviso").hide();
	$("#dados").hide();
}
/*Carga imagen de los dados para iniciar un nuevo juego*/
function reiniciar(){
	juego.finJuego()
	for (i=0; i<=4; i++){
		nombre = "dado" + i;
		dado= "Imagenes/c.gif";
		$("#" + nombre).attr("src",dado);
	}
	$("#puntaje").show();
	$("#tiradas").show();
	$("#botones").show();
	$("#tirar").show();
	$("#alerta2").hide();
	$("#aviso").hide();
	$("#puntajeI").val(0);
	$("#tiradasI").val(0);
	$("#aviso").hide();
	$("#dados").show();
		
}
function desplegar(){
	$("#recuadro").show()	
}
function replegar(){
 	$("#recuadro").hide()	
}
function desplegar2(){
	$("#recuadro2").show()	
}
function replegar2(){
 	$("#recuadro2").hide()	
}