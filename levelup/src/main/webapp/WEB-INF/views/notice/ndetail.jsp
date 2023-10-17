<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
												<a class="dropdown-item" href="#">Mark as Unread</a>
												<a class="dropdown-item" href="#">Mark as Important</a>
												<a class="dropdown-item" href="#">Add to Tasks</a>
												<a class="dropdown-item" href="#">Add Star</a>
												<a class="dropdown-item" href="#">Mute</a>
											</div>
										</div>
									</div>
									<ul class="message-list">
									        <li>
									            <div class="col-mail col-mail-1">
									                <div class="checkbox-wrapper-mail">
									                    <input type="checkbox" id="chk1">
									                    <label for="chk1" class="toggle"></label>
									                </div>
									                <a class="title">${notice.noticeTitle}</a><span class="star-toggle far fa-star"></span>
									            </div>
									            <div class="col-mail col-mail-2">
									                <a>${notice.noticeContent}</a>
									                <div class="date">${notice.readCount}</div>
									            </div>
									            
									        </li>
									</ul>
									
									<tr><th>첨부파일</th>
												 	<td>
												  		<%-- <% if(notice.getOriginalFilePath() != null){ %> --%>
												  		<c:if test="${ !empty notice.attachementFilename }">
												  			<c:url var="nfd" value="nfdown.do">
												  				<c:param name="ofile" value="${notice.attachementFilename }" />
												  				<c:param name="rfile" value="${notice.renameFilename }" />
												  			</c:url>
												  			<a href="${ nfd }">${notice.attachementFilename }</a>
												  		</c:if>
												  		<%-- <% }else{ %> --%>
												  			<c:if test="${ empty notice.attachementFilename }">&nbsp;	</c:if>
												  		<%-- <% } %> --%>
												   </td>
												</tr>

								</div><!-- card -->

								<div class="row">
									<div class="col-7">
										Showing 1 - 20 of 1,524
									</div>
									<div class="col-5">
										<div class="btn-group float-end">
											<button type="button" class="btn btn-sm btn-success waves-effect"><i
													class="fa fa-chevron-left"></i></button>
											<button type="button" class="btn btn-sm btn-success waves-effect"><i
													class="fa fa-chevron-right"></i></button>
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


</body>
</html>
