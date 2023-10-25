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
<script src="resources/js/jquery-3.7.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1/dist/chart.min.js"></script>
<script type="text/javascript">
function truncateString(str, maxLength) {
    if (str.length > maxLength) {
        return str.substring(0, maxLength) + "...";
    } else {
        return str;
    }
}

$(function(){
	
	$.ajax({
		url: "notices5.do",
		type: "post",
		data: { keyword: "${loginEmployee.departmentId}" },
		dataType: "json",
		success: function(data){
			console.log("success : " + data);
			
			//object --> string
			var str = JSON.stringify(data);
			
			//string --> json
			var json = JSON.parse(str);
			
			values = "";			
			for(var i in json.nlist){
				var truncatedFilename = json.nlist[i].attachementFilename
				if(json.nlist[i].attachementFilename != null){
					var truncatedFilename = truncateString(json.nlist[i].attachementFilename, 5);
				}
				values += "<tr><td><a href='ndetail.do?noticeId=" + json.nlist[i].noticeId + "'>" + decodeURIComponent(json.nlist[i].title).replace(/\+/gi, " ") 
						+ "</a></td><td>"
						+ json.nlist[i].date
						+ "</td><td>"
						+ truncatedFilename + "</td></tr>";
			}
			
			$('#denotice').html($('#denotice').html() + values);
		},
		error: function(jqXHR, textStatus, errorThrown){
			console.log("error : " + jqXHR + ", " + textStatus + ", " + errorThrown);
		}
	}); 
	
	$.ajax({
		url: "communities5.do",
		type: "post",
		data: { keyword: "${loginEmployee.departmentId}" },
		dataType: "json",
		success: function(data){
			console.log("success : " + data);
			
			//object --> string
			var str = JSON.stringify(data);
			
			//string --> json
			var json = JSON.parse(str);
			
			values = "";			
			for(var i in json.nlist){
				var truncatedFilename = json.nlist[i].attachementFilename
				if(json.nlist[i].attachementFilename != null){
					var truncatedFilename = truncateString(json.nlist[i].attachementFilename, 5);
				}
					
					
				values += "<tr><td><a href='comdetail.do?board_id=" + json.nlist[i].board_id + "'>" + decodeURIComponent(json.nlist[i].title).replace(/\+/gi, " ") 
						+ "</a></td><td>"
						+ json.nlist[i].date
						+ "</td><td>"
						+ truncatedFilename + "</td></tr>";
			}
			
			$('#decommunity').html($('#decommunity').html() + values);
		},
		error: function(jqXHR, textStatus, errorThrown){
			console.log("error : " + jqXHR + ", " + textStatus + ", " + errorThrown);
		}
	}); 
	

})


</script>
</head>
<body data-sidebar="dark" data-layout-mode="light">

<c:if test="${ empty loginEmployee }">
   <c:redirect url="eloginPage.do"/>
</c:if>

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
					<div class="row">
						<div class="col-6 border border3 pt-3 pb-10">
							<h4>${loginEmployee.departmentId}부서 공지사항</h4>
							<table id="denotice" class="border border-4" cellspacing="0" width="80%">
								<tr><th>제목</th><th>날짜</th><th>첨부파일</th></tr>
							</table>
						</div>
						
						
						<div class="col-6 border border3 pt-3 pb-10">
							<h4>국내 게임 시장 데이터 시각화</h4>
							
							<iframe src="resources/iframe/index.html" width="100%" height="100%">
							</iframe>
							
						</div>
						
					</div>
		
					
					<br><br>
					<div class="row">
						<div class="col-6 border border3 pt-3 pb-3">
							<h4>${loginEmployee.departmentId}부서 게시글</h4>
							<table id="decommunity" class="border border-4" cellspacing="0" width="80%">
								<tr><th>제목</th><th>날짜</th><th>첨부파일</th></tr>
							</table>
						</div>
						
						
						<div class="col-6 border border3 pt-3 pb-3">
						<div style="width: 280px;height: 280px;text-align: center;">
							<canvas id="myChart" width="400px" height="400px"></canvas>
						</div>
						</div>

					</div>
					
					
					
					
					
					
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
<script type="text/javascript">

$(function(){
    $.ajax({
        url: "itemlist5.do",
        type: "post",
        dataType: "json",
        success: function(data) {
            var str = JSON.stringify(data);
            var json = JSON.parse(str);

            var itemId = [];
            var itemCount = [];

            for (var i in json.nlist) {
                itemId.push(json.nlist[i].itemId);
                itemCount.push(json.nlist[i].amount);
            }

            // 차트를 생성하고 데이터를 설정
            var chartArea = document.getElementById('myChart').getContext('2d');
            var myChart = new Chart(chartArea, {
                type: 'bar',
                data: {
                    labels: [itemId[0], itemId[1], itemId[2], itemId[3], itemId[4]],
                    datasets: [{
                        label: '# of items',
                        data: [itemCount[0], itemCount[1], itemCount[2], itemCount[3], itemCount[4]],
                        backgroundColor: 'rgba(255, 99, 132, 0.2)',
                        borderColor: 'rgba(255, 99, 132, 1)',
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        },
        error: function(request, status, errorData) {
            console.log("error code : " + request.status 
                    + "\nMessage : " + request.responseText
                    + "\nError : " + errorData);
        }
    });
});
</script>
</body>
</html>