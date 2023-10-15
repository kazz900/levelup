<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="currentPage" value="${ requestScope.currentPage }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>level up</title>
<style type="text/css">
.tableFixHead{
overflow-y: auto; /* make the table scrollable if height is more than 200 px */
height: 200px; /* gives an initial height of 200px to the table */
}

.tableFixHead thead th {
position: sticky; /* make the table heads sticky */
top: 0px;  /* table head will be placed from the top of the table and sticks to it */
}

table {
border-collapes: collapse;  /* table head will be placed from the top of the table and sticks to it */

}
</style>

<c:url var="answerf" value="iqanswerf.do">
	<c:param name="inquiryId" value="${ requestScope.inquiry.inquiryId }" />
	<c:param name="page" value="${ currentPage }" />
</c:url>

<c:url var="iqdelete" value="idelete.do">
	<c:param name="inquiryId" value="${ requestScope.inquiry.inquiryId }" />
	<c:param name="attachmentFileName" value="${ requestScope.inquiry.attachmentFileName }" />
</c:url>

<script type="text/javascript">
function requestAnswer(){
	//답변 작성 요청
	location.href = "${ answerf }";
}

function requestDelete(){
	//해당 문의글 삭제 요청
	location.href = "${ iqdelete }";
}
</script>
</head>
<body>

<h1 align="center">${ requestScope.inquiry.inquiryId } 문의글 상세 내용</h1>
<br>
<div class="tableFixHead">
<table align="center" width="500" border="1" cellspacing="0" cellpadding="5">
	<thead>
	<tr>
		<th>${ requestScope.inquiry.inquiryTitle }제목</th>
		<th>${ requestScope.inquiry.userId }유저ID</th>
		<th>${ requestScope.inquiry.editDate }문의날짜</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td rowspan="5" colspan="3">${ requestScope.inquiry.inquiryContent } 문의 내용</td>
	</tr>
	<tr>
		<td>
			<input type="button" value="문의글 삭제" onclick="javascript:location.href='${iqdelete}'">
		</td>
	</tr>
	</tbody>
</table>
</div>


<div class="tableFixHead">
<form action="iinsertans.do" method="post">
<table align="center" width="500" border="1" cellspacing="0" cellpadding="5">
	<thead>
	<tr>
		<th>답변내용</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td><textarea name="inquiryAnswerContent">답변내용</textarea></td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="답변달기"> &nbsp;
			<input type="reset" value="작성취소"> &nbsp;
			<input type="button" value="목록으로">
		</td>
	</tr>
	</tbody>
</table>

</form>
</div>



<div class="tableFixHead">
<table align="center" width="500" border="1" cellspacing="0" cellpadding="5">
	<thead>
	<tr>
		<th colspan="3">${ requestScope.inquiry.userId } 지난 문의 내역</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach items="${ requesrScope.list }" var="iq">
	<tr>
		<!-- 문의 제목 -->
		<td>
		<c:url var="iqd" value="idetail.do">
			<c:param name="iqId" value="${ iq.inquiryId }" />
			<c:param name="page" value="${ nowpage }" />
		</c:url>
		<a href="${ iqd }"> ${ iq.inquiryTitle }</a>
		</td>
		<!-- 문의 등록 날짜 -->
		<td align="center"><fmt:formatDate value="${ iq.editDate }" pattern="yyyy-MM-dd"/></td>
		<!-- 답변 상태 -->
		<td align="center"> ${ iq.answerStatus }</td>
	</tr>
	</c:forEach>
	</tbody>
</table>
</div>


</body>
</html>