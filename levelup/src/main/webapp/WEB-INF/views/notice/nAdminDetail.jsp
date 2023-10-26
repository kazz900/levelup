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

<c:url var="nup" value="nmoveup.do">
	<c:param name="noticeId" value="${ notice.noticeId }" />
</c:url>

<c:url var="nd" value="ndelete.do">
	<c:param name="noticeId" value="${ notice.noticeId }" />
	<c:param name="rfile" value="${ notice.renameFilename }" />
</c:url>

<script type="text/javascript">
function moveUpdatePage(){	
	location.href = "${nup}";
}

function requestDelete(){
	location.href = "${nd}";
}
</script>
					<div class="row">
						<div class="col-12">


							<!-- Right Sidebar -->
							<div class="email-rightbar mb-3">

								<div class="card">
								<div class="flex-grow-1">
                    <b class="font-size-14 mt-1">${ notice.employeeName }</b> <small class="text-muted"><a href="mailto:${ notice.employeeEmail }">${ notice.employeeEmail }</a></small><br>
                    <small class="text-muted">${ notice.departmentName } / ${ notice.teamName }팀 / ${ notice.rankName }</small>
                    
                </div>
						
									<div class="btn-toolbar p-3" role="toolbar">
										<div class="message-title">제목: ${notice.noticeTitle}</div>
										
									</div>
								<ul class="message-list">
  <li class="message-item">
    <div class="col-mail col-mail-1">
      
      <div class="message-author">작성자: ${notice.employeeName}</div>
      <span class="star-toggle far fa-star"></span>
    </div>
    <div class="col-mail col-mail-2">
      <div class="message-content">${notice.noticeContent}</div>
      <div class="message-read-count">조회수: ${notice.readCount}</div>
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
													<tr><th colspan="2">
													<button onclick="moveUpdatePage(); return false;">수정페이지로 이동</button> &nbsp; 
													<button onclick="requestDelete(); return false;">삭제하기</button> &nbsp; 
													<button onclick="javascript:window.location.href='<%= session.getAttribute("listPage") %>';">목록</button>
													<a>##previousPage##   <%= session.getAttribute("previousPage") %></a>
													<a>##listPage##   <%= session.getAttribute("listPage") %></a>
												</th></tr>

								</div><!-- card -->

								<div class="row">
									<div class="col-7">
										공지 adm상세보기
									</div>
									<div class="col-5">
									</div>
								</div>

							</div> <!-- end Col-9 -->

						</div>

					</div>
					<!--  end row -->
				</div>
	


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

