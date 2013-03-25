package robotlegs.login.view {
	import robotlegs.bender.bundles.mvcs.Mediator;
	import robotlegs.login.model.event.ModelEvent;
	import robotlegs.login.view.event.UserEvent;
	/**
	 * @author bright
	 * @version 20130325
	 */
	public class LoginMediator extends Mediator{
		
		[Inject]
		public var view : LoginView;
		
		protected function modelUpdateHandler(event:ModelEvent):void{
			trace("model update");
		}
		
		public function LoginMediator() {
		}
		
		override public function initialize():void{
			addViewListener(UserEvent.SIGN_IN, dispatch);
			addContextListener(ModelEvent.MODEL_UPDATE,modelUpdateHandler,ModelEvent);
		}
	}
}
