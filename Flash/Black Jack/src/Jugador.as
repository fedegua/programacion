package  
{
	/**
	 * ...
	 * @author ...
	 */
	public class Jugador 
	{
		public var Nombre: String;
		public var cartasJugador: Array;
		public var credito:int;
		public function Jugador(pNombre:String, pCredito:int) 
		{ 
			cartasJugador = new Array();
			Nombre = pNombre;
			credito = pCredito;
		}
		public function RecibirCartas(pCartas:Array) {
			cartasJugador = pCartas;
		}
		public function RecibirCarta(pCarta:Carta) {
			cartasJugador.push(pCarta);
		}
		
		public function contarCartas():int {
			var contarAs = new Array();
			var retorno:int = 0;
			for (var i = 0; i < cartasJugador.length; i++) {
				retorno += cartasJugador[i].valor;
				if (cartasJugador[i].valor ==11)
					contarAs.push(i);	
			}
			while (retorno > 21 && contarAs.length > 0)
			{	
				retorno -= 10;
				contarAs.splice(0, 1);
			}
			return retorno;								
		}
		public function devolverUltimaCarta():Carta
		{
			return cartasJugador[cartasJugador.length - 1];
			
		}
		public function limpiar() {
			cartasJugador = null;
			}
		
		
	}

}