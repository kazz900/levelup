<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="currentPage" value="${ requestScope.currentPage }" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<c:import url="/WEB-INF/views/common/head-script.jsp"/>
<c:url var="imoveup" value="iupdate.do">
	<c:param name="iid" value="${ requestScope.inquiry.inquiryId }" />
	<c:param name="page" value="${ nowpage }" />
</c:url>

<c:url var="idel" value="idelete.do">
	<c:param name="iid" value="${ requestScope.inquiry.inquiryId }" />
	<c:param name="page" value="${ nowpage }" />
</c:url>

<c:url var="iins" value="iinsertans.do">
	<c:param name="iid" value="${ requestScope.inquiry.inquiryId }" />
	<c:param name="page" value="${ nowpage }" />
</c:url>
<script type="text/javascript">
function moveUpdatePage(){
	location.href = "${ imoveup }";
}
function requestDelete(){
	location.href = "${ idel }";
}

function createans(){
	location.href = "${ iins }"
}

function golist(){
	location.href="${pageContext.servletContext.contextPath}/uhelp.do"
}

</script>
<title>useritemlist.jsp</title>
</head>
<body>
<c:import url="/WEB-INF/views/user/userHeader.jsp"/>
<div class="container">
	
</div>
<c:import url="/WEB-INF/views/user/userFooter.jsp"/>
</body>
</html>