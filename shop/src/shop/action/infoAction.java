package shop.action;

import javax.servlet.http.HttpServletRequest;

import shop.control.ActionForWard;
import shop.dao.shopDao;

public class infoAction implements Action {
	
	private String path;
	private boolean redirect;
	private shopDao dao = new shopDao();

	public infoAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		int pno=Integer.parseInt(request.getParameter("pno"));
		try {
			
			request.setAttribute("bean",dao.selectOne(pno));	
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
		
		return new ActionForWard(path, redirect);
	}

}
