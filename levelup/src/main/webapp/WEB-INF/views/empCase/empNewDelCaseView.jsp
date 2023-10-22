<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="currentPage" value="${ requestScope.currentPage }" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- 타이틀 -->
<c:import url="/WEB-INF/views/common/title-meta.jsp" />
<!-- 헤드 스크립트 -->
<c:import url="/WEB-INF/views/common/head-script.jsp" />
</head>
<style>
.table-responsive {
	overflow-y: auto;
	height: 200px;
}

.table-responsive thead th {
	position: sticky;
	top: 0px;
}

.bg-light {
	background: #eef0f4;
}
/* 드랍다운 */
.item-select{
    width: 300px;
    height: 35px;
    background: #5a6fe6;
    border: none;
    border-radius: 5px;
    color: white;
	margin-bottom: 1rem;
}

.options{
	background: white;
	color: black;
}
</style>
<body data-sidebar="dark" data-layout-mode="light">
	<!-- 내비게이션바, 사이드바 등등 -->
	<c:import url="/WEB-INF/views/common/layout.jsp" />

	<div class="main-content">
		<div class="page-content">
			<div class="container-fluid">

				<c:import url="/WEB-INF/views/common/page-title.jsp" />

				<h2 align="center"></h2>
				<br>
				<!-- 여기부터 내용 작성 -->

				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">

								<h1 class="card-title mb-5" align="center">아이템 삭제 기안 작성</h1>

							 <form action="cinsert.do" class="outer-repeater" enctype="multipart/form-data" method="post">							 	
	                            <input type="hidden" name="caseWriterId" value="${ sessionScope.loginEmployee.employeeId }">
	                            <input type="hidden" name="caseWriterName" value="${ sessionScope.loginEmployee.employeeName }">
	                            <input type="hidden" name="caseManagerId" value="${ requestScope.manager.employeeId }">
	                            <input type="hidden" name="caseManagerName" value="${ requestScope.manager.employeeName }">                            
	                      
	                            
	                            
	                            <input type="hidden" name="caseType" value="2">
	                            <input type="hidden" name="charId" value="${ param.charId }">
	                            <input type="hidden" name="accountId" value="${ requestScope.character.accountId }">
	                            <input type="hidden" name="charName" value="${ requestScope.character.name }">
	                            <input type="hidden" name="uniqueId" value="${ requestScope.itemdata.uniqueId }">
	                            
	                            <input type="hidden" name="originalItemId" value="${ param.nameId }">
	                            <c:if test="${ !empty param.itemName }">
		                            <input type="hidden" name="originalItemName" value="${ param.itemName }">
	                            </c:if>
	                            <c:if test="${ empty param.itemName }">
		                            <input type="hidden" name="originalItemName" value="잡템">
	                            </c:if>
	                            <input type="hidden" name="originalItemAmount" value="${ param.amount }">



									<!-- 기안 제목 -->
									<div class="form-group row mb-4">
										<label for="caseTitle" class="col-form-label col-lg-1">기안 제목</label>
										<div class="col-lg-11">
											<input id="caseTitle" name="caseTitle" type="text"
												class="form-control" placeholder="기안 제목 입력하세요" required>
										</div>
									</div>

									<!-- 결재자 -->
									<!-- 결재자 정보 -->
									<div class="row">
										<!-- 결재자 이름 -->
										<div class="mb-3 col-lg-2">
											<input type="hidden" name=""
												value="${ requestScope.manager.employeeId }"> 
												<label>결재자 이름</label>
												<input type="text" name="" id="disabledTextInput" class="form-control"
												placeholder="${ requestScope.manager.employeeName }" disabled>
										</div>
										<div class="mb-3 col-lg-2">
											<label>결재자 이메일</label><input type="text"
												id="disabledTextInput" class="form-control"
												placeholder="${ requestScope.manager.employeeEmail }"
												disabled>
										</div>
									</div>

									<!-- 현재  아이템 정보 -->

									<label for="currentItems" class="col-form-label col-lg-3">ITEM
										INFO</label>
									<div id="currentItems">
										<div class="row">
											<div class="mb-3 col-lg-2">ID</div>
											<div class="mb-3 col-lg-2">NAME</div>
											<div class="mb-3 col-lg-2">PRICE</div>
											<div class="mb-3 col-lg-2">GAME PRICE</div>
											<div class="mb-3 col-lg-2">AMOUNT</div>
										</div>

										<div class="row">

											<div class="mb-3 col-lg-2">
												<input type="hidden" name="charId" value="${ param.charId }">
												<input type="text" id="disabledTextInput"
													class="form-control" placeholder="${ param.nameId }"
													disabled>
											</div>
											<div class="mb-3 col-lg-2">
												<c:if test="${ !empty param.itemName }">
													<input type="text" id="disabledTextInput"
														class="form-control" placeholder="${ param.itemName }"
														disabled>
												</c:if>
												<c:if test="${ empty param.itemName }">
													<input type="text" id="disabledTextInput"
														class="form-control" placeholder="잡템" disabled>
												</c:if>
											</div>
											<div class="mb-3 col-lg-2">
												<input type="text" id="disabledTextInput"
													class="form-control" placeholder="${ param.price }"
													disabled>
											</div>
											<div class="mb-3 col-lg-2">
												<input type="text" id="disabledTextInput"
													class="form-control" placeholder="${ param.gamePrice }"
													disabled>
											</div>
											<div class="mb-3 col-lg-2">
												<input type="text" id="disabledTextInput" 
													class="form-control" placeholder="${ param.amount }"
													disabled>
											</div>
										</div>

									</div>
									


									<!-- 기안 내용 -->
									<div class="d-flex">
										<div class="flex-grow-1 overflow-hidden">
											<label for="caseContent" class="col-form-label col-lg-1">기안
												내용</label>
											<div class="col-lg-12">
												<textarea id="caseContent" name="caseContent"
													class="form-control" rows="3" cols="40"
													placeholder="기안 내용을 작성하세요" required></textarea>
											</div>
										</div>
									</div>
									<br>

									<!-- 파일 업로드 -->
									<label for="attatchFile" class="col-form-label col-lg-1">첨부 파일</label>
									<div class="mb-3" align="center">
										<!--  <i class="display-4 text-muted bx bxs-cloud-upload"></i><br> -->
										<input class="form-control" type="file" name="upfile">
									</div>

									<br>
									
									
									<!-- 작성 완료 -->
									<div class="row justify-content-end">
										<div class="col-lg-10">
											<button type="submit" class="btn btn-primary">작성 완료</button>
										</div>
									</div>

								</form>



							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- container-fluid -->
		</div>
		<!-- page-content -->

		<c:import url="/WEB-INF/views/common/footer.jsp" />
	</div>
	<!-- main-content -->


	<!--tinymce js-->
	<script src="resources/libs/tinymce/tinymce.min.js"></script>

	<!-- init js -->
	<script src="resources/js/pages/form-editor.init.js"></script>


	<!-- Plugins js -->
	<script src="resources/libs/dropzone/min/dropzone.min.js"></script>
	
	<script type="text/javascript">
		function onReplacementItemSelectChange(replacementItem){
			var replacementitemidinputfield = document.getElementById('replacementitemid');
			var replacementitemnameinputfield = document.getElementById('replacementitemname');
			var replacementitempriceinputfield = document.getElementById('replacementitemprice');
			var replacementitemgamepriceinputfield = document.getElementById('replacementitemgameprice');
			var hiddenInputReplacementItemId = document.getElementById('hiddenInputReplaceItemId');
			var hiddenInputReplacementItemName = document.getElementById('hiddenInputReplaceItemName');
			
			replacementitemidinputfield.value = replacementItem.getAttribute("data-nameId");
			replacementitemnameinputfield.value = replacementItem.getAttribute("data-itemName");
			replacementitempriceinputfield.value = replacementItem.getAttribute("data-price");
			replacementitemgamepriceinputfield.value = replacementItem.getAttribute("data-gamePrice");
			hiddenInputReplacementItemId.value = replacementItem.getAttribute("data-nameId");
			hiddenInputReplacementItemName.value = replacementItem.getAttribute("data-itemName");
		}
	</script>
</body>
</html>

