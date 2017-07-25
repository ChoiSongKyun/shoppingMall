package shop.action;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import shop.bean.OptionBean;
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
		int pno = Integer.parseInt(request.getParameter("pno"));
		try {

			request.setAttribute("bean", dao.selectOne(pno));

			List<OptionBean> list = dao.selectPoption(pno);
			JSONArray option= new JSONArray();
			
			for (int i = 0; i < list.size(); i++) {
			JSONObject sub=new JSONObject();
			sub.put("ono", list.get(i).getOno());
			sub.put("color", list.get(i).getColor());
			sub.put("size", list.get(i).getPsize());
			sub.put("pno", list.get(i).getPno());
			option.add(sub);
			}
			request.setAttribute("option", option);
			
			
			Set<String> color = new HashSet<String>();
			

			for (int i = 0; i < list.size(); i++) {
				color.add(list.get(i).getColor());
			}

			
			request.setAttribute("color", color.toArray());

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		}

		return new ActionForWard(path, redirect);
	}

}
