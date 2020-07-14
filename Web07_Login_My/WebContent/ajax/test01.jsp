<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/ajax/test01.jsp</title>
</head>
<body>
<button id="getBtn">요청하기</button>
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<script>
	// id 가 getBtn 인 곳에 "click" 이벤트가 일어났을때 호출되는 함수 등록
	$("#getBtn").on("click",function(){
		//jquery 의 기능을 이용해서 ajax 요청하기
		$.ajax({
			method:"GET", //요청방식
			url:"${pageContext.request.contextPath }/ajax/getmsg.jsp",  //요청경로(현재는 절대경로)
			data:"num=1&name=kimgura",	  // 요청 파라미터(없으면 안써도 됨)
			success:function(responseDate){  //결과를 받아올 함수 responseData는 임의의 이름임
				console.log(responseDate);
			}
		});
	});
</script>
</body>
</html>