package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import caurina.transitions.Tweener;
		import flash.media.Sound;
	import flash.media.SoundChannel;
	
	/**
	 * ...
	 * @author 
	 */
	public class Main extends Sprite 
	{
		public var maso : Maso = null;
		public var Apuesta :int;
		public var JugadorPc: Jugador = new Jugador("PC",0);
		public var JugadorReal: Jugador = new Jugador('REAL', 500);
		public var finManoMc: FinMano = new FinMano();
		public var botonera: Botonera = new Botonera();
		public var fichero: Fichero = new Fichero();
		public var finish: Chau = new Chau();
		public var fichas:Array = new Array();
		public var efectoSonidoChau: Sound;
		public var efectoSonidoFinMano: Sound;
		public var canalSonidoChau : SoundChannel;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			Cantidad_txt.text = Apuesta.toString();
			Credito_txt.text = JugadorReal.credito.toString();
			maso = new Maso();

			btn_Apostar.addEventListener(MouseEvent.CLICK, comienzoMano);
			finish.reiniciar_btn.addEventListener(MouseEvent.CLICK,reiniciar);
			fichero.btn_10.addEventListener(MouseEvent.CLICK, montoApostar);
			fichero.btn_50.addEventListener(MouseEvent.CLICK, montoApostar);
			fichero.btn_100.addEventListener(MouseEvent.CLICK, montoApostar);
			btn_Cancelar.addEventListener(MouseEvent.CLICK, ResetApuesta);
			botonera.darOtra_mc.addEventListener(MouseEvent.CLICK, pedirCarta);
			botonera.plantarse_mc.addEventListener(MouseEvent.CLICK,btnPlantarse);
			finManoMc.aceptar_btn.addEventListener(MouseEvent.CLICK, aceptar);
			finManoMc.finalizar_btn.addEventListener(MouseEvent.CLICK, finalizar);
			stage.addChild(fichero)
			efectoSonidoFinMano = new EfectoFinMano();
			efectoSonidoChau = new EfectoChau();	
			canalSonidoChau = new SoundChannel();
		}
		public function comienzoMano(e:MouseEvent):void {
			if (Apuesta > 0 ) {	
			stage.removeChild(fichero)
			btn_Apostar.visible = false;
			btn_Cancelar.visible =false;
				JugadorPc.RecibirCartas(maso.repartirCartas());
				JugadorReal.RecibirCartas(maso.repartirCartas());
				for ( var i:int = 0; i < 2; i++) {
					posionarCarta(JugadorPc.cartasJugador[i], 50, i, false,0);
					//Tweener.addTween(JugadorPc.cartasJugador[i], { x:(200 + i*50), y:50, time:1, /*delay:i,*/ transition:"easeOutQuint" } )
					posionarCarta(JugadorReal.cartasJugador[i], 200, i,true,-1);										
					//Tweener.addTween(JugadorReal.cartasJugador[i], { x:(200 + i*50), y:200, time:1, /*delay:i,*/ transition:"easeOutQuint" } )
				}
				var cantidad = JugadorReal.contarCartas();
				puntajeJuga_txt.text = cantidad.toString();
				stage.addChild(botonera);			
				if(cantidad == 21)				
					ganoMano(0);
	
			}						
		}
		public function pedirCarta(e:MouseEvent):void {
			//int cant = 
			if(JugadorReal.contarCartas() < 21){
				JugadorReal.RecibirCarta(maso.repartirCarta());						
				posionarCarta(JugadorReal.devolverUltimaCarta(), 200, JugadorReal.cartasJugador.length -1, true,0);
				var sumaPlayer:int = JugadorReal.contarCartas();
				puntajeJuga_txt.text = sumaPlayer.toString();
				if(sumaPlayer > 21)
					perdioMano(1);
				if (sumaPlayer == 21)
					plantarse();
			}
		}
		
		public function ganoMano(i:int) {
			
			var credito:int;
			if (JugadorReal.cartasJugador.length == 2 && JugadorReal.contarCartas() == 21 ) 
			{
				credito = (Apuesta * 3) / 2
				JugadorReal.credito += credito;				
				finManoMc.montoPremio_txt.text = credito.toString();				
			}else
				{
					credito =  Apuesta * 2;
					JugadorReal.credito += credito;
					finManoMc.montoPremio_txt.text = credito.toString();
				}
			finManoMc.accion_txt.text= "Gano"
			finManoMc.finCredito_txt.text = JugadorReal.credito.toString();
			/*if (JugadorReal.cartasJugador.length == 2 && JugadorReal.contarCartas() == 21 ) 			
				terminarMano(1);
			else*/
				terminarMano(i);
			finManoMc.gotoAndStop(1);
		}
		public function perdioMano(i:int) {
			finManoMc.finCredito_txt.text = JugadorReal.credito.toString();
			finManoMc.montoPremio_txt.text = "0";
			finManoMc.accion_txt.text = "Perdio"						
			terminarMano(i);
			finManoMc.gotoAndStop(2);
		}
		public function btnPlantarse (e:MouseEvent):void{
			plantarse();
			}
		public function plantarse() {
			JugadorPc.cartasJugador[0].gotoAndStop(JugadorPc.cartasJugador[0].fotograma);
			JugadorPc.cartasJugador[1].gotoAndStop(JugadorPc.cartasJugador[1].fotograma);
			var i = 0;
			while (JugadorPc.contarCartas() < 17) {
				JugadorPc.RecibirCarta(maso.repartirCarta());
				posionarCarta(JugadorPc.devolverUltimaCarta(), 50, JugadorPc.cartasJugador.length - 1, true,i);
				i++
			}
			var cartasPc =  JugadorPc.contarCartas();
			var cartasJugador = JugadorReal.contarCartas();
			puntajeJuga_txt.text = cartasJugador.toString();
			puntajeComp_txt.text = cartasPc.toString();
			if (cartasPc > 21)
				ganoMano(i);
			else {
				if ( cartasPc > cartasJugador ) 
					perdioMano(i);
				if (cartasPc == cartasJugador)
					empatoMano(i);
				if(cartasPc < cartasJugador ) 
					ganoMano(i);					
			}
		}
		
		public function terminarMano(i:int) {			
			stage.addChild(finManoMc);
			//sonidoFin();
			finManoMc.x =800;
			finManoMc.y = 375;
			Tweener.addTween(finManoMc, { x:410, y:375, time:0.7, delay:i, transition:"easeOutQuint",onComplete:sonidoFin } )								
			stage.removeChild(botonera);
			Apuesta = 0;
			Cantidad_txt.text = Apuesta.toString();
			Credito_txt.text = JugadorReal.credito.toString();
		}
		public function limpiarPantalla(a:Array)
		{
			for (var i = 0 ; i < a.length; i++){
				a[i].gotoAndStop(53);
				Tweener.addTween(a[i], { x:650, y:38, time:1, /*delay:i,*/ transition:"easeOutQuint",onComplete:BorrarCarta, onCompleteParams:[a[i]] } )								
			}			
		}
		public function BorrarCarta(c:Carta)
		{
			stage.removeChild(c);
		}
						
		public function posionarCarta(c:Carta, j:int, i:int, k:Boolean, retraso:int) {
			stage.addChild(c);
			if (maso.cartas.length >= 48){
			Tweener.addTween(c, { x:(200 + i*50), y:j, time:1, delay:retraso, transition:"easeOutQuint",onComplete:darVuelta, onCompleteParams:[c, k] } )
			}
			else{
				Tweener.addTween(c, { x:(200 + i*50), y:j, time:0.2, delay:retraso, transition:"easeOutQuint",onComplete:darVuelta, onCompleteParams:[c, k] } )
			}
			c.gotoAndStop(53);
			//c.x = 200 + i*50;
			//c.y =y;
			
		}
		public function darVuelta(c:Carta, muestra:Boolean) {
			if (!muestra)
				c.gotoAndStop(53);
			else
				c.gotoAndStop(c.fotograma);		
		}
		public function montoApostar(e:MouseEvent):void
		{
			switch (e.currentTarget.name)
			{
				case "btn_10":
				if(JugadorReal.credito -10 >= 0)
				{
					JugadorReal.credito -= 10;
					Apuesta +=10;
					var f10= new Ficha10()
					fichas.push(f10)
					stage.addChild(f10)					
					/*Tweener.addTween(fichas[fichas.length-1], { x:388, y:419, time:1,/* delay:i,*//* transition:"easeOutQuint" } )*/
					Tweener.addTween(fichas[fichas.length-1], { x:(Math.random()*40+ 370), y:(Math.random()*40 + 400), time:1,/* delay:i,*/ transition:"easeOutQuint" } )
					break;
				}
				case "btn_50":
					if(JugadorReal.credito -50 >= 0)
				{
					JugadorReal.credito -= 50;
					Apuesta +=50;
					var f50= new Ficha50()
					fichas.push(f50)
					stage.addChild(f50)					
					Tweener.addTween(fichas[fichas.length-1], { x:(Math.random()*40+ 370), y:(Math.random()*40 + 400), time:1,/* delay:i,*/ transition:"easeOutQuint" } )
					break;
				}
				case "btn_100":
					if(JugadorReal.credito -100 >= 0)
				{
					JugadorReal.credito -= 100;
					Apuesta  +=100;
					var f100= new Ficha100()
					fichas.push(f100)
					stage.addChild(f100)					
					Tweener.addTween(fichas[fichas.length-1], { x:(Math.random()*40+ 370) , y:(Math.random()*40 + 400), time:1,/* delay:i,*/ transition:"easeOutQuint" } )
					break;
				}
			}
			Cantidad_txt.text = Apuesta.toString();
			Credito_txt.text = JugadorReal.credito.toString();									
		}
		public function limpiarFichas(){

			while (fichas.length > 0) {
				stage.removeChild(fichas[0]);
				fichas.splice(0, 1);
				}
			}
		
		public function ResetApuesta(e:MouseEvent):void
		{
			JugadorReal.credito += Apuesta;
			Apuesta = 0;
			Cantidad_txt.text = Apuesta.toString();
			Credito_txt.text = JugadorReal.credito.toString();
			limpiarFichas();
		}
		
		public function empatoMano(i:int) {
		JugadorReal.credito += Apuesta;
		finManoMc.accion_txt.text = "Empato"
		finManoMc.finCredito_txt.text = JugadorReal.credito.toString();
		finManoMc.montoPremio_txt.text = Apuesta.toString();
		terminarMano(i);
		finManoMc.gotoAndStop(3);
		}
		public function aceptar(e:MouseEvent):void {
			
			limpiarMano();
			sacarSonido();
			if (JugadorReal.credito < 10) 
				{stage.addChild(finish);
				sonidoChau();
				}
			else{
				stage.addChild(fichero);
				btn_Apostar.visible = true;
				btn_Cancelar.visible =true;
			}		
		}
		
		public function limpiarMano():void
		{
			limpiarPantalla(JugadorPc.cartasJugador);
			limpiarPantalla(JugadorReal.cartasJugador);
			limpiarFichas();
			maso.devolverCartas(JugadorPc.cartasJugador);
			maso.devolverCartas(JugadorReal.cartasJugador);
			JugadorPc.limpiar();
			JugadorReal.limpiar();
			puntajeJuga_txt.text = "";
			puntajeComp_txt.text = "";

			stage.removeChild(finManoMc);

			
			}
		
		public function reiniciar(e:MouseEvent):void
			{
				sacarSonido();
				stage.removeChild(finish);
				JugadorReal.credito = 500;
				stage.addChild(fichero);
				btn_Apostar.visible = true;
				btn_Cancelar.visible =true;
				Credito_txt.text = JugadorReal.credito.toString();
				
				}
		public function finalizar(e:MouseEvent):void
			{
				limpiarMano();
				stage.addChild(finish);
				sonidoChau();
				Credito_txt.text = "0";
				}
		public function sonidoFin(){
			canalSonidoChau = efectoSonidoFinMano.play(); 
			
			}
		
		public function sonidoChau(){
			canalSonidoChau = efectoSonidoChau.play(0,10); 
			
			}
		public function sacarSonido(){
			
			canalSonidoChau.stop();
			}
	}
}