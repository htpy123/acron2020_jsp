<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/sub/fortune.jsp</title>
</head>
<body>
	<%
		Random ran = new Random();
		int num = ran.nextInt(4);
		
		String[] str = {"대길","길","흉","대흉"};
		
	%>
	<p>오늘의 운세 : <%=str[num]%></p>
	<a href="/Web02_Servlet/">고홈</a>
</body>
</html>