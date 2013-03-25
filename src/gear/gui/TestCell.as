package gear.gui {
	import gear.gui.cell.IGCell;

	import flash.display.Sprite;
	/**
	 * @author Administrator
	 */
	public class TestCell extends Sprite implements IGCell {
		public function set source(value : *) : void {
			trace(value);
		}

		public function hide() : void {
			if(parent!=null){
				parent.removeChild(this);
			}
		}

		public function set selected(value : Boolean) : void {
		}
	}
}
