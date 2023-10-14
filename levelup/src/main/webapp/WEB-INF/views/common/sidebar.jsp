<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!-- 	<div th:fragment="sidebar" th:remove="tag"> -->
		<div class="vertical-menu">
			<div data-simplebar class="h-100">

				<!--- Sidemenu -->
				<div id="sidebar-menu">
					<!-- Left Menu Start -->
					<ul class="metismenu list-unstyled" id="side-menu">
						<li class="menu-title" key="t-menu">Menu</li>

						<li>
							<a href="javascript: void(0);" class="has-arrow waves-effect">
								<i class="bx bx-home-circle"></i>
								<span key="t-dashboards">Dashboard</span>
							</a>
							<ul class="sub-menu" aria-expanded="false">
								<li><a href="/" key="t-default">Default</a></li>
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
<!-- 	</div> -->
