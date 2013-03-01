package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import caurina.transitions.Tweener;
	/**
	 * ...
	 * @author 
	 */
	public class Main extends Sprite 
	{
		public var elementos :Array = new Array();
		public var origenX :Number ;		
		public var origenY :Number;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			for (var i : uint = 0; i < 5; i++ ) 
			{
				var elementoCirculo_mc : Circulo = new Circulo(10, 50+i*50);
				elementos.push(elementoCirculo_mc);
				addChild(elementoCirculo_mc);
			}
			//Tweener.addTween(circulo_mc,{ x:400, y:300, time:1, transition:"linear", onComplete:SeguirAnimacion } )
			mover();
			/*for (var i : uint = 0; i < 5; i++ ) {
				if(i<4){				
				Tweener.addTween(elementos[i],{ x:400, y:elementos[i].y, time:1, transition:"easeOutElastic" } )
				}else {
					Tweener.addTween(elementos[i],{ x:400, y:elementos[i].y, time:1, transition:"easeOutElastic", onComplete:SeguirAnimacion } )
				}
			}*/
			
		}
		private function SeguirAnimacion() : void {
			//Tweener.addTween(circulo_mc,{ x:origenX, y:origenY, time:1, transition:"linear" } )
			//Tweener.addTween(circulo_mc,{ x:origenX, y:origenY, time:0, transition:"easeOutElastic", onComplete:mover } )
			for (var i : uint = 4; i >= 0 ; i-- ) {
				if(i<4){
					Tweener.addTween(elementos[i],{ x:100, y:elementos[i].y, time:1,  delay:4-i, transition:"easeOutElastic" } )
				}else {
					Tweener.addTween(elementos[i],{ x:100, y:elementos[i].y, time:1,  delay:4-i, transition:"easeOutElastic", onComplete:mover } )
				}
			}
		}
				private function mover() : void {
			//Tweener.addTween(circulo_mc,{ x:origenX, y:origenY, time:1, transition:"linear" } )
			//Tweener.addTween(circulo_mc,{ x:400, y:300, time:2, transition:"easeOutElastic", onComplete:SeguirAnimacion } )
			for (var i : uint = 0; i < 5; i++ ) {
				if(i<4){
				Tweener.addTween(elementos[i], { x:400, y:elementos[i].y, time:1, delay:i, transition:"easeOutElastic" } )
				}else {
					Tweener.addTween(elementos[i],{ x:400, y:elementos[i].y, time:1,  delay:i, transition:"easeOutElastic", onComplete:SeguirAnimacion } )
				}
			}
		}

		
	}
	
}