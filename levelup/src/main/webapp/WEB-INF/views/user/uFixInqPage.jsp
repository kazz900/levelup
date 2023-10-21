<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="currentPage" value="${ requestScope.currentPage }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user Inquiry FixPage</title>
<script type="text/javascript">

function goback(){
	location.href = "${pageContext.servletContext.contextPath}/uuidetail.do?page=${ param.page}&iid=${ requestScope.inquiry.inquiryId }&userId=${loginUser.userId}";
}
</script>
</head>
<body>
<c:import url="/WEB-INF/views/user/userHeader.jsp"/>
<div class="container">
	<div class="userinquiryback">
		<div class="card-body">
		<h3>문의 수정하기</h3>
		<br><br>
			<div class="d-flex">
			
				<div class="flex-grow-1 overflow-hidden">
					<div class="alingg">
						<h5 class="text-truncate font-size-15" style="">문의 제목 : </h5>
						<input type="text" name="inquiryTitle" value="${ requestScope.inquiry.inquiryTitle }">
						<input type="hidden" name="inquiryId" value="${ requestScope.inquiry.inquiryId }">
						<input type="hidden" name="userId" value="${ loginUser.userId }">
						<input type="hidden" name="page" value="${ page }">
					</div>
					<br>
					<p class="text-muted">문의 ID : ${ requestScope.inquiry.inquiryId }</p>
				</div>
			</div>
						<h5 class="font-size-15 mt-4">첨부파일 :</h5>
			<c:if test="${ !empty requestScope.inquiry.attachmentFileName }">
				<c:url var="idown" value="ifdown.do">
					<c:param name="file" value="${ requestScope.inquiry.attachmentFileName }" />												
				</c:url>
			<td>
				<h5 class="font-size-14 mb-1">
					
			   <c:set var="filename" value="${fn:split(requestScope.inquiry.attachmentFileName, '#')[1]}" />
			   <a href="${idown}" class="text-dark">${filename}</a> &nbsp; <a href="${ idown }" class="text-dark"><i class="bx bx-download h3 m-0"></i></a>
				</h5>
				

			</td>
			</c:if>
			<c:if test="${ empty requestScope.inquiry.attachmentFileName }">
			첨부파일 없음
			</c:if>
			<h5 class="font-size-15 mt-4">문의 내용 :</h5>
			<textarea rows="5" cols="50" name="inquiryContent">${ requestScope.inquiry.inquiryContent }</textarea>
	
	
			<div class="row task-dates">
				<div class="col-sm-4 col-6">
					<div class="mt-4">
						<h5 class="font-size-14">
							<i class="bx bx-calendar me-1 text-primary"></i> 문의 날짜
						</h5>
						<p class="text-muted mb-0"><fmt:formatDate value="${ requestScope.inquiry.editDate }" pattern="yyyy-MM-dd HH:mm:ss" /></p>
					</div>
				</div>
	
				<div class="col-sm-4 col-6">
					<div class="mt-4">
						<h5 class="font-size-14">
							<i class="bx bx-calendar-check me-1 text-primary"></i> 문의 유형
						</h5>
						<p class="text-muted mb-0">
							<c:if test="${ requestScope.inquiry.inquiryType eq '1' }"> 환불문의 </c:if>
							<c:if test="${ requestScope.inquiry.inquiryType eq '2' }"> 게임문의 </c:if>
							<c:if test="${ requestScope.inquiry.inquiryType eq '3' }"> 기타문의 </c:if>
						</p>
					</div>
				</div>
				<div class="col-sm-4 col-6">
					<div class="mt-4">
						<h5 class="font-size-14">
							<i class="bx bx-calendar-check me-1 text-primary"></i> 유저 ID
						</h5>
						<p class="text-muted mb-0">${ requestScope.inquiry.userId }</p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-4 col-6">
			<button type="button" class="btn" onclick="fixdo();">수정하기</button> &nbsp;
			<button type="button" class="btn" onclick="goback();">돌아가기</button>
		</div>
	</div>
</div>
<c:import url="/WEB-INF/views/user/userFooter.jsp"/>
</body>
</html>