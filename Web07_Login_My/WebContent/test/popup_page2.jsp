<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/popup_page.jsp</title>
<style>
	body{
		background-color:yellow;
	}
</style>
</head>
<body>
<h1>팝업된 페이지 입니다.</h1>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas perspiciatis laudantium impedit architecto obcaecati veniam enim omnis temporibus corporis unde assumenda eius nostrum quasi. Quae vero corrupti blanditiis animi saepe.</p>
<form action="popup_save.jsp" method="post">
	<label>
		<input type="checkbox" name="canPopup" value="no"/>
		1분 동안 팝업 띄우지 않기
	</label>
	<button type="submit">닫기</button>
</form>
</body>
</html>