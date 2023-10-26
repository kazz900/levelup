<%@page import="com.gs.levelup.employee.model.vo.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="currentLimit" value="${ requestScope.limit }" />
<c:set var="nowpage" value="1" />
<c:if test="${ !empty requestScope.currentPage }">
	<c:set var="nowpage" value="${ requestScope.currentPage }" />
</c:if>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
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

				<c:import url="/WEB-INF/views/common/page-title.jsp" />
				<!-- 여기서부터 내용 작성 -->

				<div class="row">
					<div class="col-12">


						<!-- Right Sidebar -->
						<div class="email-rightbar mb-3">

							<div class="card">
    <%-- 제목 검색 폼 --%>
    <form id="titleform" class="sform" action="nsearchTitle.do" method="get">
        <input type="hidden" name="action" value="title">
        <input type="hidden" name="limit" value="${currentLimit}">
        <input type="hidden" name="teamId" value="${teamId}">
        <input type="hidden" name="departmentId" value="${departmentId}">
        <fieldset>
            <label for="keyword">제목 검색</label>
            <input type="search" id="keyword" name="keyword" size="50">
            <input type="submit" value="검색">
        </fieldset>
    </form>
    
    <div class="row">
    <div class="col-2"><b>작성시간</b></div>
    <div class="col-8" style="text-align: left"><b>제목</b></div>
    <div class="col-2"><b>조회수</b></div>
	</div>
	
	
    
<ul class="message-list">
    <c:forEach items="${requestScope.list}" var="n" varStatus="loop">
        <li>
            <div class="col-mail ms-4">
                <a href="${pageContext.servletContext.contextPath}/ndetail.do?noticeId=${n.noticeId}" class="title">${n.editDate}</a>
            </div>
            <div class="col-mail-2">
                <a href="${pageContext.servletContext.contextPath}/ndetail.do?noticeId=${n.noticeId}" class="subject">${n.noticeTitle}</a>
                <div class="employee-name">${n.employeeName}</div>
                <div class="date">${n.readCount}</div>
            </div>
        </li>
    </c:forEach>
</ul>

</div>



							<!-- card -->

							<div class="row">
								<div class="col-7">

									<c:import url="/WEB-INF/views/common/pagingView.jsp" />
								</div>
								<div class="col-5">
									<div class="btn-group float-end">
										<c:if
											test="${loginEmployee.rankId eq 'sman' || loginEmployee.rankId eq 'jdirec' || loginEmployee.rankId eq 'direc' || loginEmployee.rankId eq 'ceo'}">
											<button
												onclick="javascript:location.href='${ pageContext.servletContext.contextPath }/nwrite.do';">공지글
												등록</button>
										</c:if>
									</div>
								</div>
							</div>

						</div>
						<!-- end Col-9 -->

					</div>

				</div>
				<!--  end row -->
			</div>

			

			<!-- container-fluid -->
		<!-- page-content -->
	</div>
	<!-- 푸터(자바스크립트 로딩) -->
	<c:import url="/WEB-INF/views/common/footer.jsp" />
	<!-- main-content -->


	<script src="resources/libs/tinymce/tinymce.min.js"></script>

	<!-- email editor init -->
	<script src="resources/js/pages/email-editor.init.js"></script>
	<%-- 페이징 처리 뷰 포함 처리 --%>



</body>
</html>

