package  
{
	import flash.display.MovieClip;
	
	/**
	 * ...
	 * @author 
	 */
	public class Rueda extends MovieClip 
	{
		public var tipo :String;
		public function Rueda( pTipo:String) 
		{
			tipo = pTipo;
			
			stop();
			prepararRuedas();
		}
		public function prepararRuedas() {
			switch (tipo)
			{
				case "Camion":
					this.gotoAndStop("Camion");
					break;
				case "Auto":
					this.gotoAndStop("Auto")
					break;
			}
		}
		
	}
	
}