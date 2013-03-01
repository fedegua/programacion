package  
{
	import adobe.utils.CustomActions;
	import flash.net.URLRequestMethod;
	import flash.events.Event;
	import flash.display.MovieClip;
	
	/**
	 * ...
	 * @author 
	 */
	public class Carta extends MovieClip
	{
		public var palo: Number; // 1 2 3 4  (Trebol, Corazon, Diamante, Pique)
		public var numero: Number; // 1 2 3 4 5 6 7 8 9 10 11 12 13
		public var fotograma:Number;
		public var valor: Number;
		//public var valorAux: Number = 0;
		
		public function Carta(pNumero,pPalo) 
		{
			this.x = 650;
			this.y = 38;
			palo = pPalo;
			numero = 14 - pNumero;					
			valor = 14 - pNumero;
			if(numero>10)
				valor = 10;
			if(numero==1)
				valor = 11;
			fotograma = (pNumero - 1) * ( 4 ) + pPalo;
			
		}
		
	}
	
}