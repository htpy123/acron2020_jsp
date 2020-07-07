<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
	include 디렉티브를 이용해서 jsp 페이지를 inlcude 하면
	해당 페이지에 include 된 jsp 페이지가 통합되어서 jsp 페이지가 만들어진다.
	결국 실행시점에 사용되는 jsp 페이지는 1개만 사용된다.
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test1/main.jsp</title>
</head>
<body>
	<%@include file="header.jsp" %>
	<h1>main.jsp 페이지 입니다</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta minus placeat libero assumenda hic sapiente vitae iusto facere id quidem consequatur non fugiat maxime reprehenderit architecto eligendi beatae quibusdam fuga!</p>
	<a href="other.jsp">다른 페이지</a>
	
	<%@include file="footer.jsp" %>
</body>
</html>