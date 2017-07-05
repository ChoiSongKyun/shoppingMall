package shop.control;

import shop.action.Action;
import shop.action.DeleteAction;
import shop.action.ElJstlAction;
import shop.action.EmpInfoAction;
import shop.action.ListAction;
import shop.action.LoginAction;
import shop.action.MakeAction;
import shop.action.ScottListAction;

public class ActionFactory {
	
	public static  Action getAction(String cmd){
		Action action=null;
		if(cmd.equals("login")){
			action=new LoginAction("",false);
		}//if
		else if(cmd.equals("delete")){
			action=new DeleteAction("list.do?cmd=list",true);
		}
		else if(cmd.equals("list")){
			action=new ListAction("mvcView/list.jsp",true);
		}
		else if(cmd.equals("table")){
			action=new MakeAction("mvcView/makeResult.jsp", false);
		}
		else if(cmd.equals("scottList")){
			action=new ScottListAction("mvcView/empList.jsp", false);
		}
		else if(cmd.equals("empInfo")){
			action=new EmpInfoAction("mvcView/empInfo.jsp", false);
		}
		else if(cmd.equals("elJstl")){
			action =new ElJstlAction("mvcJSTL/elJstl1.jsp",false);
		}
		return action;
		
	}//method

}




