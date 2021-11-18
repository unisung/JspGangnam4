<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object response</title>
</head>
<body>
<%
    /* 응답할 콘텐츠의 문자셋 및 생성되는 문서의 유형 설정  */
	response.setCharacterEncoding("utf-8");
    response.setContentType("text/html; charset=utf-8");
%>
<!-- 설정값 가져오기  -->
<p>문자 인코딩:<%=response.getCharacterEncoding() %>
<p>콘텐츠 유형:<%=response.getContentType() %>
</body>
</html>