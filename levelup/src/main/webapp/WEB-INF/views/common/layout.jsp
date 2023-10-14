<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!-- 	<div th:replace="title-meta :: title-meta"></div> -->
<%-- 	<c:import url="title-meta.jsp"/> --%>
	<!-- Page CSS -->
<!-- 	<th:block layout:fragment="pagecss" /> -->
<!-- 	<div th:replace="head-script :: head"></div> -->
<%-- 	<c:import url="head-script.jsp"/> --%>
<body data-sidebar="dark" data-layout-mode="light">
	<div id="layout-wrapper">
		<!-- Start Header -->
<!-- 		<div th:replace="header :: header"></div> -->
		<c:import url="header.jsp"/>
		<!-- end Header -->
		<div th:replace="sidebar :: sidebar"></div>
		<c:import url="sidebar.jsp"/>
		<section layout:fragment="content" th:remove="tag">

		</section>
	</div>

	<!-- Content Section -->

<!-- 	<div th:replace="right-bar :: rightbar"></div> -->
	<c:import url="right-bar.jsp"/>
	<!-- /Right-bar -->

	<!-- Right bar overlay-->
	<div class="rightbar-overlay"></div>


<!-- 	<div th:replace="head-script :: script"></div> -->


<!-- 	<th:block layout:fragment="script" /> -->
	<!-- App js -->
<!-- 	<script th:src="@{/assets/js/app.js}"></script> -->

