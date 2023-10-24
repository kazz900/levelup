<%@page import="com.gs.levelup.employee.model.vo.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
<c:import url="/WEB-INF/views/common/title-meta.jsp"/>
<!-- 헤드 스크립트 -->
<c:import url="/WEB-INF/views/common/head-script.jsp"/>

</head>
<body data-sidebar="dark" data-layout-mode="light">
<!-- 내비게이션바, 사이드바 등등 -->
<c:import url="/WEB-INF/views/common/layout.jsp"/>

<div class="main-content">
	<div class="page-content">
		<div class="container-fluid">

<c:import url="/WEB-INF/views/common/page-title.jsp"/>
<!-- 여기서부터 내용 작성 -->
<h1>부서 공지사항</h1>
<h2>##Page##   <%= session.getAttribute("Page") %></h2>
<h2>##listPage##   <%= session.getAttribute("listPage") %></h2>
<h2>##teamID##   <%= session.getAttribute("teamId") %></h2>
<h2>##departmentId##   <%= session.getAttribute("departmentId") %></h2>

					<div class="row">
						<div class="col-12">


							<!-- Right Sidebar -->
							<div class="email-rightbar mb-3">

								<div class="card">
									<div class="btn-toolbar p-3" role="toolbar">
										<div class="btn-group me-2 mb-2 mb-sm-0">
											<button type="button" class="btn btn-primary waves-light waves-effect"><i
													class="fa fa-inbox"></i></button>
											<button type="button" class="btn btn-primary waves-light waves-effect"><i
													class="fa fa-exclamation-circle"></i></button>
											<button type="button" class="btn btn-primary waves-light waves-effect"><i
													class="far fa-trash-alt"></i></button>
										</div>
										<div class="btn-group me-2 mb-2 mb-sm-0">
											<button type="button" class="btn btn-primary waves-light waves-effect"
												data-bs-toggle="dropdown" aria-expanded="false">
												<i class="fa fa-folder"></i> <i class="mdi mdi-chevron-down ms-1"></i>
											</button>
											<div class="dropdown-menu">
												<a class="dropdown-item" href="#">Updates</a>
												<a class="dropdown-item" href="#">Social</a>
												<a class="dropdown-item" href="#">Team Manage</a>
											</div>
										</div>
										<div class="btn-group me-2 mb-2 mb-sm-0">
											<button type="button" class="btn btn-primary waves-light waves-effect"
												data-bs-toggle="dropdown" aria-expanded="false">
												<i class="fa fa-tag"></i> <i class="mdi mdi-chevron-down ms-1"></i>
											</button>
											<div class="dropdown-menu">
												<a class="dropdown-item" href="#">Updates</a>
												<a class="dropdown-item" href="#">Social</a>
												<a class="dropdown-item" href="#">Team Manage</a>
											</div>
										</div>
										

										<div class="btn-group me-2 mb-2 mb-sm-0">
											<button type="button" class="btn btn-primary waves-light waves-effect"
												data-bs-toggle="dropdown" aria-expanded="false">
												More <i class="mdi mdi-dots-vertical ms-2"></i>
											</button>
											<div class="dropdown-menu">
												<%-- 항목별 검색 기능 추가 --%>
<fieldset id="ss">
	<legend>검색할 항목을 선택하세요.</legend>
	<input type="radio" name="item" id="title"> 제목 &nbsp;
	<input type="radio" name="item" id="content"> 내용 &nbsp;	
	<input type="radio" name="item" id="date"> 등록날짜 &nbsp;	
	
</fieldset>
<br>

<%-- 검색 항목별 값 입력 전송용 폼 만들기 --%>
<%-- 제목 검색 폼 --%>
<form id="titleform" class="sform" action="nsearchTitle.do" method="get">
	<input type="hidden" name="action" value="title">
	<input type="hidden" name="limit" value="${ currentLimit }">	
	<input type="hidden" name="teamId" value="${ teamId }">	
	<input type="hidden" name="departmentId" value="${ departmentId }">	
	
