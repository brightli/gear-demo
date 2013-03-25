package robotlegs.login.controller {
	import robotlegs.bender.bundles.mvcs.Command;
	import robotlegs.login.model.UserModel;
	import robotlegs.login.view.event.UserEvent;

	/**
	 * @author Administrator
	 */
	public class UserSignInCommand extends Command {
		[Inject]
		public var event : UserEvent;
		[Inject]
		public var model : UserModel;

		public function UserSignInCommand() {
		}

		override public function execute() : void {
			model.login();
		}
	}
}
