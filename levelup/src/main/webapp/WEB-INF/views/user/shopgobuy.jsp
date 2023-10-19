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
<c:import url="/WEB-INF/views/user/userHeader.jsp"/>
testsuccess
<br>
<p>${ sessionScope.loginUser.userId }</p>
<br>
<p>Item id: ${ requestScope.item.itemId }</p>
<br>
<c:import url="/WEB-INF/views/user/userFooter.jsp"/>
</body>
</html>