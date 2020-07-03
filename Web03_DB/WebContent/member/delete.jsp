<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	int num = Integer.parseInt(request.getParameter("num"));
	//2. MemberDao 객체를 이용해서 삭제
	MemberDao.getInstance().delete(num);
	//3.응답
	//리다일렉트 이동시키기 위해 context path 를 먼저 읽어온다.
	String cPath=request.getContextPath();

	//회원 목록보기 요청을 하도록 강요 하는 응답을 한다.(리다일렉트 이동 시키기)
	response.sendRedirect(cPath+"/member/list.jsp");
%>
<!-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/delete.jsp</title>
</head>
<body>
	<script>
		alert("삭제 되었습니다");
		//javascript 를 이용해서 클라이언트에게 특정 경로로 요청을 다시 하도록 요청하기
		location.href="${pageContext.request.contextPath }/member/list.jsp";
	</script>
</body>
</html>
 --> 없어도 괜찮음