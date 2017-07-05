package shop.action;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import shop.control.ActionForWard;
public class MakeAction  implements Action{
	private String path;
	private boolean redirect;
	public MakeAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
		  ArrayList<String>list=new ArrayList<String>();
		  list.add("���");
		  list.add("����");
		  list.add("�ϴ�");
		  list.add("��");
		  list.add("�ڹ�");
		  request.setAttribute("list",list);
		  
		
		return new ActionForWard(path, redirect);
	}
	
	

}






