<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 서블릿으로 변환시 병합. 선언부에서 선언한 변수 및 함수도
    현재페이지에서 선언된것처럼 서블릿에 생성됨. -->
<%@ include file="include02_header.jsp" %>
<p>방문해 주셔서 감사합니다.</p>
<%@ include file="include02_footer.jsp" %>
</body>
</html>