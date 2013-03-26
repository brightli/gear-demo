package gear.gui {
	import gear.core.Game;
	import gear.gui.controls.GVScrollBar;

	/**
	 * @author Administrator
	 */
	public class TestGScrollBar extends Game {
		override protected function startup() : void {
			var sb : GVScrollBar = new GVScrollBar();
			addChild(sb);
		}

		public function TestGScrollBar() {
		}
	}
}
