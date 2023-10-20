<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="/WEB-INF/views/common/head-script.jsp"/>
<title>userMain</title>
<c:url var="gouloginpage" value="gouloginpage.do" />
<script src="resources/js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">

$(function(){
    
   
    // 세션 상태를 JavaScript 변수에 할당
    var isUserLoggedIn = ${not empty sessionScope.loginUser};

    if (isUserLoggedIn) {
        $.ajax({
            url: "item3.do",
            type: "post",
            dataType: "json",
            success: function(data) {
                console.log("success : " + data);

                var str = JSON.stringify(data);
                var json = JSON.parse(str);
                var values = "";

                for (var i in json.list) {
                    values += "<div class='user-item-card'><img src='/levelup/resources/images/itemlist/"
                        + json.list[i].itemId + ".png' alt='item" + json.list[i].itemId + "'>"
                        + "<h3>" + json.list[i].itemName + "</h3>"
                        + "<p> -" + json.list[i].discountRate + "%</p>"
                        + "<a href='" + "${pageContext.servletContext.contextPath}/itembuypage.do?itemname=" 
                        + json.list[i].itemName + "' class='btn btn-secondary'>구매하기</a></div>";
                }

                $('#user-items').html($('#user-items').html() + values);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log("error : " + jqXHR + ", " + textStatus + ", " + errorThrown);
            }
        });
    }else{
    	$('.purchase-button').click(function() {
            loginalert();
        });
    	
    	$.ajax({
            url: "item3.do",
            type: "post",
            dataType: "json",
            success: function(data) {
                console.log("success : " + data);

                var str = JSON.stringify(data);
                var json = JSON.parse(str);
                var values = "";

                for (var i in json.list) {
                    values += "<div class='user-item-card'><img src='/levelup/resources/images/itemlist/"
                        + json.list[i].itemId + ".png' alt='item" + json.list[i].itemId + "'>"
                        + "<h3>" + json.list[i].itemName + "</h3>"
                        + "<p> -" + json.list[i].discountRate + "%</p>"
                        + "<a class='btn btn-secondary purchase-button' onclick='logincheck()'>구매하기</a></div>";
                }
                
                $('#user-items').html($('#user-items').html() + values);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log("error : " + jqXHR + ", " + textStatus + ", " + errorThrown);
            }
        });


    }

});
function logincheck(){
	alert("상품을 구매하시려면\n먼저 로그인하세요.");
}
function logingamecheck(){
	alert("게임을 시작하시려면\n먼저 로그인하세요.");
}
function cmdgame(){
	window.location.href = "test://";
}
</script>
</head>
<body>

	<c:import url="/WEB-INF/views/user/userHeader.jsp"/>

	<section class="hero">
	
		<div class="container">
		<h3>welcome to Manaworld</h3>
			<c:if test="${ empty sessionScope.loginUser }">
				<div class="umainloginbox">
					<div class="gamestartbox" onclick="logingamecheck()">게임 시작
					</div>
					<div class="uloginbox" onclick="gouloginpage()">로그인하러가기</div>
					
				</div>
			</c:if>
			<c:if test="${ !empty sessionScope.loginUser }">
				<div class="umainloginbox">
					<div class="gamestartbox" onclick="cmdgame()">게임 시작</div>
					<hr>
					<div class="uloginbox2">
						${loginUser.userId} 님 방문을 환영합니다.
					</div>
					<a href="logout.do">로그아웃</a>
				</div>
			</c:if>
		</div>
	</section>

	<section class="featured-games">
		<div class="container">
			<h3>event cash shop</h3>
			<br>
			<div class="user-items" id="user-items">
				<!-- <div class="user-item-card">
					<img src="#" alt="item 1">
					<h3>item Title 1</h3>
					<p>Explore a fantastic world in this epic adventure.</p>
					<a href="#" class="btn btn-secondary">구매하기</a>
				</div>
				<div class="user-item-card">
					<img src="#" alt="item 2">
					<h3>item Title 2</h3>
					<p>Compete with friends in this exciting multiplayer game.</p>
					<a href="#" class="btn btn-secondary">구매하기</a>
				</div>
				<div class="user-item-card">
					<img src="#" alt="item 3">
					<h3>item Title 3</h3>
					<p>Compete with friends in this exciting multiplayer game.</p>
					<a href="#" class="btn btn-secondary">구매하기</a>
				</div> -->
			</div>
		</div>
	</section>
<c:import url="/WEB-INF/views/user/userFooter.jsp"/>

<script type="text/javascript">
function gouloginpage(){
    location.href = "${gouloginpage}";
}
</script>
<script type="text/javascript">
function cmd() {
    var obj = new ActiveXObject("WScript.Shell");
    obj.Run("C:\\test\\sample.exe");
}
</script>
</body>
</html>