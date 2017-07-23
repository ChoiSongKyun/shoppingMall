package shop.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

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
		List<Buybean> cart = (ArrayList<Buybean>) request.getSession().getAttribute("cart");
		

		String flag = request.getParameter("flag");

		if (flag.equals("one")) {
			int index = Integer.parseInt(request.getParameter("index"));
			cart.remove(index);
		} else if (flag.equals("all")) {
			cart.removeAll(cart);

		} else if (flag.equals("check")) {
			String array = request.getParameter("index");
			

			for (int i = 0; i < array.split(",").length; i++) {
				
				System.out.println(Integer.parseInt(array.split(",")[i]));
				cart.remove(Integer.parseInt(array.split(",")[i])-i);

			}

		}

		request.getSession().setAttribute("cart", cart);

		return new ActionForWard(path, redirect);

	}

}
