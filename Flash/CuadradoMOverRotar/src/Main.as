package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Federico
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point			
				
			cuadrado_mc.addEventListener(MouseEvent.CLICK, accionClick)
			up_mc.addEventListener(MouseEvent.CLICK, accionClick)
			down_mc.addEventListener(MouseEvent.CLICK, accionClick)
			right_mc.addEventListener(MouseEvent.CLICK, accionClick)
			left_mc.addEventListener(MouseEvent.CLICK, accionClick)
			upEscala_mc.addEventListener(MouseEvent.CLICK, accionClick)
			downEscala_mc.addEventListener(MouseEvent.CLICK, accionClick)
			antiHorario_mc.addEventListener(MouseEvent.CLICK, accionClick)
			horario_mc.addEventListener(MouseEvent.CLICK, accionClick)
			mayorOpa_mc.addEventListener(MouseEvent.CLICK, accionClick)
			menorOpa_mc.addEventListener(MouseEvent.CLICK, accionClick)
			visibilidad_mc.addEventListener(MouseEvent.CLICK, accionClick)
			cuadrado_mc.addEventListener(MouseEvent.MOUSE_UP, moverCuadradoApaga)
			cuadrado_mc.addEventListener(MouseEvent.MOUSE_DOWN, moverCuadrado)
			
		}
		public function moverCuadradoApaga(e:MouseEvent):void
		{
			cuadrado_mc.stopDrag();
			}
		public function moverCuadrado(e:MouseEvent):void
		{
			cuadrado_mc.startDrag();
			}
		public function accionClick(e:MouseEvent):void
		{
			
			switch (e.currentTarget.name)
			{
				case "up_mc":
						cuadrado_mc.y -= 5;	
						cuadrado_mc.gotoAndStop(4);
					break;
					
				case "down_mc":
					cuadrado_mc.y += 5;
					break;
					
				case "right_mc":
					cuadrado_mc.x += 5;
					break;
					
				case "left_mc":
					cuadrado_mc.x -= 5;
					break;
					
				case "upEscala_mc":

					
						cuadrado_mc.scaleX += 0.1;
						cuadrado_mc.scaleY += 0.1;
					
					break;
				case "downEscala_mc":
					if (cuadrado_mc.scaleX > 0.1)
					{
					cuadrado_mc.scaleX -= 0.1;
					cuadrado_mc.scaleY -= 0.1;
					}
					break;
				case "antiHorario_mc":
					cuadrado_mc.rotation -= 15; 
					break;
				case "horario_mc":
					cuadrado_mc.rotation += 15; 
					break;
				case "mayorOpa_mc":
					cuadrado_mc.alpha += 0.1; 
					break;
				case "menorOpa_mc":
					cuadrado_mc.alpha -= 0.1; 
					break;
				case "visibilidad_mc":					
					cuadrado_mc.visible = !cuadrado_mc.visible 
					break;
			}		
		}
	}
	
}