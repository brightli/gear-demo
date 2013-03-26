package gear.gui {
	import gear.core.Game;
	import gear.gui.controls.GButton;
	import gear.log4a.GLogger;
	import gear.log4a.GUIAppender;

	/**
	 * @author Administrator
	 */
	public class TestGButton extends Game {
		protected var render : QName;

		override protected function startup() : void {
			GLogger.addAppender(new GUIAppender());
			var btn : GButton = new GButton();
			btn.text = "login";
			addChild(btn);
			btn.onClick = onClick;
			GLogger.debug("Hello World!");
		}

		protected function onClick(target : GButton) : void {
		}

		public function TestGButton() {
		}
	}
}
