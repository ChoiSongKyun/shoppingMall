package shop.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import shop.bean.ProductBean;
import shop.control.ActionForWard;
import shop.dao.shopDao;

public class homeAction implements Action{
	private String path;
	private boolean redirect;
	private shopDao dao=new shopDao();
	
	public homeAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		try {
			List<ProductBean>list=dao.selectProduct();
			request.setAttribute("list",list);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
		
		
		return new ActionForWard(path,redirect);
	}

}
