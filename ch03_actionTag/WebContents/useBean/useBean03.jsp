<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Date date = new java.util.Date() API 빈으로 생성 -->
<jsp:useBean id="date" class="java.util.Date"/>
<p>
	<% out.print("오늘의 날짜 및 시간"); %>
</p><%=date%>
</body>
</html>