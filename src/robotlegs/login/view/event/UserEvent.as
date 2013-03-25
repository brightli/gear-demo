package robotlegs.login.view.event {
	import flash.events.Event;

	/**
	 * @author Administrator
	 */
	public class UserEvent extends Event{
		public static const SIGN_IN : String = "singIn";

		public function UserEvent(type : String, bubbles : Boolean = false, cancelable : Boolean = false) {
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event {
            return new UserEvent(type, bubbles, cancelable);
        }
	}
}
