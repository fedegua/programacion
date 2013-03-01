package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
		
	/**
	 * ...
	 * @author 
	 */
	public class Main extends Sprite 
	{
		public var game:fin;
		public var creditoJugador: int = 1000;
			public var apostado: int;			
			public var montoDeApuesta: int;
			public var listo: Boolean;
			public var seleccionado: Boolean;
			public var monto: Boolean;
			 public var ganadorr : int;
			 public var primero : Boolean;
			 public var resulta: Resultados;
			
		
		public function Main():void 
		{
			
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			iniciar_btn.addEventListener(MouseEvent.CLICK, comienzoCarrera);			
			verde_btn.addEventListener(MouseEvent.CLICK, selCaballo);
			rojo_btn.addEventListener(MouseEvent.CLICK, selCaballo);
			azul_btn.addEventListener(MouseEvent.CLICK, selCaballo);
			cien_btn.addEventListener(MouseEvent.CLICK, montoApostar);
			trescientos_btn.addEventListener(MouseEvent.CLICK, montoApostar);
			quinientos_btn.addEventListener(MouseEvent.CLICK, montoApostar);
			
			
		}
		public function andar(e:Event):void{										
		if ((cRojo_mc.x < 722 && cVerde_mc.x < 722 && cAzul_mc.x < 722) )
			{
				cRojo_mc.x += 10 * Math.random();
				cVerde_mc.x += 10 * Math.random();
				cAzul_mc.x += 10 * Math.random();							
			
			}
			else{ primero = true;
			stage.removeEventListener(Event.ENTER_FRAME, andar);
			ganador();
			if (apostado == ganadorr)			
						creditoJugador += montoDeApuesta;
					else				
						creditoJugador -= montoDeApuesta;
			disponible_txt.text = creditoJugador.toString();
			finalizado();
		}
		}
		public function andar2(e:Event):void{
			
				if (cRojo_mc.x < 722)
					cRojo_mc.x += 10 * Math.random();
				if (cVerde_mc.x < 722)
					cVerde_mc.x += 10 * Math.random();
				if (cAzul_mc.x < 722)
					cAzul_mc.x += 10 * Math.random();
				
			
			}
		
		public function comienzoCarrera(e:MouseEvent):void
		{
			if (monto && seleccionado) {

			
			stage.addEventListener(Event.ENTER_FRAME, andar);
			
			}			
			
		}		
		public function ganador(): void{
		if (cRojo_mc.x >=  cVerde_mc.x) {			
					if (cRojo_mc.x >= cAzul_mc.x)
						ganadorr = 3;
					else
						ganadorr = 2;
				}else{
					if (cVerde_mc.x >= cAzul_mc.x)
						ganadorr = 1;
				}
		}
		public function selCaballo(e:MouseEvent):void
		{
			switch (e.currentTarget.name)
			{
				case "verde_btn":
					seleccionado_txt.text = 'Verde';
					apostado = 1;
					break;
				case "azul_btn":
					seleccionado_txt.text = 'Azul';	
					apostado = 2;
					break;
				case "rojo_btn":
					seleccionado_txt.text = 'Rojo';				
					apostado = 3;
					break;
			}
			seleccionado = true;				
		}
		public function montoApostar(e:MouseEvent):void
		{
			switch (e.currentTarget.name)
			{
				case "cien_btn":
					cantidad_txt.text = '100';	
					montoDeApuesta = 100;
					break;
				case "trescientos_btn":
					cantidad_txt.text = '300';	
					montoDeApuesta = 300;
					break;
				case "quinientos_btn":
					cantidad_txt.text = '500';				
					montoDeApuesta = 500;
					break;
			}
			monto = true;
		}
		public function finalizado():void
		{
			if ((cRojo_mc.x >= 722 || cVerde_mc.x >= 722 || cAzul_mc.x >= 722) ){
			
			resulta = new Resultados()
			addChild(resulta);
			resulta.x = 200;
			resulta.y = 200;
			resulta.volver_btn.addEventListener(MouseEvent.CLICK, volver);
			/*addChild(colorCaballo_txt);*/
			if (ganadorr ==1){
			resulta.caballo_txt.text = 'Color Verde';
			}
			if (ganadorr ==2){
			resulta.caballo_txt.text = 'Color Azul';
			}
			if (ganadorr ==3){
			resulta.caballo_txt.text = 'Color Rojo';
			}
			
			}
			
		}
		public function volver(e:MouseEvent):void
		{
			removeChild(resulta);
			if (creditoJugador <= 0) {
				addChild(game);
				game.alpha = 0.1;
			}
			monto = false;
			seleccionado = false;
			cRojo_mc.x = 0;
			cAzul_mc.x = 0;
			cVerde_mc.x = 0;
		}
	}
	
}