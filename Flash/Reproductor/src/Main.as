package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	import flash.net.URLRequest;
	
	/**
	 * ...
	 * @author 
	 */
	public class Main extends Sprite 
	{
		public var efectoSonido: Sound;
		public var canalEfectos : SoundChannel;
		
		public var cancionSonido: Sound;
		public var canalSonido : SoundChannel;
		
		public var solicitud: URLRequest;
		
		public var transSonido: SoundTransform;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			efectoSonido = new Efecto();			
			
			solicitud = new URLRequest("sonido/gran_pez.mp3");
			cancionSonido = new Sound(solicitud);
			canalSonido = new SoundChannel();
			canalSonido = cancionSonido.play(); 
			//canalEfectos = efectoSonido.play();
			
					
			
			stage.addEventListener(Event.ENTER_FRAME, andar);
		}
		
		public function andar(e:Event):void
		{
			transSonido = new SoundTransform();
			transSonido.volume = 1-(mouseY / stage.stageHeight);
		
				transSonido.pan = (mouseX / stage.stageWidth) * 2 - 1 ;
			canalSonido.soundTransform = transSonido;
			
			
			
		}
	}
	
}