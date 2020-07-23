<%@page import="test.cafe.dao.CafeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	boolean isSuccess = CafeDao.getInstance().delete(num);
	if(isSuccess){
		response.sendRedirect("../detail.jsp");
	}else{
		response.sendRedirect("../detail.jsp");
	}
%>