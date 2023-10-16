<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="currentPage" value="${ requestScope.currentPage }" />

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
<!-- 문의 분류 문의제목 , 유저ID, 문의 날짜,-->
<!-- 문의 내용 -->
<!-- 첨부파일 -->
<!-- 답변내용 -->
<!-- 답변 단 사원 ID, 답변 등록 날짜.  -->

<div class="row mb-3 text-center">
      <div class="col-md-8 themed-grid-col">
        <div class="pb-3">
          .col-md-8
        </div>
        <div class="row">
          <div class="col-md-6 themed-grid-col">.col-md-6</div>
          <div class="col-md-6 themed-grid-col">.col-md-6</div>
        </div>
      </div>
      <div class="col-md-4 themed-grid-col">.col-md-4</div>
    </div>


	 	<!-- container-fluid -->			
		</div>
	<!-- page-content -->		
	</div>
<!-- 푸터(자바스크립트 로딩) -->
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</div> <!-- main-content -->

</body>
</html>

