package robotlegs.login.view {
	import gear.gui.core.GAlign;
	import gear.gui.controls.GCheckBox;
	import gear.gui.controls.GTextInput;
	import gear.gui.containers.GPanel;
	import gear.gui.controls.GButton;

	import robotlegs.login.view.event.UserEvent;

	/**
	 * @author Administrator
	 */
	public class LoginView extends GPanel {
		protected var _username : GTextInput;
		protected var _password : GTextInput;
		protected var _remember_cb:GCheckBox;
		protected var _login_btn : GButton;
		protected var _reg_btn : GButton;
		
		protected function initView():void{
			setSize(320,80);
			align=GAlign.CENTER;
			_login_btn= new GButton();
			_login_btn.text = "登录";
			add(_login_btn);
		}
		
		protected function initEvent():void{
			_login_btn.onClick = onLoginClick;
		}

		public function LoginView() {
			initView();
			initEvent();
		}

		public function onLoginClick() : void {
			dispatchEvent(new UserEvent(UserEvent.SIGN_IN));
		}
	}
}
