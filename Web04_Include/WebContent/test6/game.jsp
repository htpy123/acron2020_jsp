<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test6/game.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<jsp:include page="../include/navbar3.jsp">
		<jsp:param value="game" name="thisPage"/>
	</jsp:include>
	<div class="container">
		<h1>game.jsp 입니다</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti est ratione natus repellat rerum inventore ut quas aspernatur sequi doloremque eius ullam dolorem voluptatibus amet in mollitia iure nihil possimus.</p>
	</div>
</body>
</html>