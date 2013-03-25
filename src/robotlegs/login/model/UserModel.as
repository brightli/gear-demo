package robotlegs.login.model {
	import robotlegs.login.model.event.ModelEvent;
	import robotlegs.bender.framework.api.ILogger;

	import flash.events.Event;
	import flash.events.IEventDispatcher;

	/**
	 * @author Administrator
	 */
	public class UserModel {
		[Inject]
		public var eventDispatcher : IEventDispatcher;
		[Inject]
		public var logger : ILogger;

		protected function dispatch(e : Event) : void {
			if (eventDispatcher.hasEventListener(e.type))
				eventDispatcher.dispatchEvent(e);
		}

		public function UserModel() {
			trace("user model");
		}

		public function login() : void {
			dispatch(new ModelEvent(ModelEvent.MODEL_UPDATE));
		}
	}
}
