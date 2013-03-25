package robotlegs.login.model.event {
	import flash.events.Event;

	/**
	 * @author Administrator
	 */
	public class ModelEvent extends Event {
		public static const MODEL_UPDATE : String = "modelUpdate";

		public function ModelEvent(type : String, bubbles : Boolean = false, cancelable : Boolean = false) {
			super(type, bubbles, cancelable);
		}

		override public function clone() : Event {
			return new ModelEvent(type, bubbles, cancelable);
		}
	}
}
