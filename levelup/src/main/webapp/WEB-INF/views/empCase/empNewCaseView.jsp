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
<script type="text/javascript" src="/malant/resources/common/js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">

</script>


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
                          
                          <form id="newcaseform" class="outer-repeater" method="post">
                                <div data-repeater-list="outer-group" class="outer">
                                  <div data-repeater-item="" class="outer">
                                  
                                  
                                  
                          	<!-- 기안 제목 -->           
                                      <div class="form-group row mb-4">
                                          <label for="caseTitle" class="col-form-label col-lg-1">기안 제목</label>
                                          <div class="col-lg-11">
                                              <input id="caseTitle" name="caseTitle" type="text" class="form-control" placeholder="기안 제목 입력하세요">
                                          </div>
                                      </div>
                                      
                                   
                                      
                                      
                             <!-- 기안 승인자 목록 -->

                                  <label class="col-form-label col-lg-1">결재 라인</label>
									
									<div class="inner-repeater mb-4">
                                            <div data-repeater-list="inner-group" class="inner form-group mb-0 row">                                               
                                                <div data-repeater-item="" class="inner col-lg-11 ms-md-auto">
                                                    <div class="mb-3 row align-items-center">
                                                        <div class="col-md-6">
                                                             <select class="form-select">
		                                                   <option>Select</option>
		                                                   <option>Large select</option>
		                                                   <option>Small select</option>
                                               			 </select>
                                                        </div>                                                       
                                                        <div class="col-md-2">
                                                            <div class="mt-2 mt-md-0 d-grid">
                                                                <input data-repeater-delete="" type="button" class="btn btn-primary inner" value="Delete">
                                                            </div>
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row justify-content-end">
                                                <div class="col-lg-10">
                                                    <input data-repeater-create="" type="button" class="btn btn-success inner" value="결재 라인 추가">
                                                </div>
                                            </div>
                                        </div>
									
	
                                   
                                      
                                      
                                      
                                      
                            <!-- 기안 내용 -->        
                                    <div class="d-flex">
									<div class="flex-grow-1 overflow-hidden">
									<label for="caseContent" class="col-form-label col-lg-1">기안 내용</label>
									<div class="col-lg-12">
                                           <textarea id="caseContent" name="caseContent" class="form-control" rows="3" cols="40" placeholder="기안 내용을 작성하세요"></textarea>
                                    </div>
									</div>
									</div>	
									<br>
									
									
									
							
							<!-- 파일 업로드 -->
										<label for="attatchFile" class="col-form-label col-lg-1">첨부 파일</label>                                      
                                               <div class="mb-3" align="center">
                                                  <!--  <i class="display-4 text-muted bx bxs-cloud-upload"></i><br> -->
                                                   <input class="form-control" type="file" id="formFile">                                            
                                               </div>                                               
                           
                                         <br>
        

									
							<!-- 현재 유저 아이템 정보 -->
							
                                    <label for="currentItems" class="col-form-label col-lg-3">변경 대상 아이템</label>
                                    <div id="currentItems">
                                   			<div class="row" >
                                     		<div class="mb-3 col-lg-2"> 아이템 ID </div>        
                                            <div class="mb-3 col-lg-2"> 아이템 고유번호  </div>         
                                            <div class="mb-3 col-lg-2">  수량 </div>   
                                            </div>    
                                            
		                                                                                               
												<div class="inner-repeater mb-4">
	                                            <div data-repeater-list="group-a">
                                                <div data-repeater-item="" class="row">
                                                    <div class="mb-3 col-lg-2">
                                                        <input type="text" id="itemId" name="group-a[0][untyped-input]" class="form-control">
                                                    </div>        
                                                    <div class="mb-3 col-lg-2">                                                      
                                                        <input type="text" id="itemGui" class="form-control">
                                                    </div>        
                                                    <div class="mb-3 col-lg-2">                                                      
                                                        <input type="text" id="amount" class="form-control">
                                                    </div>        
                                                    <div class="mb-3 col-lg-2 align-self-center">
                                                        <div class="d-grid">
                                                            <input data-repeater-delete="" type="button" class="btn btn-primary" value="Delete">
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <input data-repeater-create="" type="button" class="btn btn-success mt-3 mt-lg-0" value="Add">
                                         </div>
                   
									</div>
                            
                            
                            
                              <!-- 변경할 아이템 수량 -->     
                            
                              
                                    <label for="currentItems" class="col-form-label col-lg-3">변경 할 아이템</label>
                                    <div id="currentItems">
                                   			<div class="row" >
                                     		<div class="mb-3 col-lg-2"> 아이템 ID </div>        
                                            <div class="mb-3 col-lg-2"> 아이템 고유번호  </div>         
                                            <div class="mb-3 col-lg-2">  수량 </div>   
                                            </div>    
                                            
		                                                                                               
												<div class="inner-repeater mb-4">
	                                            <div data-repeater-list="group-a">
                                                <div data-repeater-item="" class="row">
                                                    <div class="mb-3 col-lg-2">
                                                        <input type="text" id="itemId" name="group-a[0][untyped-input]" class="form-control">
                                                    </div>        
                                                    <div class="mb-3 col-lg-2">                                                      
                                                        <input type="text" id="itemGui" class="form-control">
                                                    </div>        
                                                    <div class="mb-3 col-lg-2">                                                      
                                                        <input type="text" id="amount" class="form-control">
                                                    </div>        
                                                    <div class="mb-3 col-lg-2 align-self-center">
                                                        <div class="d-grid">
                                                            <input data-repeater-delete="" type="button" class="btn btn-primary" value="Delete">
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <input data-repeater-create="" type="button" class="btn btn-success mt-3 mt-lg-0" value="Add">
                                         </div>
                   
									</div>


                                      
                                      
                                      
                                      
                                      
             
                       		 </div>	
                       		</div> <!-- reapeat -->
                          </form>
                          
                        
                          
                          <div class="row justify-content-end">
                              <div class="col-lg-10">
                                  <button type="submit" class="btn btn-primary">Create Task</button>
                              </div>
                          </div>

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

<!-- form repeater js -->
<script src="resources/libs/jquery.repeater/jquery.repeater.min.js"></script>
<script src="resources/js/pages/task-create.init.js"></script>
<script src="resources/js/app.js"></script>

<!-- Plugins js -->
<script src="resources/libs/dropzone/min/dropzone.min.js"></script>

</body>
</html>

