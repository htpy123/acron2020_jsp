<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test6/study.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<jsp:include page="../include/navbar3.jsp">
		<jsp:param value="study" name="thisPage"/>
	</jsp:include>
	<div class="container">
		<h1>study.jsp 입니다</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit facilis fugit illum a. Laboriosam praesentium explicabo nostrum qui expedita consequatur minus incidunt illo mollitia voluptate reprehenderit voluptas quos accusantium tenetur.</p>
	</div>
</body>
</html>