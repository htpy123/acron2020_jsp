<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/member.jsp</title>
</head>
<body>
<%
	//request 영역에 "dto" 라는 키값으로 담긴 MemberDto 객체의 참조값 얻어내기
	MemberDto dto = (MemberDto)request.getAttribute("dto");
%>
<p>번호 : <strong><%=dto.getNum()%></strong></p>
<p>이름 : <strong><%=dto.getName()%></strong></p>
<p>주소 : <strong><%=dto.getAddr()%></strong></p>

	<%
		MemberDto str = (MemberDto)request.getAttribute("dto");
	%>
	<h1>회원 한명의 정보 페이지 입니다</h1>
	<p>회원의 번호 : <%=str.getNum() %></p>
	<p>회원의 이름 : <%=str.getName() %></p>
	<p>회원의 주소 : <%=str.getAddr() %></p>
</body>
</html>