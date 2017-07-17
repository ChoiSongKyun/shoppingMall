package shop.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import shop.bean.Buybean;
import shop.control.ActionForWard;

public class ModCartAction implements Action{
	
	private String path;
	private boolean redirect;

	public ModCartAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		List<Buybean>cart=(ArrayList<Buybean>) request.getSession().getAttribute("cart");
		int index=Integer.parseInt(request.getParameter("index"));
		cart.get(index).setBamount(Integer.parseInt(request.getParameter("amount")));
	    request.getSession().setAttribute("cart", cart);		
		
		return new ActionForWard(path, redirect);
		
	}


}
