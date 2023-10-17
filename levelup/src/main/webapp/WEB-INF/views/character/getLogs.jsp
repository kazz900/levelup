<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
<!-- <h2>2. 서버로 전송하는 값 있고, 결과로 문자열을 받아서 출력: post 방식</h2> -->
userId : <input type="text" id="userId"> <br>
charId : <input type="number" id="charId"> <br>
<textarea id='loginlog' style="width:300px;height:50px;border:1px solid blue;"></textarea>
<br>
<textarea id='charlog' style="width:300px;height:50px;border:1px solid blue;"></textarea>
<br>
<textarea id='picklog' style="width:300px;height:50px;border:1px solid blue;"></textarea>
<br>
<textarea id='inventory' style="width:300px;height:50px;border:1px solid blue;"></textarea>
<br>

<button id="getlogs">get logs</button>

<hr>


	 	<!-- container-fluid -->			
		</div>
	<!-- page-content -->		
	</div>
<!-- 푸터(자바스크립트 로딩) -->
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</div> <!-- main-content -->

<script type="text/javascript">
$(function(){
	//jQuery('selector').method([args, .... ]);
	// $('selector').method(..).method(..).method(..);
	$('#getlogs').click(function(){
		// 서버측 컨트롤러로 서비스 요청하고 결과로 문자열을 받는 경우에는 
		// $.get('요청 url', {전송이름: 전송값}, function(data){ 요청 성공시 리턴값 받는 함수 })

		$.ajax({
			url: 'loginLog.do',
			type: 'post',
			data: {userId: $('#userId').val()},
			//dataType: 'text' // 'text'는 기본값이므로 생략 가능함
			success: function(data){
				// 태그 안에 값 추가하는 방식
			//	$('#loginlog').html($('#loginlog').text() + "<br>" +  data);
				$('#loginlog').text(data);
			}
		}); // ajax

		// ajax 사용
		$.ajax({
			url: 'charLog.do',
			type: 'post',
			data: {charId: $('#charId').val()},
			//dataType: 'text' // 'text'는 기본값이므로 생략 가능함
			success: function(data){
				// 태그 안에 값 추가하는 방식
				$('#charlog').text(data);
				console.log(data);
			}
		}); // ajax
		
		$.ajax({
			url: 'pickLog.do',
			type: 'post',
			data: {charId: $('#charId').val()},
			//dataType: 'text' // 'text'는 기본값이므로 생략 가능함
			success: function(data){
				// 태그 안에 값 추가하는 방식
				$('#picklog').text(data);
				console.log(data);
			}
		}); // ajax
	
		$.ajax({
			url: 'inventory.do',
			type: 'post',
			data: {charId: $('#charId').val()},
			//dataType: 'text' // 'text'는 기본값이므로 생략 가능함
			success: function(data){
				// 태그 안에 값 추가하는 방식
				//$('#p2').html($('#p2').text() + "<br>" +  data);
				$('#inventory').text(data);
			}
		}); // ajax

	}); // click
}); // document ready
</script>
</body>
</html>

