package gear.gui {
	import gear.core.Game;
	import gear.gui.controls.GLabel;
	import gear.gui.core.GAlign;

	/**
	 * @author Administrator
	 */
	public class TestGLabel extends Game {
		override protected function startup() : void {
			var label : GLabel = new GLabel();
			label.text = "login";
			label.align = GAlign.RIGHT_TOP;
			addChild(label);
			label.text = "reg";
			label.align=new GAlign(0,-1,0,-1,-1,-1);
		}

		public function TestGLabel() {
		}
	}
}
