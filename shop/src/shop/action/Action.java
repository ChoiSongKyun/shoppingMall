package shop.action;

import javax.servlet.http.HttpServletRequest;

import shop.control.ActionForWard;

public interface Action{
	public ActionForWard execute(HttpServletRequest request);

}
