<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"
    %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>1st Spring Web Project</title>
<style type="text/css">
div.lineA {
	height: 100px;
	border: 1px solid gray;
	float: left;
	position: relative;
	left: 120px;
	margin: 5px;
	padding: 5px;
}
div#banner {
	width: 500px;
	padding: 20;
}
div#banner img {
	width: 450px;
	height: 80px;
}
div#loginBox {
	width: 280px;
	font-size: 10pt;
	text-align: left;
	padding-left: 20px;
}
div#loginBox button {
	width: 250px;
	height: 35px;
	background-color: navy;
	color: white;
	margin-top: 10px;
	margin-bottom: 15px;
	font-size: 14pt;
	font-weight: bold;
}
</style>
<script type="text/javascript" src="/first/resources/js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">
function movePage(){
	//자바스크립트로 페이지 이동 또는 서블릿 컨트롤러 연결 요청시
	//location 내장객체의 href 속성을 사용함
	location.href = "loginPage.do";
}

$(function(){
	// 최근 등록된 공지글 3개 전송받아서 출력 처리
		$.ajax({
		url:"ntop3.do",
		type:"post",
		dataType:"json",
		success: function(data){
			console.log("success : " + data);
			
			//object --> string
			var str = JSON.stringify(data);
			
			// string --> json
			var json = JSON.parse(str);
			
			values = "";
			
			for(var i in json.nlist) {
				values += "<tr><td>" + json.nlist[i].no + "</td><td><a href='ndetail.do?noticeno="
						+ json.nlist[i].no + "'>" 
				+ decodeURIComponent(json.nlist[i].title).replace(/\+/gi," ") + "</a></td><td>"
				+ json.nlist[i].date + "</td></tr>";
			}
			
			$('#newnotice').html($('#newnotice').html() + values);
		},
		error: function(jqXHR, textStatus, errorThrown ){
			console.log("error : " + jqXHR + ", " + textStatus + ", " + errorThrown);
		}
	}); // .ajax()
	
	
	// 조회수 많은 인기 게시글 상위 3개 조회 출력 처리
	$.ajax({
		url:"btop3.do",
		type:"get",
		dataType:"json",
		success: function(data){
			console.log("success : " + data);
			//console.log(data.blist[0].bnum + ", " + data.blist[0].btitle + ", " + data.list[0].rcount);
			
			//object --> string
			var str = JSON.stringify(data);
			
			// string --> json
			var json = JSON.parse(str);
			console.log(json);
			values = "";
			
			for(var i in json.list){
				// 로그인한 회원만 게시글 상세보기를 할 수 있게 한다면
				<c:if test="${ !empty loginMember }">
				
				values += "<tr><td>" + json.list[i].bnum + "</td><td><a href='bdetail.do?bnum="
						+ json.list[i].bnum + "'>" 
				+ decodeURIComponent(json.list[i].btitle).replace(/\+/gi," ") + "</a></td><td>"
				+ json.list[i].rcount + "</td></tr>";
				</c:if>

				<c:if test="${ empty loginMember }">
				
				values += "<tr><td>" + json.list[i].bnum + "</td><td>" 
				+ decodeURIComponent(json.list[i].btitle).replace(/\+/gi," ") + "</td><td>"
				+ json.list[i].rcount + "</td></tr>";
				</c:if>
			}
			
			$('#toplist').html($('#toplist').html() + values);
		},
		error: function(jqXHR, textStatus, errorThrown ){
			console.log("error : " + jqXHR + ", " + textStatus + ", " + errorThrown);
		}
	}); // .ajax()
	
}); // document ready


</script>
</head>


<body>
<h1>Spring web Project : first</h1>
<%-- <%@ include file="views/common/menubar.jsp" %> --%>
<c:import url="/WEB-INF/views/common/menubar.jsp"/>
loginMember = "${ loginMember }"
<!-- context root 명을 쓸 필요 없음 -->
<center>
	<div id='banner' class="lineA">
		<img src="/first/resources/images/photo2.jpg">
	</div>
	<%-- 로그인하지 않은 상태일 때 --%>
<%-- 	<% if(loginMember == null) { %> --%>
	<c:if test="${ empty loginMember }">
	<div id="loginBox" class="lineA">
	first 사이트 방문을 환영합니다.
	<button onclick="movePage();">로그인 하세요.</button><br>
	<a>아이디/비밀번호 조회</a> &nbsp; 
	<a href="enrollPage.do">회원가입</a>
	</div>

	<%-- 로그인한 상태일 때 --%>
	</c:if>
<%-- 	<% }else{ %> --%>
	<c:if test="${ !empty loginMember }">
	<div id="loginBox" class="lineA">
<%-- 	<%= loginMember.getUserName() %> 님. &nbsp; --%>
	${ loginMember.userName } 님. &nbsp;
	<a href="logout.do">로그아웃</a>
	<a>메일</a> &nbsp; <a>채팅</a> &nbsp; <a>쪽지</a><br>
	
	<c:url var="callMyInfo" value="myinfo.do">
		<c:param name="userId" value="${ sessionScope.loginMember.userId }"/>
	</c:url>
	
	<a href="${ callMyInfo }">My Page</a><br>
	
<!-- 	<a href="/first/views/member/myInfoPage.jsp">마이페이지</a><br> -->
	<%--
		a 태그로 서버 컨트롤러(서블릿)로 값을 전송하는 방법
		쿼리 스트링(query string) 사용함
		?전송이름 = 전송값&전송이름=전송값  (공백이 없도록 주의함)
		a href="연결대상?전송이름=전송값"
		a 태그의 전송 method 는 get 임
	 --%>
	</div>
	</c:if>
<%-- 	<% } %> --%>
</center>
<hr style="clear:both">

<%-- 최근 등록된 공지글 3개 출력 : ajax --%>
<div style="float:left;border:1px solid navy;padding:5px;margin:5px;margin-left:200px;">
	<h4>새로운 공지사항</h4>
	<table id="newnotice" border="1" cellspacing=0>
		<tr><th>번호</th><th>제목</th><th>날짜</th></tr>
		
	</table>
</div>


<%-- 조회수 많은 인기게시글 3개 출력 : ajax --%>
<div style="float:left;border:1px solid navy;padding:5px;margin:5px;">
	<h4>인기 게시글</h4>
	<table id="toplist" border="1" cellspacing=0>
		<tr><th>번호</th><th>제목</th><th>조회수</th></tr>
		
	</table>
</div>

<hr style="clear:both;">
<%-- jsp 파일 안에 별도로 작성된 jsp, html 파일을 포함할 수 있다 --%>
<%-- <%@ include file="views/common/footer.jsp" %> --%>
<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>