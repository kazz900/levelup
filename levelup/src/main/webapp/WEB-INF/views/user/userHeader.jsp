<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/common/head-script.jsp"/>
</head>

<body>
	<header>
		<nav>
			<div class="container">
				<a href="${ pageContext.servletContext.contextPath }/umain.do"><img
					src="/levelup/resources/images/users/umainlogo.jpg"
					class="umainlogo" alt="Game Logo"></a>
				<ul class="uheaderul">
					<li><a href="${ pageContext.servletContext.contextPath }/umain.do">Home</a></li>
					<li><a href="${ pageContext.servletContext.contextPath }/ushop.do">shop</a></li>
					<li><a href="#">items</a></li>
					<li><a href="${ pageContext.servletContext.contextPath }/uhelp.do">고객지원</a></li>
					<li><a href="#">About Us</a></li>
				</ul>
			</div>
		</nav>
	</header>
</body>
</html>