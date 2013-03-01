package 
{
	import flash.display.Sprite;
	import flash.events.Event;
		import flash.events.MouseEvent;
			import flash.events.KeyboardEvent;
				import flash.ui.Keyboard;
	/**
	 * ...
	 * @author 
	 */
	public class Main extends Sprite 
	{
		public var vel:int = 1;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, presTecla);
			llave_mc.addEventListener(MouseEvent.MOUSE_DOWN, moverCuadrado);
			llave_mc.addEventListener(MouseEvent.MOUSE_UP, moverCuadradoApaga);
			detener_btn.addEventListener(MouseEvent.CLICK, detener);
			
		}
		public function andar (e:Event):void{
			auto_mc.x += vel;
			if (auto_mc.x > 500) {
				vel += 1;
				auto_mc.x=0;
				velocidad_txt.text= String((vel *20) +2);
				}
			}
		public function presTecla(e:KeyboardEvent):void
		{

			switch (e.keyCode)
			{
				case 38:
					if (auto_mc.y > 0 )
					{
						auto_mc.y -= 5;			
						
					}
					break;
					
				case 40:
				if (auto_mc.y < stage.stageHeight)
					{
					auto_mc.y += 5;
					
					}
					break;
			}
		}
		
		public function moverCuadradoApaga(e:MouseEvent):void
		{
			llave_mc.stopDrag();
			if (llave_mc.hitTestObject(auto_mc)) {
				stage.addEventListener(Event.ENTER_FRAME, andar);
				llave_mc.visible=false;
			}
		}
		public function moverCuadrado(e:MouseEvent):void
		{
			llave_mc.startDrag();
		}
		public function detener(e:Event):void{
			stage.removeEventListener(Event.ENTER_FRAME, andar);
			llave_mc.visible = true;
			llave_mc.x = 100;
			llave_mc.y = 100;
			}
		
	}
	
}