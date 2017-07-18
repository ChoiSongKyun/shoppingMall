package shop.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import shop.bean.Buybean;
import shop.control.ActionForWard;

public class DeleteCartAction implements Action {
	private String path;
	private boolean redirect;

	public DeleteCartAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		List<Buybean>cart=(ArrayList<Buybean>) request.getSession().getAttribute("cart");
		int index=Integer.parseInt(request.getParameter("index"));
		
		String flag=request.getParameter("flag");
		
		
		
		if(flag.equals("one")){
		cart.remove(index);
		}
		else if (flag.equals("all")) {
			cart.removeAll(cart);
			
		}
		
	    request.getSession().setAttribute("cart", cart);		
		
		return new ActionForWard(path, redirect);
		
	}

}
