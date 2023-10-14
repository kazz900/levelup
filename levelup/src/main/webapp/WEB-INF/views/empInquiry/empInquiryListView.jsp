<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<c:import url="/WEB-INF/views/common/title-meta.jsp"/>
<c:import url="/WEB-INF/views/common/head-script.jsp"/>
</head>
<body>

<c:import url="/WEB-INF/views/common/layout.jsp"/>
	<!-- ============================================================== -->
	<!-- Start right Content here -->
	<!-- ============================================================== -->
	<div layout:fragment="content">
		<div class="main-content">

			<div class="page-content">
				<div class="container-fluid">

					<!-- start page title -->
<%-- 					<div th:replace="page-title :: topnavbar(${title},${item},${subitem})"></div> --%>
					<c:import url="/WEB-INF/views/common/page-title.jsp"/>
					<!-- end page title -->
					<h1>문의 목록 페이지</h1>
					
					<!-- end row -->
				</div>
				<!-- container-fluid -->
			</div>
			<!-- End Page-content -->
			<!-- Start footer -->
<!-- 			<div th:replace="footer :: footer"></div> -->
			<c:import url="/WEB-INF/views/common/footer.jsp"/>
			<!-- end footer -->
			
		</div>
	</div>
	<!-- end main content-->

	<!-- END layout-wrapper -->

<!-- 	<th:block layout:fragment="script"/> -->

</body>
</html>