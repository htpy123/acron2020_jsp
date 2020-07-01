<%@page import="test.dto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
<link rel="stylesheet" href="/Web02_Servlet/css/bootstrap.css" />
<style>
	div{
		position : absolute;
		width: 800px;
		height: 100px;
		left: 15%;
	}
</style>
</head>
<body>
	<%
		List<MemberDto> list = new ArrayList<>();
		list.add(new MemberDto(1, "김구라", "노량진"));
		list.add(new MemberDto(2, "해골", "행신동"));
		list.add(new MemberDto(3, "원숭이", "상도동"));
	%>
	<div>
		<table class='table table-dark' border=1px solid>
			<caption>회원 목록 입니다</caption>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
			</tr>
			<tr>
			<%for(MemberDto tmp : list){ %>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getName() %></td>
				<td><%=tmp.getAddr() %></td>
			</tr>
			<%}%>
			
		</table>
	</div>
</body>
</html>