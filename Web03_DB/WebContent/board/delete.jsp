<%@page import="test.board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	boolean isSuccess = BoardDao.getInstance().delete(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/delete.jsp</title>
</head>
<body>
	<h1>삭제 결과 페이지 입니다</h1>
	<%if(isSuccess){ %>
		<script>
			alert("삭제에 성공했습니다")
			location.href="${pageContext.request.contextPath}/board/list.jsp";
		</script>
	<%}else{ %>
		<script>
			alert("글 삭제에 실패했습니다")
			location.href="${pageContext.request.contextPath}/board/list.jsp";
		</script>
	<%} %>
</body>
</html>