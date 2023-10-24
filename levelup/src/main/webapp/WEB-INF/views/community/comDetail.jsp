<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:if test="${ empty loginEmployee }">
	<c:redirect url="eloginPage.do"/>
</c:if>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- 타이틀 -->
<c:import url="/WEB-INF/views/common/title-meta.jsp"/>
<!-- 헤드 스크립트 -->
<c:import url="/WEB-INF/views/common/head-script.jsp"/>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.min.css" crossorigin="anonymous">
<link href="resources/css/fileinput.css" rel="stylesheet">
<style>
.kv-avatar .krajee-default.file-preview-frame,.kv-avatar .krajee-default.file-preview-frame:hover {
    margin: 0;
    padding: 0;
    border: none;
    box-shadow: none;
    text-align: center;
}
.kv-avatar {
    display: inline-block;
}
.kv-avatar .file-input {
    display: table-cell;
}
.kv-reqd {
    color: red;
    font-family: monospace;
    font-weight: normal;
}
.dn {
            display: none; /* 요소 숨김 */
}
</style>


</head>
<body data-sidebar="dark" data-layout-mode="light">
<!-- 내비게이션바, 사이드바 등등 -->
<c:import url="/WEB-INF/views/common/layout.jsp"/>

<div class="main-content">
	<div class="page-content">
		<div class="container-fluid">

<c:import url="/WEB-INF/views/common/page-title.jsp"/>

<!-- 여기서부터 내용 작성 -->
${currentPage} &nbsp; ${ community.attachement_filename }

<div class="row">
	<div class="col-12">
                            

<!-- Right Sidebar -->
<div class="mb-3">

    <div class="card">
        <div class="btn-toolbar p-3" role="toolbar">
            <div class="btn-group me-2 mb-2 mb-sm-0">
                <button type="button" class="btn btn-primary waves-light waves-effect"><i class="bx bx-edit-alt"></i></button>
                <button type="button" class="btn btn-primary waves-light waves-effect"><i class="fa fa-exclamation-circle"></i></button>
                <button type="button" class="btn btn-primary waves-light waves-effect"><i class="far fa-trash-alt"></i></button>
            </div>
            <div class="btn-group me-2 mb-2 mb-sm-0">
                <button type="button" class="btn btn-primary waves-light waves-effect" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-folder"></i> <i class="mdi mdi-chevron-down ms-1"></i>
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Updates</a>
                    <a class="dropdown-item" href="#">Social</a>
                    <a class="dropdown-item" href="#">Team Manage</a>
                </div>
            </div>
            <div class="btn-group me-2 mb-2 mb-sm-0">
                <button type="button" class="btn btn-primary waves-light waves-effect" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-tag"></i> <i class="mdi mdi-chevron-down ms-1"></i>
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Updates</a>
                    <a class="dropdown-item" href="#">Social</a>
                    <a class="dropdown-item" href="#">Team Manage</a>
                </div>
            </div>

            <div class="btn-group me-2 mb-2 mb-sm-0">
                <button type="button" class="btn btn-primary waves-light waves-effect" data-bs-toggle="dropdown" aria-expanded="false">
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

        <div class="card-body">
            <div class="d-flex mb-4">
                <div class="flex-shrink-0 me-3">
<!--                     <img class="rounded-circle avatar-sm" src="resources/images/users/avatar-2.jpg" alt="Generic placeholder image"> -->
                </div>
                <div class="flex-grow-1">
                    <b class="font-size-14 mt-1">${ community.employee_name }</b> <small class="text-muted"><a href="mailto:${ community.employee_email }">${ community.employee_email }</a></small><br>
                    <small class="text-muted">${ community.department_name } / ${ community.team_name }팀 / ${ community.rank_name }</small>
                    
                </div>
            </div>
			<div>
            제목 
            <h4 class="font-size-16 border border-3 p-1">${ community.board_title }</h4>
	            <div class="border border-2 p-2">
				${ community.board_body }
				</div>
			</div>
			
			<c:if test="${ !empty community.attachement_filename }">
			
					<div class="row">
						<div class="kv-avatar col-12">
			                <div class="file-loading">
            			        <input id="upfiles" type="file" disabled="true">
                			</div>
            			</div>
  					</div>
			</c:if>
			
            <a href="comRep.do?board_id=${ community.board_id }&currentPage=${ currentPage }" class="btn btn-primary waves-effect mt-4"><i class="mdi mdi-reply"></i>댓글달기</a> &nbsp;
            <a href="comlist.do?currentPage=${ currentPage }" class="btn btn-primary waves-effect mt-4"><i class="mdi mdi-reply"></i>목록으로</a> &nbsp;
            
             
            <c:if test="${ loginEmployee ne null and community.employee_id eq loginEmployee.employeeId }">
	            <a href="moveUP.do?board_id=${ community.board_id }&currentPage=${ currentPage }" class="btn btn-primary waves-effect mt-4"><i class="mdi mdi-tools"></i>수정</a>  &nbsp;
	            <a href="comDelete.do?board_id=${ community.board_id }&currentPage=${ currentPage }" class="btn btn-primary waves-effect mt-4"><i class="mdi mdi-trash-can"></i>삭제</a>  &nbsp;
            </c:if>
        </div>

    </div>
</div>
<!-- card -->

</div>
<!-- end Col-12 -->

</div>
		<!--  end row -->
	</div>
	<!-- container-fluid -->
</div>
<!-- End Page-content -->
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

		<!--tinymce js-->
		<script src="resources/libs/tinymce/tinymce.min.js"></script>

		<!-- email editor init -->
		<script src="resources/js/pages/email-editor.init.js"></script>
	<script src="resources/js/fileinput/plugins/buffer.min.js" type="text/javascript"></script>
	<script src="resources/js/fileinput/plugins/filetype.min.js" type="text/javascript"></script>
	<script src="resources/js/fileinput/plugins/piexif.min.js" type="text/javascript"></script>
	<script src="resources/js/fileinput/plugins/sortable.min.js" type="text/javascript"></script>
	<script src="resources/js/fileinput/fileinput.js"></script>

	<script src="/fm/resources/js/fileinput/locales/kr.js"></script>


<c:if test="${ !empty community.attachement_filename }">

<script type="text/javascript">

var imgs = ${ community.attachement_filename};
var previews = [];
var previewConfig = [];


if(imgs != null){
	for ( var i in imgs) {
		previews.push('${ pageContext.servletContext.contextPath }/resources/com_upfiles/${ community.board_id }/' + imgs[i]);
		previewConfig.push({caption:imgs[i]});
	}
}



$(function(){
	$("#upfiles").fileinput({
	overwriteInitial: false,
    initialPreview: previews,
    initialPreviewAsData: true, // identify if you are sending preview data only and not the raw markup
    initialPreviewDownloadUrl: '${ pageContext.servletContext.contextPath }/resources/com_upfiles/${ community.board_id }/{filename}', // includes the dynamic `filename` tag to be replaced for each config
    initialPreviewConfig: previewConfig,
    showUpload: false,
    showBrowse: false,
    browseOnZoneClick: false,
    initialPreviewShowDelete: false,
//	browseLabel: '파일 선택',
//	removeLabel: '선택 리셋',
//	removeTitle: '파일 업로드 창 리셋',
	elErrorContainer: '#kv-avatar-errors-1',
	msgErrorClass: 'alert alert-block alert-danger',
	layoutTemplates: {main2: '{preview} '},
	}) //fileinput 
}); // document ready
</script>
</c:if>

</div> <!-- main-content -->

</body>
</html>

