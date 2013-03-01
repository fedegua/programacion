package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.net.SharedObject;
	
	/**
	 * ...
	 * @author yo
	 */
	public class Main extends Sprite 
	{
		public var so :SharedObject;
		public var arr:Array = new Array("dato1", "dato2");
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			so = SharedObject.getLocal("datos");
			
			btn_enviar.addEventListener(MouseEvent.CLICK, enviar);
			if (so.data.nombre != undefined)
				nombre_txt.text = so.data.nombre;
			
		}
		public function enviar (e:Event)
		{

			so.data.nombre = nombre_txt.text;
		}
		
	}
	
}