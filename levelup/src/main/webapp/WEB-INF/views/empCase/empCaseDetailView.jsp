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

<c:url var="caseApprove" value="caseApprove.do">
	<c:param name="caseId" value="${ requestScope.casedetail.caseId }" />
	<c:param name="employeeId" value="${ sessionScope.loginEmployee.employeeId }" />
</c:url>

<c:url var="caseReject" value="caseReject.do">
	<c:param name="caseId" value="${ requestScope.casedetail.caseId }" />
	<c:param name="employeeId" value="${ sessionScope.loginEmployee.employeeId }" />
</c:url>

<script type="text/javascript">
function golist(){
	location.href = "${pageContext.servletContext.contextPath}/clist.do?page=${ param.page }";
}

function caseApprove(){
	var ans = confirm("기안이 승인하시겠습니까? 아이템의 정보가 변경됩니다.");
	if(ans) { location.href = "${ caseApprove }";
	}	
	return false;
}

function caseReject(){
	var ans = confirm("기안이 반려하시겠습니까? 아이템이 삭제 됩니다.");
	if(ans) { location.href = "${ caseReject }";
	}	
	return false;
}

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
                                        <h4>기안 제목 : ${ requestScope.casedetail.caseTitle }</h4>
                                     </div>

                                    <hr>
                             <!-- ---------------------------------------------- -->       
                                    
                             <!-- 기안 분류 -->
                                    <div class="text-center">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div>
                                                    <p class="text-muted mb-2">기안 분류</p>
                                                    <c:if test="${ requestScope.casedetail.caseType eq 1}">
                                                    	<h5 class="font-size-15">아이템 변경 기안</h5>
                                                   	</c:if>
                                                   	 <c:if test="${ requestScope.casedetail.caseType eq 2}">
                                                    	<h5 class="font-size-15">아이템 삭제 기안</h5>
                                                   	</c:if>
                                                </div>
                                            </div>
                                            
                             <!-- 기안 작성 날짜 -->
                                       <div class="col-sm-4">
                                           <div class="mt-4 mt-sm-0">
                                               <p class="text-muted mb-2">기안 작성 날짜</p>
                                               <h5 class="font-size-15"><fmt:formatDate value="${ requestScope.casedetail.editDate }" pattern="yyyy-MM-dd HH:mm:ss" /></h5>
                                           </div>
                                       </div>
                                       
                              <!-- 기안 작성자 -->
                                       <div class="col-sm-4">
                                           <div class="mt-4 mt-sm-0">
                                               <p class="text-muted mb-2">기안 작성자</p>
                                               <h5 class="font-size-15">${ requestScope.casedetail.caseWriterName }</h5>
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
                                		  	<label>유저 ID</label>&nbsp;&nbsp;&nbsp;<input type="text" value="${ requestScope.casedetail.charId }" disabled>
                                		  	
                                		<br><br><br><br>
                                		
                                		<h5 class="mb-3">현재 아이템 정보</h5>
                                
                             			<div id="currentItems">
                                   		<div class="row" >
                                     		<div class="mb-3 col-lg-2">ID</div>        
                                            <div class="mb-3 col-lg-2">NAME</div>         
                                            <div class="mb-3 col-lg-2">AMOUNT</div>                 
                                        </div>  
                                        
                                             
                                		<div class="row">	
                                			<div class="mb-3 col-lg-2">	                                        	
	                                            <input type="text" name="" id="disabledTextInput" class="form-control" placeholder="${ requestScope.casedetail.originalItemId }" disabled>
	                                        </div>        
	                                        <div class="mb-3 col-lg-2">		                                        
		                                            <input type="text" id="disabledTextInput" class="form-control" placeholder="${ requestScope.casedetail.originalItemName }" disabled>		                                 
	                                        </div>          
	                                        <div class="mb-3 col-lg-2">
	                                            <input type="text" id="disabledTextInput" class="form-control" placeholder="${ requestScope.casedetail.originalItemAmount }" disabled>
	                                        </div>  	                                       	
                                			
                                		</div>	 
                                		
                                		<br><br>
                                		
                                	
                                	 <c:if test="${ requestScope.casedetail.caseType eq 1}">	
                                <!-- 변경 후 아이템 정보 -->	
                                
                                	
                                		<h5 class="mb-3">변경 후 아이템</h5>
                                
                             			<div id="beforeItems">
                                   		<div class="row" >
                                     		<div class="mb-3 col-lg-2">ID</div>        
                                            <div class="mb-3 col-lg-2">NAME</div>         
                                            <div class="mb-3 col-lg-2">AMOUNT</div>              
                                        </div>  
                                        
                                             
                                		<div class="row">	
                                			<div class="mb-3 col-lg-2">	                                        	
	                                            <input type="text" name="" id="disabledTextInput" class="form-control" placeholder="${ requestScope.casedetail.newItemId }" disabled>
	                                        </div>        
	                                        <div class="mb-3 col-lg-2">		                                        
		                                            <input type="text" id="disabledTextInput" class="form-control" placeholder="${ requestScope.casedetail.newItemName }" disabled>		                                 
	                                        </div>          
	                                        <div class="mb-3 col-lg-2">
	                                            <input type="text" id="disabledTextInput" class="form-control" placeholder="${ requestScope.casedetail.newItemAmount }" disabled>
	                                        </div>  	                          
                                			
                                		</div>	  
                                		</div>
                                		<!-- 변경 후 아이템 끝 -->
                                		</c:if>
                                	
                                		
                                		</div> <!-- 아이템 내용 끝-->
                                		
                                		
                                		      
                                      <!-- 기안 내용 -->   

                                            <div class="mt-4">
                                                <h5 class="mb-3">기안 내용</h5>

                                                <div>                                                   
                                                   <div class="flex-grow-1 overflow-hidden">
                                                   <input type="text" id="disabledTextInput" class="form-control" style="height:100px;" placeholder="${ requestScope.casedetail.caseContent }" disabled>
													</div>                                                 
                                                   
                                                </div>
                                            </div>
                                            
                                      <!-- 첨부된 파일 -->   
								<div class="col-lg-4">
									<div class="card">
										<div class="card-body">
											<h4 class="card-title mb-4">첨부 파일 목록</h4>
											<div class="table-responsive">
												<table class="table table-nowrap align-middle table-hover mb-0">
													<tbody>
														<tr>
															<c:if test="${ !empty requestScope.casedetail.attachmentFileName }">
																<c:url var="cdown" value="cfdown.do">
																	<c:param name="file" value="${ requestScope.casedetail.attachmentFileName }" />												
																</c:url>
															<td>
																<h5 class="font-size-14 mb-1">
																	<a href="${ cdown }" class="text-dark">${ requestScope.casedetail.attachmentFileName }</a>
																</h5>
															</td>
															<td>
																<div class="text-center">
																	<a href="${ cdown }" class="text-dark"><i
																		class="bx bx-download h3 m-0"></i></a>
																</div>
															</td>
															</c:if>
															<c:if test="${ empty requestScope.casedetail.attachmentFileName }">
															첨부파일 없음
															</c:if>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>

									 <!-- ----------------------------기안 내용 끝------------------------------------------------- -->			

									 			
									</div>				
								</div>
								
								<hr>
								
								<!-- 수정하기 버튼, 기안 올리기 버튼, 삭제하기버튼, 목록으로 버튼 -->
								
								<div class="col-lg-10" align="center">
									
									<c:if test="${ sessionScope.loginEmployee.employeeId != requestScope.casedetail.caseManagerId }">
                                  <button type="button" class="btn btn-secondary waves-effect waves-light" onclick="golist();">목록으로</button>
                                  
                                   </c:if>
                                   
									<c:if test="${ sessionScope.loginEmployee.employeeId == requestScope.casedetail.caseManagerId }">
                                  <button type="button" class="btn btn-secondary waves-effect waves-light" onclick="golist();">목록으로</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <button type="button" class="btn btn-success waves-effect waves-light" onclick="caseApprove();">기안 승인</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <button type="button" class="btn btn-danger waves-effect waves-light" onclick="caseReject();">기안 반려</button>                               
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

