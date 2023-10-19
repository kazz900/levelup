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

								<h1 class="card-title mb-5" align="center">새 기안 작성 (아이템 변경)</h1>

							 <form action="cicinsert.do" class="outer-repeater" method="post">
	                            <input type="hidden" name="employeeId" value="${ sessionScope.loginEmployee.employeeId }">
	                            <input type="hidden" name="employeeName" value="${ sessionScope.loginEmployee.employeeName }">
	                            <input type="hidden" name="managerId" value="${ requestScope.manager.employeeId }">
	                            <input type="hidden" name="charId" value="${ param.charId }">
	                            <input type="hidden" name="itemId" value="${ param.nameId }">
	                            <input type="hidden" name="itemName" value="${ param.itemName }">
	                            <input type="hidden" name="itemAmount" value="${ param.amount }">



									<!-- 기안 제목 -->
									<div class="form-group row mb-4">
										<label for="caseTitle" class="col-form-label col-lg-1">기안
											제목</label>
										<div class="col-lg-11">
											<input id="caseTitle" name="caseTitle" type="text"
												class="form-control" placeholder="기안 제목 입력하세요">
										</div>
									</div>

									<!-- 결재자 -->
									<!-- 결재자 정보 -->
									<div class="row">
										<!-- 결재자 이름 -->
										<div class="mb-3 col-lg-2">
											<input type="hidden" name="managerId"
												value="${ requestScope.manager.employeeId }"> <label>결재자
												이름</label><input type="text" name="" id="disabledTextInput"
												class="form-control"
												placeholder="${ requestScope.manager.employeeName }"
												disabled>
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
									<!-- 변경할 아이템 선택 Drop Down-->

									<!-- TODO 오늘까지 한거 -->
									<!-- TODO 드랍다운 추가 -->
									<div>
										<label>SELECT REPLACEMENT ITEM</label> <br>
										<select class="item-select" id="replacementitemselect" onchange="onReplacementItemSelectChange(this.options[this.selectedIndex]);">
											<c:forEach items="${ requestScope.ilist }" var="i">
												<option class="options" id="${ i.itemId }"
												data-nameId="${ i.itemId }"
												data-amount="${ i.amount }"
												data-uniqueId="${ i.uniqueId }"
												data-itemName="${ i.itemName }"
												data-itemType="${ i.itemType }"
												data-price="${ i.price }"
												data-gamePrice="${ i.gamePrice }">${ i.itemName }
												</option>
											</c:forEach>
										</select>
										
										
									 <input type="hidden" name="replaceItemId" value="${ i.itemId }">
	                          	     <input type="hidden" name="replaceItemAmount" value="${ i.amount }">	
									
				
									</div>

									<!-- 드랍다운에서 아이템 선택 시 자동으로 채워지는 칸들 -->
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
												<input type="text" id="replacementitemid" name="replaceItemId"
													class="form-control"
													disabled>
											</div>
											<div class="mb-3 col-lg-2">
													<input type="text" id="replacementitemname" name="replacement_ItemName"
														class="form-control"
														disabled>
											</div>
											<div class="mb-3 col-lg-2">
												<input type="text" id="replacementitemprice" name="replacement_ItemPrice"
													class="form-control"
													disabled>
											</div>
											<div class="mb-3 col-lg-2">
												<input type="text" id="replacementitemgameprice" name="replacement_ItemGamePrice"
													class="form-control" 
													disabled>
											</div>
											<div class="mb-3 col-lg-2">
												<input type="text" id="disabledTextInput" name="replaceItemAmount"
													class="form-control">
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
													placeholder="기안 내용을 작성하세요"></textarea>
											</div>
										</div>
									</div>
									<br>

									<!-- 파일 업로드 -->
									<label for="attatchFile" class="col-form-label col-lg-1">첨부
										파일</label>
									<div class="mb-3" align="center">
										<!--  <i class="display-4 text-muted bx bxs-cloud-upload"></i><br> -->
										<input class="form-control" type="file" id="formFile">
									</div>

									<br>
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
			
			replacementitemidinputfield.value = replacementItem.getAttribute("data-nameId");
			replacementitemnameinputfield.value = replacementItem.getAttribute("data-itemName");
			replacementitempriceinputfield.value = replacementItem.getAttribute("data-price");
			replacementitemgamepriceinputfield.value = replacementItem.getAttribute("data-gamePrice");
		}
	</script>
</body>
</html>

