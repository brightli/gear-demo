package gear.gui {
	import gear.core.Game;
	import gear.gui.controls.GTextArea;
	import gear.gui.core.GAlign;
	import gear.log4a.GCSSLogFormatter;

	/**
	 * @author Administrator
	 */
	public class TestGTextArea extends Game {
		override protected function startup() : void {
			var ta : GTextArea = new GTextArea();
			ta.align=GAlign.FULL;
			ta.editable = false;
			ta.styleSheet =new GCSSLogFormatter().styleSheet;
			ta.appendHtmlText("<p class='debug'>[00:00:00:102][DEBUG]{gear.gui::TestGButton} Hello World!</p>");
			addChild(ta);
		}

		public function TestGTextArea() {
		}
	}
}