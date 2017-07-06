package shop.action;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import shop.bean.Buybean;
import shop.control.ActionForWard;

public class AddCartAction implements Action{
	private String path;
	private boolean redirect;
	
	
	
	public AddCartAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}



	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("EUC-KR");
			Vector<Buybean> cart= (Vector<Buybean>)request.getSession().getAttribute("cart");
			Buybean buybean=new Buybean();
			String mainimg=request.getParameter("mainimg");
			String pname=request.getParameter("pname");
			int price=Integer.parseInt(request.getParameter("price"));
			int bamount=Integer.parseInt(request.getParameter("bamount"));
			buybean.setMainimg(mainimg);
			buybean.setPname(pname);
			buybean.setPrice(price);
			buybean.setBamount(bamount);			
			cart.add(buybean);
			
			request.getSession().setAttribute("cart", cart);
			
			
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
		
		return new ActionForWard(path, redirect);
	}
	
	

}
