package 
{
	import flash.accessibility.AccessibilityImplementation;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	/**
	 * ...
	 * @author yo
	 */
	public class Main extends Sprite 
	{
		public var campo : Campo;
		public var datos : XML;
		public var cargador:URLLoader;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			cargador = new URLLoader();
			cargador.addEventListener(Event.COMPLETE, mostrarXML);
			cargador.load(new URLRequest("xml/datos.xml"));
			
			
			
			
			//trace(datos);
			//trace(datos.persona[0]);
			//trace(datos.persona.length());
			//trace (datos.persona[0].nombre); // es lo mismo hacertrace (datos.persona.nombre[0]);
			//trace(datos.persona.nombre);
			//trace(datos.persona.@edad)
			//trace (datos..primerNombre[0]);
			
			
		}
		private function mostrarXML(e:Event):void
		{
			//trace(e.target.data);
			datos = XML (e.target.data);
			campo = new Campo();
			campo.Nombre_txt.text = datos.cabezales.cabezal[0];
			campo.Apellido_txt.text = datos.cabezales.cabezal[1];
			campo.Edad_txt.text = datos.cabezales.cabezal[2];
			campo.gotoAndStop(1);
			addChild(campo);
			
			var altura:int = 24;
			for(var i= 0; i< datos.personas.persona.length(); i++)
			{
				
				campo = new Campo();
				if (i%2 == 0)
				{
					campo.gotoAndStop(2);
				} else {
					campo.gotoAndStop(1);
				}
				campo.y += 24 * (i+1);
				addChild(campo);
				
				campo.Nombre_txt.text = datos..primerNombre[i];
				campo.Apellido_txt.text = datos..segundoNombre[i];
				campo.Edad_txt.text = datos..persona[i].@edad;
			}
		}
		
	}
	
}