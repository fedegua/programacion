package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.TimerEvent;
	import flash.ui.Keyboard;
	import flash.utils.Timer;
	/**
	 * ...
	 * @author Fede
	 */
	public class Main extends Sprite 
	{
		public var cuenta: Timer;
		public var i:uint = 10;
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
			stage.addEventListener(Event.ENTER_FRAME, onEF);
			cuenta = new Timer(800);
			cuenta.addEventListener(TimerEvent.TIMER, cadaTiempo);
			cuenta.start();

		}
		public function cadaTiempo(e:TimerEvent):void 
		{
			
				i--;
				texto_txt.text = String(i);
				if (i == 0)
				{
					cuenta.removeEventListener(TimerEvent.TIMER, cadaTiempo);
					texto_txt.text = "OUIIIIII";
					}

		}	
		public function presTecla(e:KeyboardEvent):void
		{

			switch (e.keyCode)
			{
				case 38:
					if (personaje_mc.y > 0 )
					{
						personaje_mc.y -= 5;			
						personaje_mc.rotation = 0;
					}
					break;
					
				case 40:
				if (personaje_mc.y < stage.stageHeight)
					{
					personaje_mc.y += 5;
					personaje_mc.rotation = 180;
					}
					break;
					
				case 39:
				if (personaje_mc.x < stage.stageWidth)
					{
					personaje_mc.x += 0.5;
					personaje_mc.rotation = 90;
					}
					break;
					
				case 37:
				if (personaje_mc.x > 0 )
					{
					personaje_mc.x -= 25;
					personaje_mc.rotation = -90;
					}
					break;
				case 107:
						personaje_mc.scaleX += 0.1;
						personaje_mc.scaleY += 0.1;
					
					break;
				case 109:
					if (personaje_mc.scaleX >= 0.1)
					{
					personaje_mc.scaleX -= 0.1;
					personaje_mc.scaleY -= 0.1;
					}
					break;
			}
		}
		public function onEF(e:Event):void
		{
			if (personaje_mc.x < stage.stageWidth)
			{
			personaje_mc.x += 5;
			}
		}
	}
	
}