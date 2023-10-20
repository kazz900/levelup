<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

		<div class="vertical-menu">
			<div data-simplebar class="h-100">

				<!--- Sidemenu -->
				<div id="sidebar-menu">
					<!-- Left Menu Start -->
					<ul class="metismenu list-unstyled" id="side-menu">
						<li class="menu-title" key="t-menu">Menu</li>
						<!-- 고객센터 -->
						<li>
							<a href="javascript: void(0);" class="has-arrow waves-effect">
								<i class="bx bx-home-circle"></i>
								<span key="t-dashboards">고객센터</span>
							</a>
							<ul class="sub-menu" aria-expanded="false">
								<li><a href="${pageContext.servletContext.contextPath}/ilist.do" key="t-default">유저 문의</a></li>
								<li><a href="${pageContext.servletContext.contextPath}/moveusearch.do" key="t-default">유저 검색</a></li>
								<li><a href="${pageContext.servletContext.contextPath}/chardetailview.do" key="t-default">캐릭터 검색</a></li>
								<li><a href="ulist.do" key="t-default">유저 목록</a></li>
								<li><a href="umain.do" key="t-default">유저 홈페이지</a></li>
								<li><a href="listChar.do" key="t-default">게임캐럭터 목록</a></li>
								<li><a href="getLogs.do" key="t-default">캐럭터 게임로그 출력</a></li>
								<li><a href="movepaylist.do" key="t-default">전체 결제 내역</a></li>
							</ul>
						</li>
						
						<li class="mm-active">
                                <a href="javascript: void(0);" class="has-arrow waves-effect" aria-expanded="true">
                                    <i class="bx bx-detail"></i>
                                    <span key="t-blog">기안관리</span>
                                </a>
                                <ul class="sub-menu mm-collapse mm-show" aria-expanded="false" style="">
                                    <li><a href="${pageContext.servletContext.contextPath}/mclist.do?employeeId=${ sessionScope.loginEmployee.employeeId }" key="t-blog-list">My 기안함</a></li>
                                    <li><a href="${pageContext.servletContext.contextPath}/clist.do" key="t-blog-list">전체 기안 목록</a></li>
                                </ul>
                            </li>
						
						
						<li>
							<a href="javascript: void(0);" class="has-arrow waves-effect">
								<i class="bx bx-home-circle"></i>
								<span key="t-dashboards">일정관리</span>
							</a>
							<ul class="sub-menu" aria-expanded="false">
								<li><a href="calendar.do" key="t-default">일정보기</a></li>
								<li><a href="#" key="t-default">일정등록</a></li>
								<li><a href="#" key="t-default">일정수정</a></li>
								<li><a href="#" key="t-default">일정삭제</a></li>
							</ul>
						</li>						

						<li>
							<a href="javascript: void(0);" class="has-arrow waves-effect">
								<i class="bx bx-home-circle"></i>
								<span key="t-dashboards">게시판</span>
							</a>
							<ul class="sub-menu" aria-expanded="false">
								<li><a href="movecom.do" key="t-default">게시판</a></li>
								<li><a href="movecomdetail.do" key="t-default">DetailView</a></li>
								<li><a href="#" key="t-default">일정수정</a></li>
								<li><a href="#" key="t-default">일정삭제</a></li>
							</ul>
						</li>	
						
						<li>
							<a href="javascript: void(0);" class="has-arrow waves-effect">
								<i class="fas fa-skull"></i>
								<span key="t-dashboards">공지사항</span>
							</a>
							<ul class="sub-menu" aria-expanded="false">
								<li><a href="nlist.do" key="t-default">공지사항</a></li>
								<li><a href="ntlist.do" key="t-default">팀 공지사항</a></li>
								<li><a href="ndlist.do" key="t-default">부서 공지사항</a></li>
								<li><a href="ndetail.do" key="t-default">DetailView</a></li>
								<li><a href="#" key="t-default">공지사항 수정</a></li>
								<li><a href="#" key="t-default">공지사항 삭제</a></li>
							</ul>
						</li>	

						<li>
							<a href="javascript: void(0);" class="has-arrow waves-effect">
								<i class="bx bx-layout"></i>
								<span key="t-layouts">Layouts</span>
							</a>
							<ul class="sub-menu" aria-expanded="true">
								<li>
									<a href="javascript: void(0);" class="has-arrow" key="t-vertical">Vertical</a>
									<ul class="sub-menu" aria-expanded="true">
										<li><a href="/layouts-light-sidebar" key="t-light-sidebar">Light Sidebar</a>
										</li>
										<li><a href="/layouts-compact-sidebar" key="t-compact-sidebar">Compact
												Sidebar</a></li>
										<li><a href="/layouts-icon-sidebar" key="t-icon-sidebar">Icon Sidebar</a>
										</li>
										<li><a href="/layouts-boxed" key="t-boxed-width">Boxed Width</a></li>
										<li><a href="/layouts-preloader" key="t-preloader">Preloader</a></li>
										<li><a href="/layouts-colored-sidebar" key="t-colored-sidebar">Colored
												Sidebar</a></li>
										<li><a href="/layouts-scrollable" key="t-scrollable">Scrollable</a></li>
									</ul>
								</li>

								<li>
									<a href="javascript: void(0);" class="has-arrow" key="t-horizontal">Horizontal</a>
									<ul class="sub-menu" aria-expanded="true">
										<li><a href="/layouts-horizontal" key="t-horizontal">Horizontal</a></li>
										<li><a href="/layouts-hori-topbar-light" key="t-topbar-light">Topbar
												light</a>
										</li>
										<li><a href="/layouts-hori-boxed-width" key="t-boxed-width">Boxed width</a>
										</li>
										<li><a href="/layouts-hori-preloader" key="t-preloader">Preloader</a></li>
										<li><a href="/layouts-hori-colored-header" key="t-colored-topbar">Colored
												Header</a></li>
										<li><a href="/layouts-hori-scrollable" key="t-scrollable">Scrollable</a>
										</li>
									</ul>
								</li>
							</ul>
						</li>

						<li class="menu-title" key="t-pages">Pages</li>

						<li>
							<a href="javascript: void(0);" class="has-arrow waves-effect">
								<i class="bx bx-user-circle"></i>
								<span key="t-authentication">Authentication</span>
							</a>
							<ul class="sub-menu" aria-expanded="false">
								<li><a href="/auth/login" key="t-login">Login</a></li>
								<li><a href="/auth/login-2" key="t-login-2">Login 2</a></li>
								<li><a href="/auth/register" key="t-register">Register</a></li>
								<li><a href="/auth/register-2" key="t-register-2">Register 2</a></li>
								<li><a href="/auth/recoverpw" key="t-recover-password">Recover Password</a></li>
								<li><a href="/auth/recoverpw-2" key="t-recover-password-2">Recover Password 2</a>
								</li>
								<li><a href="/auth/lock-screen" key="t-lock-screen">Lock Screen</a></li>
								<li><a href="/auth/lock-screen-2" key="t-lock-screen-2">Lock Screen 2</a></li>
								<li><a href="/auth/confirm-mail" key="t-confirm-mail">Confirm Email</a></li>
								<li><a href="/auth/confirm-mail-2" key="t-confirm-mail-2">Confirm Email 2</a></li>
								<li><a href="/auth/email-verification" key="t-email-verification">Email
										verification</a>
								</li>
								<li><a href="/auth/email-verification-2" key="t-email-verification-2">Email
										Verification
										2</a></li>
								<li><a href="/auth/two-step-verification" key="t-two-step-verification">Two Step
										Verification</a></li>
								<li><a href="/auth/two-step-verification-2" key="t-two-step-verification-2">Two Step
										Verification 2</a></li>
							</ul>
						</li>


						<li class="menu-title" key="t-components">Components</li>

						<li>
							<a href="javascript: void(0);" class="has-arrow waves-effect">
								<i class="bx bx-share-alt"></i>
								<span key="t-multi-level">Multi Level</span>
							</a>
							<ul class="sub-menu" aria-expanded="true">
								<li><a href="javascript: void(0);" key="t-level-1-1">Level 1.1</a></li>
								<li>
									<a href="javascript: void(0);" class="has-arrow" key="t-level-1-2">Level 1.2</a>
									<ul class="sub-menu" aria-expanded="true">
										<li><a href="javascript: void(0);" key="t-level-2-1">Level 2.1</a></li>
										<li><a href="javascript: void(0);" key="t-level-2-2">Level 2.2</a></li>
									</ul>
								</li>
							</ul>
						</li>

					</ul>
				</div>
			</div>
			<!-- Sidebar -->


		</div>
