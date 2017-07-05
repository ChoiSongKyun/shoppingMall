package shop.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import shop.control.ActionForWard;

public class ListAction implements Action{
	private String path;
	private boolean redirect;
	public ListAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		ArrayList<String>list=new ArrayList<String>();
		list.add("������");
		list.add("�ǿ���");
		list.add("������");
		list.add("������");
		//request.getSession().setAttribute("list", list);
		request.setAttribute("list",list);
		
		return new ActionForWard(path, redirect);
	}
	
	
	

}





