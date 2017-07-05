package shop.action;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import shop.bean.EmpDto;
import shop.control.ActionForWard;
import shop.dao.ScottDao;

public class ScottListAction implements Action{
	private String path;
	private boolean redirect;
	public ScottListAction(String path, boolean redirect) {
		super();
		this.path = path;
		this.redirect = redirect;
	}
	@Override
	public ActionForWard execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		try {
			String query=request.getParameter("query");
			String data=request.getParameter("data");
			List<EmpDto>list=null;
			HashMap<String, String>map=new HashMap<String, String>();
			map.put("query", query);
			map.put("data", data);			
			if(query!=null && data!=null){
				list=ScottDao.selectEmp(map);
				path="mvcView/searchEmp.jsp";
			}else{
				list=ScottDao.selectEmp(null);
			}
			
			request.setAttribute("empList", list);			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return new ActionForWard(path,redirect);
	}
	

}
