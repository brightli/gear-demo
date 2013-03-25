package gear.gui {
	import gear.core.Game;
	import gear.gui.controls.GList;
	import gear.log4a.GLogger;
	import gear.log4a.GUIAppender;
	/**
	 * @author Administrator
	 */
	public class Test extends Game{
		
		override protected function startup() : void {
			GLogger.addAppender(new GUIAppender());
			var list : GList = new GList();
			addChild(list);
			for (var i : int = 0; i < 6; i++) {
				list.model.add("abc" + i);
			}
		}

		public function Test() {
			
		}
	}
}