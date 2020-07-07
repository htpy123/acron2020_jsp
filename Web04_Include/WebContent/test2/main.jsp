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
<title>/test2/main.jsp</title>
</head>
<body>
	<%@include file="header.jsp" %>
	<%
		//에러가 발생함 이유는 위에 코드랑 결국 합쳐져서 실행되게 되는데 이미 위 header.jsp
		//코드에서 name을 선언했기 때문에 중복 선언된다. 따라서 에러 발생
		//String name="원숭이";
	%>
	<h1>main.jsp 페이지 입니다</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta minus placeat libero assumenda hic sapiente vitae iusto facere id quidem consequatur non fugiat maxime reprehenderit architecto eligendi beatae quibusdam fuga!</p>
	<a href="other.jsp">다른 페이지</a>
	
	<%@include file="footer.jsp" %>
</body>
</html>