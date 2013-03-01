package  
{
	
	/**
	 * ...
	 * @author 
	 */
	public class Camion extends Vehiculo
	{
		
		public function Camion(pRendimiento:Number, pCombustibleRestante:Number) 
		{
			super(pRendimiento, pCombustibleRestante);
			ruedas = new Rueda ("Camion");
			addChild(ruedas); 
			ruedas.x = 10;
			ruedas.y = 25;
		}
		public function abrirCompuertas():void
		{
		trace("compuertas abiertas")
		}
		
	}
	
}