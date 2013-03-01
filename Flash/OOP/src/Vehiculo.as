package  
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author 
	 */
	public class Vehiculo extends MovieClip
	{
		private var rendimiento:Number;
		private var combustibleRestante:Number;
		private var kilometrosViajados:Number = 0;
		private var ir :Boolean = false;
		public var ruedas :Rueda;
		
		public function Vehiculo(pRendimiento:Number, pCombustibleRestante:Number) 
		{
			
			rendimiento = pRendimiento;
			combustibleRestante = pCombustibleRestante;
			
			this.addEventListener(Event.ENTER_FRAME, moverVehiculo);
			comenzar();
			
		}
		public function moverVehiculo (e:Event):void
		{
			if (ir)
			{
				kilometrosViajados += rendimiento;
				combustibleRestante --;
				trace ("kilometros viajados:" + kilometrosViajados);
								this.x = kilometrosViajados;

				if (combustibleRestante < 1 ) {
					this.removeEventListener(Event.ENTER_FRAME, moverVehiculo);
					prenderRadio();
				}
			}
		}
		public function comenzar():void {
			ir = true;
		}
		public function prenderRadio():void {
		trace("radio prendida");	
		}
	}
	
}