<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

	<div id="layout-wrapper">
		<!-- Start Header -->
<!-- 		<div th:replace="header :: header"></div> -->
		<c:import url="/WEB-INF/views/common/header.jsp"/>
		<!-- end Header -->
		<div th:replace="sidebar :: sidebar"></div>
		<c:import url="/WEB-INF/views/common/sidebar.jsp"/>
		<section layout:fragment="content" th:remove="tag">

		<!-- Side Bar -->
		<c:import url="/WEB-INF/views/common/sidebar.jsp"/>

	</div>

	<!-- Content Section -->

<!-- 	<div th:replace="right-bar :: rightbar"></div> -->
	<c:import url="/WEB-INF/views/common/right-bar.jsp"/>
	<!-- /Right-bar -->
	<c:import url="right-bar.jsp"/>

	<!-- Right bar overlay-->
	<div class="rightbar-overlay"></div>

