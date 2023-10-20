<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/common/head-script.jsp"/>
<link href="resources/css/plus.min.css" id="plus-style" rel="stylesheet" type="text/css" />
<style type="text/css">
.container {
    width: 100%; /* 페이지 폭을 100%로 설정 */
    max-width: 1200px; /* 페이지 폭의 최대 크기를 지정 */
    margin: 0 auto; /* 페이지 내용을 수평으로 가운데 정렬 */
    padding: 20px; /* 페이지 주위의 패딩을 설정 */
    /* 기타 스타일 속성을 추가할 수 있습니다 */
}
</style>

</head>

<body>
	<header class="classshowdow">
		<nav class="container">
				<a href="${ pageContext.servletContext.contextPath }/umain.do"><img
					src="/levelup/resources/images/users/umainlogo.jpg"
					class="umainlogo" alt="Game Logo"></a>
				<ul class="uheaderul">
					<li><a href="${ pageContext.servletContext.contextPath }/umain.do">Home</a></li>
					<li><a href="${ pageContext.servletContext.contextPath }/ushop.do">shop</a></li>
					<li><a href="${ pageContext.servletContext.contextPath }/uitem.do">items</a></li>
					<li><a href="${ pageContext.servletContext.contextPath }/uhelp.do">고객지원</a></li>
					<li><a href="${ pageContext.servletContext.contextPath }/uabout.do">About Us</a></li>
					<li><a href="${ pageContext.servletContext.contextPath }/ukeyin.do">결제취소연습</a></li>
				</ul>
		</nav>
	</header>
</body>
</html>