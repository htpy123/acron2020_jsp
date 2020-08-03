<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String animals="cat_dog_elephant";
	request.setAttribute("animals", animals);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test.jsp</title>
</head>
<body>
<ul>
	<c:forTokens var="tmp" items="${animals }" delims="_" >
		<li>${tmp }</li>
	</c:forTokens>
</ul>
</body>
</html>