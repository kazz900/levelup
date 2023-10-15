<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="./resources/css/empInquiryListView.css">
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

					<!-- 타입별 검색 1. 전제, 환불문의, 게임문의, 기타문의 -->
					<!-- 타입별 검색 내 keyword  종류 : 유저ID, 제목, 날짜 -->
					<form action="isearch">
						<div class="container">
							<div class="select">
								<select>
									<option name="itype" value="0" selected>문의구분</option>
									<option name="itype" value="1">환불문의</option>
									<option name="itype" value="2">게임문의</option>
									<option name="itype" value="3">기타문의</option>
								</select>
							</div>
						</div>
					</form>
					<!-- 문의 테이블 -->
					<table class="rwd-table">
						<tbody>
							<tr>
								<th>Question Title</th>
								<th>User ID</th>
								<th>Type</th>
								<th>Date</th>
								<th>Status</th>
							</tr>
							<c:forEach items="${ requestScope.inquiryList }" var="i">
								<tr>
									<td data-th="Question Title"><a class="ititle"
										href="/levelup/idetail.do?iid=${ i.inquiryId }">${ i.inquiryTitle }</a></td>
									<td data-th="User ID">${ i.userId }</td>
									<c:if test="${ i.inquiryType eq '1' }">
										<td data-th="Type">환불문의</td>
									</c:if>
									<c:if test="${ i.inquiryType eq '2' }">
										<td data-th="Type">게임문의</td>
									</c:if>
									<c:if test="${ i.inquiryType eq '3' }">
										<td data-th="Type">기타문의</td>
									</c:if>
									<td data-th="Date"><fmt:formatDate value="${ i.editDate }"
											pattern="yyyy-MM-dd" /></td>
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

