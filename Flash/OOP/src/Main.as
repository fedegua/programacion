package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author 
	 */
	public class Main extends Sprite 
	{
		public var auto : Auto;
		public var camion : Camion;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			auto = new Auto(18, 40);
			camion = new Camion(10, 70);
			
			addChild(auto);
			auto.y = 100;
			auto.x = 100;
			addChild(camion)
			camion.y = 250;
			camion.x = 100;
			auto.abrirTechoSolar();
			camion.abrirCompuertas();
		}
		
	}
	
}