<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String)session.getAttribute("id");
	//수정할 정보를 UsersDto 객체에 담고
	String email=request.getParameter("email");
	UsersDto dto = new UsersDto();
	dto.setId(id);
	dto.setEmail(email);
	//UsersDao 객체를 이용해서 수정 반영한다.
	UsersDao.getInstance().update(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/update.jsp</title>
</head>
<body>
	<script>
		alert("수정 했다")
		location.herf="${pageContext.request.ContextPath}/users/info.jsp";
	</script>
</body>
</html>