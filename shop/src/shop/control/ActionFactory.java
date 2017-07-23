package shop.control;

import shop.action.Action;
import shop.action.AddCartAction;
import shop.action.CartAction;
import shop.action.DeleteCartAction;
import shop.action.ModCartAction;
import shop.action.homeAction;
import shop.action.infoAction;

public class ActionFactory {
	
	public static  Action getAction(String cmd){
		Action action=null;
		if(cmd.equals("home")){
			action=new homeAction("jsp/main/home.jsp", false);
		}
		else if (cmd.equals("info")) {
			action=new infoAction("jsp/main/info.jsp", false);
		}
		else if (cmd.equals("addCart")) {
			action=new AddCartAction("/shop/cart.do?cmd=cart", true);
		}
		else if (cmd.equals("deleteCart")){
			action=new DeleteCartAction("/shop/cart.do?cmd=cart", true);
		}
		else if (cmd.equals("cart")){
			action=new CartAction("jsp/main/cart.jsp", false);
		}
		else if (cmd.equals("modifyCart")){
			action=new ModCartAction("/shop/cart.do?cmd=cart", true);
		}
		 
		return action;
		
	}

}




