<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/play.jsp</title>
</head>
<body>
<%
	//session 영역에 "nick" 이라는 키값으로 저장된 String type 읽어오기
	String nick=(String)session.getAttribute("nick");
	if(nick==null){
		%>
			<script>
				alert("닉네임부터 설정해주세요")
				location.href="${pageContext.request.contextPath }/index.jsp";
			</script>
		<%
	}

%>
<p><strong><%=nick %></strong> 님 놀러 오셨네요</p>
<p> 신나게 놀아 보아요</p>
<a href="../index.jsp">인덱스로 가기</a>
</body>
</html>