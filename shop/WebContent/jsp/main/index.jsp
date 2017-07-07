<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="shop.bean.Buybean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
 
<% 
List<Buybean>cart=new ArrayList<Buybean>();
request.getSession().setAttribute("cart",cart);
response.sendRedirect("/shop/home.do?cmd=home"); 
%>

</body>
</html>