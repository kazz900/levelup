<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<style type="text/css">
@import 'https://fonts.googleapis.com/css?family=Open+Sans:600,700';

* {
	font-family: 'Open Sans', sans-serif;
}

.rwd-table {
	margin: auto;
	min-width: 300px;
	max-width: 100%;
	border-collapse: collapse;
}

.rwd-table tr:first-child {
	border-top: none;
	background: #284258;
	color: #fff;
}

.rwd-table tr {
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	background-color: #f5f9fc;
}

.rwd-table tr:nth-child(odd):not(:first-child) {
	background-color: #ebf3f9;
}

.rwd-table th {
	display: none;
}

.rwd-table td {
	display: block;
}

.rwd-table td:first-child {
	margin-top: .5em;
}

.rwd-table td:last-child {
	margin-bottom: .5em;
}

.rwd-table td:before {
	content: attr(data-th) ": ";
	font-weight: bold;
	width: 120px;
	display: inline-block;
	color: #000;
}

.rwd-table th, .rwd-table td {
	text-align: left;
}

.rwd-table {
	color: #333;
	border-radius: .4em;
	overflow: hidden;
}

.rwd-table tr {
	border-color: #bfbfbf;
}

.rwd-table th, .rwd-table td {
	padding: .5em 1em;
}

@media screen and (max-width: 601px) {
	.rwd-table tr:nth-child(2) {
		border-top: none;
	}
}

@media screen and (min-width: 600px) {
	.rwd-table tr:hover:not(:first-child) {
		background-color: #d8e7f3;
	}
	.rwd-table td:before {
		display: none;
	}
	.rwd-table th, .rwd-table td {
		display: table-cell;
		padding: .25em .5em;
	}
	.rwd-table th:first-child, .rwd-table td:first-child {
		padding-left: 0;
	}
	.rwd-table th:last-child, .rwd-table td:last-child {
		padding-right: 0;
	}
	.rwd-table th, .rwd-table td {
		padding: 1em !important;
	}
}

/* THE END OF THE IMPORTANT STUFF */

/* Basic Styling */
h1 {
	text-align: center;
	font-size: 2.4em;
	color: #f2f2f2;
}

.container {
	display: block;
	text-align: center;
}

h3 {
	display: inline-block;
	position: relative;
	text-align: center;
	font-size: 1.5em;
	color: #cecece;
}

h3:before {
	content: "\25C0";
	position: absolute;
	left: -50px;
	-webkit-animation: leftRight 2s linear infinite;
	animation: leftRight 2s linear infinite;
}

h3:after {
	content: "\25b6";
	position: absolute;
	right: -50px;
	-webkit-animation: leftRight 2s linear infinite reverse;
	animation: leftRight 2s linear infinite reverse;
}

@
-webkit-keyframes leftRight { 0% {
	-webkit-transform: translateX(0)
}

25










%
{
-webkit-transform










:










translateX








(










-10px










)










}
75










%
{
-webkit-transform










:










translateX








(










10px










)










}
100










%
{
-webkit-transform










:










translateX








(










0










)










}
}
@
keyframes leftRight { 0% {
	transform: translateX(0)
}
25










%
{
transform










:










translateX








(










-10px










)










}
75










%
{
transform










:










translateX








(










10px










)










}
100










%
{
transform










:










translateX








(










0










)










}
}
</style>
<!-- 타이틀 -->
<c:import url="/WEB-INF/views/common/title-meta.jsp" />
<!-- 헤드 스크립트 -->
<c:import url="/WEB-INF/views/common/head-script.jsp" />

</head>
<body data-sidebar="dark" data-layout-mode="light">
	<!-- 내비게이션바, 사이드바 등등 -->
	<c:import url="/WEB-INF/views/common/layout.jsp" />

	<div class="main-content">
		<div class="page-content">
			<div class="container-fluid">

				<c:import url="/WEB-INF/views/common/page-title.jsp" />

				<c:set var="nowpage" value="1" />
				<c:if test="${ !empty requestScope.currentPage }">
					<c:set var="nowpage" value="${ requestScope.currentPage }" />
				</c:if>

				<!-- 여기서부터 내용 작성 -->
				<div class="container">
					<h1>유저 문의 목록</h1>
					<table class="rwd-table">
						<tbody>
							<tr>
								<th>Question Title</th>
								<th>User ID</th>
								<th>Type</th>
								<th>Date</th>
								<th>Answer</th>
							</tr>
							<c:forEach items="${ requestScope.inquiryList }" var="i">
								<tr>
									<td data-th="Question Title">${ i.inquiryTitle }</td>
									<td data-th="User ID">${ i.userId }</td>
									<c:if test="${ i.inquiryType eq '1' }">
										<td data-th="Type">환불문의</td>
									</c:if>
									<td data-th="Date"><fmt:formatDate value="${ i.editDate }" pattern="yyyy-MM-dd" /></td>
									<c:if test="${ i.answerStatus eq 'Y' }">
										<td data-th="Answer">답변완료</td>
									</c:if>
									<c:if test="${ i.answerStatus eq 'N' }">
										<td data-th="Answer">미답변</td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<br>

					<%-- 페이징 처리 뷰 포함 처리 --%>
					<%-- <%@ include file="../common/pagingView.jsp" %> --%>
					<c:import url="/WEB-INF/views/common/pagingView.jsp" />
				</div>

				<!-- container-fluid -->
			</div>
			<!-- page-content -->
		</div>
		<c:import url="/WEB-INF/views/common/footer.jsp" />
	</div>
	<!-- main-content -->

</body>
</html>

