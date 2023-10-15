<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="nowpage" value="1" />
<c:if test="${ !empty requestScope.currentPage }">
	<c:set var="nowpage" value="${ requestScope.currentPage }" />
</c:if>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>levelup</title>
</head>
<body>
<h1 align="center">문의 내역 목록</h1>
<br>

<!-- 목록 테이블  -->
<table align="center" border="1" cellspacing="0" width="700">
	<tr>
		<th>문의 ID</th>
		<th>문의 제목</th>
		<th>문의 타입</th>
		<th>유저 ID</th>
		<th>문의 날짜</th>
		<th>답변 상태</th>
	</tr>
	<c:forEach items="${ requesrScope.list }" var="iq">
	<tr>
		<!-- 문의 ID -->
		<td align="center"> ${ iq.inquiryId }</td>
		<!-- 문의 제목 -->
		<td>
		<c:url var="iqd" value="idetail.do">
			<c:param name="iqId" value="${ iq.inquiryId }" />
			<c:param name="page" value="${ nowpage }" />
		</c:url>
		<a href="${ iqd }"> ${ iq.inquiryTitle }</a>
		</td>
		<!-- 문의 타입 -->
		<td align="center"> ${ iq.inquiryType }</td>
		<!-- 유저 계정 ID -->
		<td align="center"> ${ iq.userId }</td>
		<!-- 문의 등록 날짜 -->
		<td align="center"><fmt:formatDate value="${ iq.editDate }" pattern="yyyy-MM-dd"/></td>
		<!-- 답변 상태 -->
		<td align="center"> ${ iq.answerStatus }</td>
	</tr>
	</c:forEach>

</table>
<br>
</body>
</html>