package shop.action;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

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

			List<OptionBean> option = dao.selectPoption(pno);
			request.setAttribute("option", option);
			Set<String> color = new HashSet<String>();

			for (int i = 0; i < option.size(); i++) {
				color.add(option.get(i).getColor());
			}

			request.setAttribute("color", color);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		}

		return new ActionForWard(path, redirect);
	}

}
