<%@page import="test.todo.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//TodoDao 객체의 참조값 얻어오기
	TodoDao dao = TodoDao.getInstance();
	//DB 에 저장한다
	List<TodoDto> list = dao.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<div class="navbar navbar-expand-sm navbar-dark bg-primary"><!-- bg background -->
		<a class="navbar-brand" href="${pageContext.request.contextPath }/">Acorn</a>
		<ul class="navbar-nav">
			<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath }/member/list.jsp">Member</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
		          <a class="dropdown-item" href="${pageContext.request.contextPath }/member/insertform.jsp">회원 추가 메뉴</a>
		          <div class="dropdown-divider"></div>
		          <a class="dropdown-item" href="#">no action</a>
	        	</div>
			</li>
			<li class="nav-item"><a class="nav-link active" href="${pageContext.request.contextPath }/todo/list.jsp">Todo</a></li>
		</ul>
	</div>
	<h1>할일 목록 입니다</h1>
	<form action="${pageContext.request.contextPath }/todo/insert.jsp" method="post">
	<div class="form-row mb-2">
		<div class="col">
			<input type="text" name="content" class="form-control"/>
		</div>
		<div class="col">
			<button type="submit" class="btn btn-primary" >추가</button>	
		</div>
	</div>
	
	</form>
	<table class="table table-hover table-bordered">
		<thead class="thead-dark">
			<tr class="d-flex"> 
				<th class="col-2">번호</th>
				<th class="col-5">내용</th>
				<th class="col-3">등록일</th>
				<th class="col-2">삭제</th>
			</tr>
		</thead>
		<tbody>
			<% for(TodoDto tmp:list){ %>
				<tr class="d-flex"> <!-- 12등분 기준 -->
					<td class="col-2"><%=tmp.getNum() %></td>
					<td class="col-5"><%=tmp.getContent() %></td>
					<td class="col-3"><%=tmp.getRegdate() %></td>
					<td class="col-2"><a href="delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
				</tr>		
			<%} %>
		</tbody>
	</table>
	
</div>
</body>
</html>