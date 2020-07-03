<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. form 전송되는 수정할 회원의 정보를 읽어온다.
	//한글 깨지지 않도록
		request.setCharacterEncoding("utf-8");
		int num = Integer.parseInt(request.getParameter("num"));
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
	//2. DB에 수정 반영한다.
		MemberDto dto = new MemberDto(num, name, addr);
		MemberDao.getInstance().update(dto);
		
	//3. 응답한다
		String cPath = request.getContextPath();
	
		response.sendRedirect(cPath+"/member/list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/update.jsp</title>
</head>
<body>

</body>
</html>