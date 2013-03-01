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
		public var elementos :Array = new Array();
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{			
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			for (var i : uint = 0; i < 20; i++ ) {
				
				var elementoCirculo_mc : Circulo = new Circulo(stage.stageWidth * Math.random(), stage.stageHeight * Math.random())				
				addChild(elementoCirculo_mc);
				
				if(interseccion(elementoCirculo_mc))				
					elementos.push(elementoCirculo_mc);
				//elementoCirculo_mc.x = stage.stageWidth * Math.random();
				//elementoCirculo_mc.y = stage.stageHeight * Math.random();				
			}
			trace(elementos)
		}
		private function interseccion (c:Circulo):Boolean 
		{
			var i: uint = 0;
			var tocan: Boolean;
			while (i < elementos.length)
			{
				tocan = elementos[i].hitTestObject(c);
				
				while (elementos[i].hitTestObject(c))				
				{
					c.x = stage.stageWidth * Math.random();
					c.y = stage.stageHeight * Math.random();
				}
				if (tocan)
					i = 0;
			}
			return !tocan
		}
	}
	
}