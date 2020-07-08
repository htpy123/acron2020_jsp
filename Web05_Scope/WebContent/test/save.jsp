<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//클라이언트가 폼 전송한 내용을 읽어온다.
	request.setCharacterEncoding("utf-8");
	String nick = request.getParameter("nick");
	//HttpSession 객체에 답는다. (session 영역에 담는다)
	session.setAttribute("nick", nick);
	session.setMaxInactiveInterval(60*60*24*7);//(60초 1시간 하루 일주일 session 생존시간)
	/*
		session 영역에 담은 데이터가 삭제되는 경우
		
		- 새로운 요청을 하지 않고 30분이 경과 했을때(default)
		- 웹 브라우저를 닫았을때
		- HttpSession 객체의 메소드를 이용해서 제거 했을때
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/save.jsp</title>
</head>
<body>
	<p><strong><%=nick %></strong> 이라는 닉네임을 기억 하겠습니다</p>
	<p>60*60*24*7초 동안 아무런 요청도 하지 않으면 방문기록이 삭제됩니다</p>
	<a href="../index.jsp">인덱스로 이동하기</a>
</body>
</html>