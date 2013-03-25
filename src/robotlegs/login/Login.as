package robotlegs.login {
	import gear.core.Game;

	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.impl.Context;
	import robotlegs.login.config.LoginConfig;
	/**
	 * @author Administrator
	 */
	public class Login extends Game {
		protected var _context:IContext;
		override protected function startup() : void {
			_context=new Context();
			_context.install(MVCSBundle);
			_context.configure(LoginConfig);
			_context.configure(new ContextView(this));
		}
		
		public function Login() {
		}
	}
}
