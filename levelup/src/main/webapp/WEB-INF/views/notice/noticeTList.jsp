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
			<div class="container-fluid">

				<c:import url="/WEB-INF/views/common/page-title.jsp" />
				<!-- 여기서부터 내용 작성 -->
				<h1>팀 공지사항</h1>
				<h2>
					##Page##
					<%=session.getAttribute("Page")%></h2>
				<h2>
					##listPage##
					<%=session.getAttribute("listPage")%></h2>
				<h2>
					##teamID##
					<%=session.getAttribute("teamId")%></h2>
				<h2>
					##departmentId##
					<%=session.getAttribute("departmentId")%></h2>

				<div class="row">
					<div class="col-12">


						<!-- Right Sidebar -->
						<div class="email-rightbar mb-3">

							<div class="card">
								<%-- 제목 검색 폼 --%>
								<form id="titleform" class="sform" action="nsearchTitle.do"
									method="get">
									<input type="hidden" name="action" value="title"> <input
										type="hidden" name="limit" value="${ currentLimit }">
									<input type="hidden" name="teamId" value="${ teamId }">
									<input type="hidden" name="departmentId"
										value="${ departmentId }">

									<fieldset>
										<a>제목 검색</a> <input type="search" name="keyword" size="50">
										&nbsp; <input type="submit" value="검색">
									</fieldset>
								</form>
								<ul class="message-list">


									<c:forEach items="${requestScope.tlist}" var="n"
										varStatus="loop">
										<li>
											<div class="col-mail col-mail-1">
												<div class="checkbox-wrapper-mail">
													<input type="checkbox" id="chk${loop.index + 1}"> <label
														for="chk${loop.index + 1}" class="toggle"></label>
												</div>
												<a
													href="${ pageContext.servletContext.contextPath }/ndetail.do?noticeId=${ n.noticeId }"
													class="title">${n.editDate}</a><span
													class="star-toggle far fa-star"></span>
											</div>
											<div class="col-mail col-mail-2">
												<a
													href="${ pageContext.servletContext.contextPath }/ndetail.do?noticeId=${ n.noticeId }"
													class="subject">${n.noticeTitle}</a>
												<div class="date">${n.employeeName}</div>
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

			<!-- Modal -->
			<div class="modal fade" id="composemodal" tabindex="-1" role="dialog"
				aria-labelledby="composemodalTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="composemodalTitle">New Message</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
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
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">
								Send <i class="fab fa-telegram-plane ms-1"></i>
							</button>
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
	<c:import url="/WEB-INF/views/common/footer.jsp" />
	</div>
	<!-- main-content -->


	<script src="resources/libs/tinymce/tinymce.min.js"></script>

	<!-- email editor init -->
	<script src="resources/js/pages/email-editor.init.js"></script>
	<%-- 페이징 처리 뷰 포함 처리 --%>



</body>
</html>

