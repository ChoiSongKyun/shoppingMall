package shop.control;

import shop.action.Action;
import shop.action.homeAction;
import shop.action.infoAction;

public class ActionFactory {
	
	public static  Action getAction(String cmd){
		Action action=null;
		if(cmd.equals("home")){
			action=new homeAction("jsp/main/home.jsp", false);
		}//if
		else if (cmd.equals("info")) {
			action=new infoAction("jsp/main/info.jsp", false);
		}
		
		return action;
		
	}//method

}




