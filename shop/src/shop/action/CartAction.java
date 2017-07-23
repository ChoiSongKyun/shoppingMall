package shop.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import shop.bean.Buybean;
import shop.control.ActionForWard;

public class CartAction implements Action {

	private String path;
	private boolean redirect;

	public CartAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		List<Buybean> cart = (ArrayList<Buybean>) request.getSession().getAttribute("cart");
		int totalprice = 0;

		for (int i = 0; i < cart.size(); i++) {
			totalprice += (cart.get(i).getPrice() * cart.get(i).getBamount());
		}

		if (totalprice >= 50000) {
			for (int i = 0; i < cart.size(); i++) {
				cart.get(i).setDelivery("무료");

			}
		} else {
			for (int i = 0; i < cart.size(); i++) {
				cart.get(i).setDelivery("2,500원<br>조건");
			}

		}

		request.getSession().setAttribute("cart", cart);

		return new ActionForWard(path, redirect);

	}

}
