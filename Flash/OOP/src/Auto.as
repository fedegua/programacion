package  
{
	
	/**
	 * ...
	 * @author 
	 */
	public class Auto extends Vehiculo
	{
		
		public function Auto(pRendimiento:Number, pCombustibleRestante:Number) 
		{
			super(pRendimiento, pCombustibleRestante);	
			ruedas = new Rueda ("Auto");
			addChild(ruedas);
			ruedas.x = 8;
			ruedas.y = 15;
		}
		public function abrirTechoSolar() :void
		{
			trace ("techo solar abierto");
			}
		override public function prenderRadio():void {
		trace("radio con bluetooth prendida");	
		}
	}
	
}