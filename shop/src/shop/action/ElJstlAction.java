package shop.action;

import javax.servlet.http.HttpServletRequest;

import shop.bean.Book;
import shop.control.ActionForWard;

public class ElJstlAction  implements Action{
	private String path;
	private boolean redirect;
	
	
	
	public ElJstlAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}



	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String i=request.getParameter("i");
		/*if(i!=null){
			path+="?i="+i;
		}
		request.getSession().setAttribute("ses", "OKSESSION");*/
		
		request.setAttribute("hihi",new Book());
		path="mvcJSTL/elJstl7.jsp";
		
		
		return new ActionForWard(path, redirect);
	}
	
	

}


