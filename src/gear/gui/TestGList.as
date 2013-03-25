package gear.gui {
	import gear.log4a.GUIAppender;
	import gear.log4a.GLogger;
	import gear.core.Game;
	import gear.gui.controls.GList;

	/**
	 * @author Administrator
	 */
	[Frame(factoryClass="gear.core.GPreloader")]
	public class TestGList extends Game {
		override protected function startup() : void {
			GLogger.addAppender(new GUIAppender());
			var list : GList = new GList();
			addChild(list);
			for (var i : int = 0; i < 6; i++) {
				list.model.add("abc" + i);
			}
		}
	}
}
