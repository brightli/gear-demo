package gear.gui {
	import gear.core.Game;
	import gear.log4a.GLogger;
	import gear.log4a.GUIAppender;

	/**
	 * @author Administrator
	 */
	public class TestGButton extends Game {		
		override protected function startup() : void {
			GLogger.addAppender(new GUIAppender());
			addChild(new LoginPanel());
			trace("ok");
		}
		[Inline]
		public function add(a:int,b:int):int{
			return a+b;
		}

		public function TestGButton() {
		}
	}
}
