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
	href="./resources/css/empListView.css">
<script type="text/javascript"
	src="/levelup/resources/js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">

</script>
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

				<!-- 여기서부터 내용 작성 -->
				<div class="container">

					<!-- 타입별 검색 1. 전제, 환불문의, 게임문의, 기타문의 -->
					<!-- 타입별 검색 내 keyword  종류 : 유저ID, 제목, 날짜 -->
					<form action="charsearch.do" method="post">
						<div class="container">
							<div class="inputs">
								<input type="hidden" name="action" value="char_id">
								<label>Char ID</label>
								<input id="keywordInputbox" type="search" name="keyword" required>
								<input id="searchSubmitButton" type="submit" value="SEARCH">
							</div>
						</div>
					</form>
					<!-- 캐릭터 정보 테이블 -->
					<p><b>USER'S CHARACTER INFO</b></p>
					<table class="rwd-table">
						<tbody>
							<tr>
								<th>Char ID</th>
								<th>Char Name</th>
								<th>Level</th>
								<th>Job Level</th>
								<th>Zeny</th>
								<th>Str</th>
								<th>Agi</th>
								<th>Vit</th>
								<th>Int</th>
								<th>Dex</th>
								<th>Luk</th>
							</tr>
								<c:if test="${ !empty requestScope.char_ }">
										<tr>
											<!-- Char ID COLUMN -->
											<td data-th="Char ID">${ char_.charId }</a></td>
											<!-- Char Name COLUMN -->
											<td data-th="Char Name">${ char_.name }</td>
											<!-- Level COLUMN -->
											<td data-th="Level">${ char_.baseLevel }</td>
											<!-- Job Level COLUMN -->
											<td data-th="Job Level">${ char_.jobLevel }</td>
											<!-- Zeny COLUMN -->
											<td data-th="Zeny">${ char_.zeny }</td>
											<!-- Str COLUMN -->
											<td data-th="Str">${ char_.str }</td>
											<!-- Agi COLUMN -->
											<td data-th="Agi">${ char_.agi }</td>
											<!-- Vit COLUMN -->
											<td data-th="Vit">${ char_.vit }</td>
											<!-- Int COLUMN -->
											<td data-th="Int">${ char_.int_ }</td>
											<!-- Dex COLUMN -->
											<td data-th="Dex">${ char_.dex }</td>
											<!-- Luk COLUMN -->
											<td data-th="Luk">${ char_.luk }</td>
										</tr>
								</c:if>
						</tbody>
					</table>
					<c:if test="${ !empty requestScope.message1 }">
						<p><b>${ requestScope.message1 }</b></p>>
					</c:if>
					<br>
					<!-- 캐릭터의 인벤토리 테이블 -->
					<p><b> CHARACTER'S INVENTORY INFO </b></p>
					<table class="rwd-table">
						<tbody>
							<tr>
								<th>Item ID</th>
								<th>Item GUID</th>
								<th>Amount</th>
								<th>Action</th>
							</tr>
								<c:if test="${ !empty list }">
									<c:forEach items="${ requestScope.list }" var="i">
										<tr>
											<!-- Item ID COLUMN -->
											<td data-th="Item ID">${ i.nameId }</a></td>
											<!-- Item GUID COLUMN -->
											<td data-th="Item GUID">${ i.uniqueId }</td>
											<!-- Amount COLUMN -->
											<td data-th="Amount">${ i.amount }</td>
											<!-- Action COLUMN -->
											<!-- TODO: CONNECT TO CASE WRITE FORM -->
											<td data-th="Action"><a href="#" class="btn btn-primary waves-effect waves-light">Write Case</a></td>
										</tr>
									</c:forEach>
								</c:if>
						</tbody>
					</table>
					<c:if test="${ !empty requestScope.message2 }">
						<p><b>${ requestScope.message2 }</b></p>>
					</c:if>
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

