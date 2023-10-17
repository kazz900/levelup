<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="/WEB-INF/views/common/head-script.jsp"/>
<title>userMain</title>
<c:url var="gouloginpage" value="gouloginpage.do" />


</head>
<body>

	<c:import url="/WEB-INF/views/user/userHeader.jsp"/>

	<section class="hero">
		<div class="container">
			<c:if test="${ empty sessionScope.loginUser }">
				<div class="umainloginbox">
					<div class="gamestartbox">Game start</div>
					<div class="uloginbox" onclick="gouloginpage()">로그인하세요</div>
				</div>
			</c:if>
			<c:if test="${ !empty sessionScope.loginUser }">
				<div class="umainloginbox">
					<div class="gamestartbox">Game start</div>
					<hr>
					<div class="uloginbox" onclick="goumyinfopage()">
						${loginUser.userId} 님 방문을 환영합니다.
						<br>
						<br>
						<br>
						
						<a href="logout.do">로그아웃</a>
					</div>
				</div>
			</c:if>
		</div>
	</section>

	<section class="featured-games">
		<div class="container">
			<h2>event cash shop</h2>
			<div class="game-card">
				<img src="#" alt="item 1">
				<h3>item Title 1</h3>
				<p>Explore a fantastic world in this epic adventure.</p>
				<a href="game1.jsp" class="btn btn-secondary">구매하기</a>
			</div>
			<div class="game-card">
				<img src="#" alt="item 2">
				<h3>item Title 2</h3>
				<p>Compete with friends in this exciting multiplayer game.</p>
				<a href="game2.jsp" class="btn btn-secondary">구매하기</a>
			</div>
			<div class="game-card">
				<img src="#" alt="item 3">
				<h3>item Title 3</h3>
				<p>Compete with friends in this exciting multiplayer game.</p>
				<a href="game2.jsp" class="btn btn-secondary">구매하기</a>
			</div>
			<!-- Add more featured games here -->
		</div>
	</section>
<c:import url="/WEB-INF/views/user/userFooter.jsp"/>

	<script type="text/javascript">
function gouloginpage(){
    location.href = "${gouloginpage}";
}
</script>
</body>
</html>