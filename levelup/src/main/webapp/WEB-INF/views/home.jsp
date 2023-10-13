<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Levelup Home</title>
<style type="text/css">
.container {
	display: flex;
	justify-content: center;
	align-items: center;
}

.child {
	text-align: center;
	max-width: 50%;
}

.inputfields{
	margin: 2.5px;
	width: 250px;
	height: 30px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="child">
			<h1>Levelup login</h1>
			<br>
			<form action="elogin.do" method="post">
				<input type="text" class="inputfields" placeholder="아이디 입력"><br> 
				<input type="password" class="inputfields" placeholder="비밀번호 입력"><br>
				<input type="submit" class="inputfields" value="로그인">
			</form>
		</div>
	</div>
</body>
</html>
