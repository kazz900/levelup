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

				
				
				<div class="card">
                <div class="card-body">
                    <div class="pt-3">
                        <div class="row justify-content-center">
                            <div class="col-xl-10">
                                <div>
                                
                                
                                
							<!-- 기안 제목 -->
                                
                                    <div class="text-center">
                                        <div class="mb-4">                                      
                                        </div>
                                        <h4>기안 제목 : ${ requestScope.caseItemChange.documentTitle }</h4>
                                     </div>

                                    <hr>
                             <!-- ---------------------------------------------- -->       
                                    
                             <!-- 기안 분류 -->
                                    <div class="text-center">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div>
                                                    <p class="text-muted mb-2">기안 분류</p>
                                                    <h5 class="font-size-15">아이템 변경 기안</h5>
                                                </div>
                                            </div>
                                            
                             <!-- 기안 작성 날짜 -->
                                       <div class="col-sm-4">
                                           <div class="mt-4 mt-sm-0">
                                               <p class="text-muted mb-2">기안 작성 날짜</p>
                                               <h5 class="font-size-15">${ requestScope.caseItemChange.editDate }</h5>
                                           </div>
                                       </div>
                                       
                              <!-- 기안 작성자 -->
                                       <div class="col-sm-4">
                                           <div class="mt-4 mt-sm-0">
                                               <p class="text-muted mb-2">기안 작성자</p>
                                               <h5 class="font-size-15">${ requestScope.caseItemChange.employeeId }</h5>
                                           </div>
                                       </div>
                                       </div>
                                    </div>
                                    
                               <!-- ------------------------------------------------------------------ -->     
                                    <hr>

                                    <div class="my-5">
                                        <img src="assets/images/small/img-2.jpg" alt="" class="img-thumbnail mx-auto d-block">
                                    </div>

                                    <hr>
                                    
                              <!-- -----------------------------기안 내용 -------------------------------------- -->

                                    <div class="mt-4">
                                        <div class="text-muted font-size-14">
                                  
                                <!-- 변경 전 아이템 정보 -->  
                                		
                                		<h5 class="mb-3">대상 유저 정보</h5>
                                		  	<label>유저 ID</label><input type="text" value="${ requestScope.caseItemChange.charId }">
                                		  	
                                		<br><br>
                                		
                                		<h5 class="mb-3">변경 전 아이템</h5>
                                
                             			<div id="currentItems">
                                   		<div class="row" >
                                     		<div class="mb-3 col-lg-2">ID</div>        
                                            <div class="mb-3 col-lg-2">NAME</div>         
                                            <div class="mb-3 col-lg-2">AMOUNT</div>   
                                            <div class="mb-3 col-lg-2">PRICE</div>
                                            <div class="mb-3 col-lg-2">GAME PRICE</div>
                                        </div>  
                                        
                                             
                                		<div class="row">	
                                			<div class="mb-3 col-lg-2">	                                        	
	                                            <input type="text" name="" id="disabledTextInput" class="form-control" placeholder="${ requestScope.caseItemChange.itemId }" disabled>
	                                        </div>        
	                                        <div class="mb-3 col-lg-2">		                                        
		                                            <input type="text" id="disabledTextInput" class="form-control" placeholder="${ itemName }" disabled>		                                 
	                                        </div>          
	                                        <div class="mb-3 col-lg-2">
	                                            <input type="text" id="disabledTextInput" class="form-control" placeholder="${ amount }" disabled>
	                                        </div>  
	                                       	<div class="mb-3 col-lg-2">
                                            	<input type="text" id="disabledTextInput" class="form-control" placeholder="${ price }" disabled>
	                                        </div>   
	                                        <div class="mb-3 col-lg-2">
	                                            <input type="text" id="disabledTextInput" class="form-control" placeholder="${ gamePrice }" disabled>
	                                        </div> 
                                			
                                		</div>	 
                                		
                                		<br><br>
                                		
                                <!-- 변경 후 아이템 정보 -->	
                                
                                	
                                		<h5 class="mb-3">변경 후 아이템</h5>
                                
                             			<div id="beforeItems">
                                   		<div class="row" >
                                     		<div class="mb-3 col-lg-2">ID</div>        
                                            <div class="mb-3 col-lg-2">NAME</div>         
                                            <div class="mb-3 col-lg-2">AMOUNT</div>   
                                            <div class="mb-3 col-lg-2">PRICE</div>
                                            <div class="mb-3 col-lg-2">GAME PRICE</div>
                                        </div>  
                                        
                                             
                                		<div class="row">	
                                			<div class="mb-3 col-lg-2">	                                        	
	                                            <input type="text" name="" id="disabledTextInput" class="form-control" placeholder="${ requestScope.caseItemChange.replaceItemId }" disabled>
	                                        </div>        
	                                        <div class="mb-3 col-lg-2">		                                        
		                                            <input type="text" id="disabledTextInput" class="form-control" placeholder="${ itemName }" disabled>		                                 
	                                        </div>          
	                                        <div class="mb-3 col-lg-2">
	                                            <input type="text" id="disabledTextInput" class="form-control" placeholder="${ requestScope.caseItemChange.replaceItemNo }" disabled>
	                                        </div>  
	                                       	<div class="mb-3 col-lg-2">
                                            	<input type="text" id="disabledTextInput" class="form-control" placeholder="${ price }" disabled>
	                                        </div>   
	                                        <div class="mb-3 col-lg-2">
	                                            <input type="text" id="disabledTextInput" class="form-control" placeholder="${ gamePrice }" disabled>
	                                        </div> 
                                			
                                		</div>	       
                                		
                                		</div>
                                		</div>
                                		
                                		
                                		      
                                      <!-- 기안 내용 -->   

                                            <div class="mt-4">
                                                <h5 class="mb-3">기안 내용</h5>

                                                <div>                                                   
                                                   <div class="flex-grow-1 overflow-hidden">
													<p class="text-muted">${ requestScope.caseItemChange.documentContent }</p>
													</div>                                                 
                                                   
                                                </div>
                                            </div>
                                            
                                      <!-- 첨부된 파일 -->   

                                            <div class="mt-4">
                                                <h5 class="mb-3">첨부파일 내용</h5>

                                                <div>                                                   
                                                   <div class="flex-grow-1 overflow-hidden">
													<p class="text-muted">${ requestScope.caseItemChange.attachementFilename }</p>
													</div>                                                     
                                                   
                                                </div>
                                            </div>

									 <!-- ----------------------------기안 내용 끝------------------------------------------------- -->			

									 			
									</div>				
								</div>
								
								<hr>
								
								<!-- 수정하기 버튼, 기안 올리기 버튼, 삭제하기버튼, 목록으로 버튼 -->
								
								<div class="col-lg-10" align="center">
									
									<c:if test="${ sessionScope.loginEmployee.employeeId != requestScope.manager.employeeId }">
                                  <button type="button" class="btn btn-secondary waves-effect waves-light">목록으로</button>
                                  
                                   </c:if>
                                   
									<c:if test="${ sessionScope.loginEmployee.employeeId == requestScope.manager.employeeId }">
                                  <button type="button" class="btn btn-secondary waves-effect waves-light">목록으로</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <button type="button" class="btn btn-success waves-effect waves-light">기안 승인</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <button type="submit" class="btn btn-danger waves-effect waves-light">기안 반려</button>                               
                                   </c:if>
                              </div>
								
							</div>	
                          </div>
                    	</div>
                    </div>
                </div>
                <!-- end card body -->
            </div>
				

				
				
				
					
				
				
				
				
				
				

	
			</div>
			<!-- container-fluid -->
		</div>
		<!-- page-content -->

	<c:import url="/WEB-INF/views/common/footer.jsp" />
	</div>
	<!-- main-content -->

</body>
</html>

