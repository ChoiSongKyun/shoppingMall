package shop.action;

import javax.servlet.http.HttpServletRequest;

import shop.control.ActionForWard;

public class DeleteAction implements Action{
	private String path;
	private boolean redirect;
	
	

	public DeleteAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}



	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
	   System.out.println("DeleteAction");
		return new ActionForWard(path, redirect);
	}
	

}
