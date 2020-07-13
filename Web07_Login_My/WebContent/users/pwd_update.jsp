<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pwd = request.getParameter("pwd");
	String pwd1 = request.getParameter("pwd1");
	String pwd2 = request.getParameter("pwd2");
	
	UsersDto Dto = new UsersDto();
	if(pwd.equals(UsersDao.getInstance().getData(pwd)))
	Dto.setPwd(pwd);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/pwd_update.jsp</title>
</head>
<body>
	
</body>
</html>