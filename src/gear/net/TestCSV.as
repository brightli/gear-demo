package gear.net {
	import gear.core.Game;
	import gear.log4a.GLogger;
	import gear.log4a.GUIAppender;
	/**
	 * @author Administrator
	 */
	//[Frame(factoryClass="gear.core.GPreloader")]
	public class TestCSV extends Game {
		override protected function startup() : void {
			var ui:GUIAppender=new GUIAppender();
			GLogger.addAppender(ui);
			ui.show();
			GLoadUtil.load("assets/effext.csv",onCsvLoaded);
		}
		
		private function onCsvLoaded(key:String):void{
			var data:Vector.<Vector.<String>>=GLoadUtil.getCsvData(key);
			trace("#",data.length,data[0][0]);
		}
	}
}
