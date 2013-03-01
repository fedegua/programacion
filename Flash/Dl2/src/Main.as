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
		public var toca :Boolean;
		public var j :Number;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{			
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var elementoCirculo_mc : Circulo = new Circulo(stage.stageWidth * Math.random(), stage.stageHeight * Math.random())
			addChild(elementoCirculo_mc);
			elementos.push(elementoCirculo_mc);
			for (var i : uint = 1; i < 20; i++ ) 
			{			
				trace("hola")
				var elementoCirculo_mc : Circulo = new Circulo(stage.stageWidth * Math.random(), stage.stageHeight * Math.random())				
				addChild(elementoCirculo_mc);

				j = 0;
				while (j<= elementos.length -1 ){
					toca = false;			
					if(elementos[j].hitTestObject(elementoCirculo_mc)){

						elementoCirculo_mc.x = stage.stageWidth * Math.random();
						elementoCirculo_mc.y = stage.stageHeight * Math.random();
						j = 0;
					}else
					{											
						j++;
					}										
				}				
				elementos.push(elementoCirculo_mc);
				//elementoCirculo_mc.x = stage.stageWidth * Math.random();
				//elementoCirculo_mc.y = stage.stageHeight * Math.random();				
			}
			trace(elementos)
		}
		
	}
	
}