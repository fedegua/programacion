package  
{
		import flash.display.MovieClip;
		import flash.events.Event;
		import flash.events.MouseEvent;
	/**
	 * ...
	 * @author 
	 */
	public class Circulo extends MovieClip
	{
		
		public function Circulo(_X:Number, _Y:Number)
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
			this.x = _X;
			this.y = _Y;
		}
		private function init(e:Event = null):void 
		{			
			removeEventListener(Event.ADDED_TO_STAGE, init);
			trace("Nuevo circulo");
			
			addEventListener(MouseEvent.MOUSE_DOWN, arrastrar);
			addEventListener(MouseEvent.MOUSE_UP, soltar);
		}
		private function arrastrar (e:MouseEvent):void
		{
			e.currentTarget.startDrag();
		}
		private function soltar (e:MouseEvent):void
		{
			e.currentTarget.stopDrag();
		}
		
	}
	
}