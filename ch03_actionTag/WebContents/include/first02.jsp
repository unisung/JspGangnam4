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
<h3>이 파일은 first02.jsp입니다</h3>
<jsp:include page="second02.jsp">
  <jsp:param value="<%=new Date()%>" name="date"/>
</jsp:include>
</body>
</html>