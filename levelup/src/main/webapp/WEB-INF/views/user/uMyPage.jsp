<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="/WEB-INF/views/common/head-script.jsp"/>
<title>Insert title here</title>
<script src="resources/js/jquery-3.7.0.min.js"></script>

</head>
<body>
<c:import url="/WEB-INF/views/user/userHeader.jsp"/>

<h2>${ sessionScope.loginUser.userId }님의 마이페이지</h2>

<br><br><br>
<h4>캐릭터 리스트</h4>
<table align="center" border="1" cellspacing="0" width="700">
<tr>
	<th>캐릭터 이름</th>
	<th>레벨</th>
	<th>보유 zeny</th>
	<th>힘(str)</th>
	<th>방어력(vit)</th>
	<th>재주/기교(dex)</th>
	<th>운(luk)</th>
	<th>최대채력</th>
	<th>현재채력</th>
	<th>최대마나</th>
	<th>현재마나</th>
</tr>
<c:forEach items="${requestScope.charList }" var="c">
	<tr>
		<td align="center">${c.name }</td>
		<td align="center">${c.baseLevel }</td>
		<td align="center">${c.zeny }</td>
		<td align="center">${c.str }</td>
		<td align="center">${c.vit }</td>
		<td align="center">${c.dex }</td>
		<td align="center">${c.luk }</td>
		<td align="center">${c.maxHp }</td>
		<td align="center">${c.hp }</td>
		<td align="center">${c.maxSp }</td>
		<td align="center">${c.sp }</td>
	</tr>
</c:forEach>
</table>
<br><br><br>
<h4>결제 내역</h4>
<br> &nbsp;  &nbsp; <p>캐릭터 선택</p>
<table id="charlist" cellspacing="0" width="700">
		</table>
		<div id="selectedCharacter"></div>
<tr>
	<th>캐릭터 이름</th>
	<th>레벨</th>
	<th>보유 zeny</th>
	<th>힘(str)</th>
	<th>방어력(vit)</th>
	<th>재주/기교(dex)</th>
	<th>운(luk)</th>
	<th>최대채력</th>
	<th>현재채력</th>
	<th>최대마나</th>
	<th>현재마나</th>
</tr>
<c:forEach items="${requestScope.paymentList }" var="p">

</c:forEach>


<br><br><br>
<h4>결제 내역</h4>
<tr>
	<th>캐릭터 이름</th>
	<th>레벨</th>
	<th>보유 zeny</th>
	<th>힘(str)</th>
	<th>방어력(vit)</th>
	<th>재주/기교(dex)</th>
	<th>운(luk)</th>
	<th>최대채력</th>
	<th>현재채력</th>
	<th>최대마나</th>
	<th>현재마나</th>
</tr>
<c:forEach items="${requestScope.inquiryList }" var="i">

</c:forEach>




<c:import url="/WEB-INF/views/user/userFooter.jsp"/>
<script type="text/javascript">
$(document).ready(function() {
	var accountId = "${sessionScope.loginUser.accountId}";
	$.ajax({
		url: "charlist.do",
		type: "post",
		dataType: "json",
		data: { accountId: accountId },
		success: function(data){
			console.log("success : " + data);
			
			//object --> string
			var str = JSON.stringify(data);
			
			//string --> json
			var json = JSON.parse(str);
			
			values = "";			
			for(var i in json.list){
				//로그인한 회원만 게시글 상세보기를 할 수 있게 한다면
				
				values = "<select name='charName'>";
				values += "<option value=''>캐릭터를 선택해주세요</option>"; // 선택 안했을 때의 옵션
				for (var i in json.list) {
				    values += "<option value='" + json.list[i].name + "'>" + json.list[i].name + "</option>";
				}
				values += "</select><input type='hidden' name='charId' value='"+ json.list[i].charId +"'></td>";
			}
			
			$('#charlist').html($('#charlist').html() + values);
			
			 $select.on('change', function() {
                var selectedCharacterName = $(this).val();
                console.log("데이터값 확인 1 : " + selectedCharacterName);
                $('#selectedCharacter').text("선택된 캐릭터: " + selectedCharacterName);
            });
		},
		error: function(jqXHR, textStatus, errorThrown){
			console.log("error : " + jqXHR + ", " + textStatus + ", " + errorThrown);
		}
	}); 
});
</script>
</body>
</html>