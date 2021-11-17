<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- request로 넘어온 날짜정보를 받아서 출력 --%>
<%
	String date=request.getParameter("now");
%>
<h3>Today is:<%=date%></h3>
</body>
</html>