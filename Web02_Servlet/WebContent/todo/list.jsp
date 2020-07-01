<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
	<h1>오늘 할일</h1>
	<ul>
	<%
		List<String> list = new ArrayList<>();
		list.add("html 공부하기");
		list.add("css 공부하기");
		list.add("javascript 공부하기");
		for(String tmp:list){
	%>
		<li><%=tmp%></li>
	<%}%>
	<%for(int i=0;i<list.size();i++){ %>
		<li><%=list.get(i)%></li>
	<%}%>
	</ul>
</body>
</html>