<fieldset>
	<legend>검색할 제목을 입력하세요.</legend>
	<input type="search" name="keyword" size="50"> &nbsp;
	<input type="submit" value="검색">
</fieldset>
</form>

<%-- 내용 검색 폼 --%>
<form id="contentform" class="sform" action="nsearchContent.do" method="post">
	<input type="hidden" name="action" value="content">	
	<input type="hidden" name="limit" value="${ currentLimit }">
<fieldset>
	<legend>검색할 내용을 입력하세요.</legend>
	<input type="search" name="keyword" size="50"> &nbsp;
	<input type="submit" value="검색">
</fieldset>
</form>

<%-- 등록날짜 검색 폼 --%>
<form id="dateform" class="sform" action="nsearchDate.do" method="post">
	<input type="hidden" name="action" value="date">	
	<input type="hidden" name="limit" value="${ currentLimit }">
<fieldset>
	<legend>검색할 등록날짜를 선택하세요.</legend>
	<input type="date" name="begin"> ~ <input type="date" name="end"> &nbsp;
	<input type="submit" value="검색">
</fieldset>
</form>
											</div>
										</div>
									</div>
									<ul class="message-list">
									    <c:forEach items="${requestScope.dlist}" var="n" varStatus="loop">
									        <li>
									            <div class="col-mail col-mail-1">
									                <div class="checkbox-wrapper-mail">
									                    <input type="checkbox" id="chk${loop.index + 1}">
									                    <label for="chk${loop.index + 1}" class="toggle"></label>
									                </div>
									                <a href="${ pageContext.servletContext.contextPath }/ndetail.do?noticeId=${ n.noticeId }" class="title">${n.editDate}</a><span class="star-toggle far fa-star"></span>
									            </div>
									            <div class="col-mail col-mail-2">
									                <a href="${ pageContext.servletContext.contextPath }/ndetail.do?noticeId=${ n.noticeId }" class="subject">${n.noticeTitle}</a>
									                <div class="date">${n.employeeName}</div>
									                <div class="date">${n.readCount}</div>
									            </div>
									        </li>
									    </c:forEach>
									</ul>


								</div><!-- card -->

								<div class="row">
									<div class="col-7">
										<c:import url="/WEB-INF/views/common/pagingView.jsp" />
									</div>
									<div class="col-5">
										<div class="btn-group float-end">
											<c:if test="${loginEmployee.rankId eq 'sman' || loginEmployee.rankId eq 'jdirec' || loginEmployee.rankId eq 'direc' || loginEmployee.rankId eq 'ceo'}">
												<button onclick="javascript:location.href='${ pageContext.servletContext.contextPath }/nwrite.do';">공지글 등록</button>
											</c:if>
										</div>
									</div>
								</div>

							</div> <!-- end Col-9 -->

						</div>

					</div>
					<!--  end row -->
				</div>
	
			<!-- Modal -->
			<div class="modal fade" id="composemodal" tabindex="-1" role="dialog" aria-labelledby="composemodalTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="composemodalTitle">New Message</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<div>
								<div class="mb-3">
									<input type="email" class="form-control" placeholder="To">
								</div>

								<div class="mb-3">
									<input type="text" class="form-control" placeholder="Subject">
								</div>
								<div class="mb-3">
									<form method="post">
										<textarea id="email-editor" name="area"></textarea>
									</form>
								</div>

							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Send <i
									class="fab fa-telegram-plane ms-1"></i></button>
						</div>
					</div>
				</div>
			</div>
			<!-- end modal -->


	 	<!-- container-fluid -->			
		</div>
	<!-- page-content -->		
	</div>
<!-- 푸터(자바스크립트 로딩) -->
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</div> <!-- main-content -->


        <script src="resources/libs/tinymce/tinymce.min.js"></script>

        <!-- email editor init -->
        <script src="resources/js/pages/email-editor.init.js"></script>
<%-- 페이징 처리 뷰 포함 처리 --%>



</body>
</html>

