<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insertform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1>회원 정보 추가 폼 입니다.</h1>
	<form action="insert.jsp" method="post">
	  <div class="form-row">
	    <div class="col">
	      <input type="text" name="name" id="name" class="form-control" placeholder="이름">
	    </div>
	    <div class="col">
	      <input type="text" name="addr" id="addr" class="form-control" placeholder="주소">
	    </div>
	    <div class="col">
	    	<button type="submit" class="btn btn-primary">추가</button>
	    	<button type="reset" class="btn btn-danger">취소</button>
	    </div>
	  </div>
	</form>

</div>
</body>
</html>