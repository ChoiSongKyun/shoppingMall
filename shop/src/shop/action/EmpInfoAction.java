package shop.action;
import javax.servlet.http.HttpServletRequest;

import shop.control.ActionForWard;
import shop.dao.ScottDao;
public class EmpInfoAction implements Action{
	private String path;
	private boolean redirect;
	
	
	public EmpInfoAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}

	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		int empno=Integer.parseInt(request.getParameter("empno"));
		try {
			request.setAttribute("empInfo", ScottDao.selectEmpOne(empno));			
		} catch (Exception e) {
			// TODO: handle exception
	      e.printStackTrace();
		}
		
		return new ActionForWard(path,redirect);
	}
	

}





