package robotlegs.login.config {
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.login.controller.UserSignInCommand;
	import robotlegs.login.model.UserModel;
	import robotlegs.login.view.LoginMediator;
	import robotlegs.login.view.LoginView;
	import robotlegs.login.view.event.UserEvent;

	import org.swiftsuspenders.Injector;
	/**
	 * @author Administrator
	 */
	public class LoginConfig implements IConfig {
		[Inject]
		public var context:IContext;
		[Inject]
		public var injector:Injector;
		[Inject]
		public var mediatorMap:IMediatorMap;
		[Inject]
		public var commandMap:IEventCommandMap;
		[Inject]
		public var contextView:ContextView;
		public function LoginConfig() {
		}
		
		public function configure() : void {
			injector.map(UserModel).asSingleton();
			mediatorMap.map(LoginView).toMediator(LoginMediator);
			commandMap.map(UserEvent.SIGN_IN,UserEvent).toCommand(UserSignInCommand);
			contextView.view.addChild(new LoginView());
		}
	}
}
