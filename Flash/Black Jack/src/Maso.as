 package  
{
	
	/**
	 * ...
	 * @author 
	 */
	public class Maso 
	{
		/* Tiene 52 Cartas todas distintas */
		public var cartas :Array = new Array();
		
		public function Maso() 
		
		{
			for (var i: uint = 1 ; i < 14 ; i++ )
			{
				for (var j: uint = 1; j < 5 ; j++ )
				{
					var carta: Carta = new Carta(i,j);
					
					cartas.push(carta);
				}
			}
		}
		
		public function barajar ()
		{
			for (var i : uint = 0; i < (cartas.length); i++)
			{
				var posic = (Math.round(Math.random()*((cartas.length-1)-i)))+i;
				cartas.splice(i, 0, cartas[posic]);
				cartas.splice(posic+1, 1);
			}
			trace (cartas);
		}
		public function repartirCarta():Carta  {	
			var pos = Math.round(Math.random() * (cartas.length-1) );

			var retorno = cartas[pos];
			cartas.splice(pos, 1);
			return retorno;
		}
		public function  repartirCartas():Array {
			var cartasJuga = new Array();
			cartasJuga.push(repartirCarta());
			cartasJuga.push(repartirCarta());
			return cartasJuga;
		}
		
		public function devolverCartas(a:Array) {
			for(var i = 0; i< a.length; i++){
				cartas.push(a[i]);
				}
									
		}
		
	}
	
}