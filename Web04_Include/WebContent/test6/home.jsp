<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test6/home.jsp</title>
<%-- include 된 페이지에 필요한 css 도 여기서 로딩을 해야 된다 --%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<jsp:include page="../include/navbar3.jsp">
		<jsp:param value="home" name="thisPage"/>
	</jsp:include>
	
	<div class="container">
		<h1>home.jsp 입니다</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum officia culpa sint deserunt hic facilis repellat dolor maxime doloribus placeat voluptatem illo. Natus voluptas asperiores itaque neque fuga non dolore.</p>
	</div>
</body>
</html>