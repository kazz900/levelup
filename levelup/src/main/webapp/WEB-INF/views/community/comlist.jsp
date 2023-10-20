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
		<!-- Left sidebar -->
<!-- 
<div class="email-leftbar card">
	<button type="button" class="btn btn-danger btn-block waves-effect waves-light"
		data-bs-toggle="modal" data-bs-target="#composemodal">
		Compose
	</button>
	<div class="mail-list mt-4">
		<a href="javascript: void(0);" class="active"><i
				class="mdi mdi-email-outline me-2"></i> Inbox <span
				class="ms-1 float-end">(18)</span></a>
		<a href="javascript: void(0);"><i class="mdi mdi-star-outline me-2"></i>Starred</a>
		<a href="javascript: void(0);"><i
				class="mdi mdi-diamond-stone me-2"></i>Important</a>
		<a href="javascript: void(0);"><i class="mdi mdi-file-outline me-2"></i>Draft</a>
		<a href="javascript: void(0);"><i class="mdi mdi-email-check-outline me-2"></i>Sent
			Mail</a>
		<a href="javascript: void(0);"><i
				class="mdi mdi-trash-can-outline me-2"></i>Trash</a>
	</div>


	<h6 class="mt-4">Labels</h6>

	<div class="mail-list mt-1">
		<a href="javascript: void(0);"><span
				class="mdi mdi-arrow-right-drop-circle text-info float-end"></span>Theme
			Support</a>
		<a href="javascript: void(0);"><span
				class="mdi mdi-arrow-right-drop-circle text-warning float-end"></span>Freelance</a>
		<a href="javascript: void(0);"><span
				class="mdi mdi-arrow-right-drop-circle text-primary float-end"></span>Social</a>
		<a href="javascript: void(0);"><span
				class="mdi mdi-arrow-right-drop-circle text-danger float-end"></span>Friends</a>
		<a href="javascript: void(0);"><span
				class="mdi mdi-arrow-right-drop-circle text-success float-end"></span>Family</a>
	</div>

	<h6 class="mt-4">Chat</h6>

	<div class="mt-2">
		<a href="javascript: void(0);" class="d-flex">
			<div class="flex-shrink-0 me-3">
				<img class="rounded-circle" src="resources/images/users/avatar-2.jpg"
					alt="Generic placeholder image" height="36">
			</div>
			<div class="flex-grow-1 chat-user-box">
				<p class="user-title m-0">Scott Median</p>
				<p class="text-muted">Hello</p>
			</div>
		</a>

		<a href="javascript: void(0);" class="d-flex">
			<div class="flex-shrink-0 me-3">
				<img class="rounded-circle" src="resources/images/users/avatar-3.jpg"
					alt="Generic placeholder image" height="36">
			</div>
			<div class="flex-grow-1 chat-user-box">
				<p class="user-title m-0">Julian Rosa</p>
				<p class="text-muted">What about our next..</p>
			</div>
		</a>

		<a href="javascript: void(0);" class="d-flex">
			<div class="flex-shrink-0 me-3">
				<img class="rounded-circle" src="resources/images/users/avatar-4.jpg"
					alt="Generic placeholder image" height="36">
			</div>
			<div class="flex-grow-1 chat-user-box">
				<p class="user-title m-0">David Medina</p>
				<p class="text-muted">Yeah everything is fine</p>
			</div>
		</a>

		<a href="javascript: void(0);" class="d-flex">
			<div class="flex-shrink-0 me-3">
				<img class="rounded-circle" src="resources/images/users/avatar-6.jpg"
					alt="Generic placeholder image" height="36">
			</div>
			<div class="flex-grow-1 chat-user-box">
				<p class="user-title m-0">Jay Baker</p>
				<p class="text-muted">Wow that's great</p>
			</div>
		</a>

	</div>
</div>
-->
<!-- End Left sidebar -->


				<!-- Right Sidebar -->

<!-- 				<div class="email-rightbar mb-3"> -->
				<div class="mb-3">

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
						
<c:forEach var="b" items="${ list }" >
							<li>
								<div class="col-mail col-mail-1">
									<div class="checkbox-wrapper-mail">
										<input type="checkbox" id="chk19">
										<label for="chk19" class="toggle"></label>
									</div>
									<a href="javascript: void(0);" class="title">${ b.employeeId }</a><span
										class="star-toggle far fa-star"></span>
					
								</div>
								
								<div class="">
								</div>
								<div class="col-mail col-mail-2">
									<a href="javascript: void(0);" class="subject">${ b.boardTitle }</span>
									</a>
									<div class="date">${ b.boardDate }</div>
								</div>
							</li>
</c:forEach>

						</ul>

					</div><!-- card -->

<!-- 
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
 -->
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


<c:import url="/WEB-INF/views/common/pagingView.jsp"/>

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

