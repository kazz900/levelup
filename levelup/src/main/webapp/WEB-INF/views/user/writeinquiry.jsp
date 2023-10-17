<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>문의 작성</title>
</head>
<body>
    <c:import url="/WEB-INF/views/user/userHeader.jsp" />

    <form action="inquiry.do" method="post" enctype="multipart/form-data">
        <label for="userid">유저 ID:</label>
        <input type="text" id="userid" name="userId" value="${ sessionScope.loginUser.userId }" readonly><br>

        <label for="inquirytitle">문의 제목:</label>
        <input type="text" id="inquiryTitle" name="inquiryTitle" required><br>

        <label for="inquirycontent">문의 내용:</label>
        <textarea id="inquirycontent" name="inquiryContent" rows="4" cols="50" required></textarea><br>
        
        <label for="inquiryfile">첨부파일 :</label>
        <input type="file" name="upfile"><br>

        <input type="hidden" name="answerStatus" value="N">
        <input type="hidden" name="inquiryType" value="3">
		<br><br>
		<c:url var="bl" value="uhelp.do">
	 		<c:param name="page" value="1" />
	 	</c:url>
        <input type="submit" value="문의 작성하기">
        <input type="reset" value="작성취소"> &nbsp;
        <input type="button" value="목록" 
			onclick="javascript:location.href='${bl}'; return false;">
    </form>

    <c:import url="/WEB-INF/views/user/userFooter.jsp" />
</body>
</html>