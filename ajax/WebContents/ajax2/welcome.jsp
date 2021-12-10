<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
  String name=request.getParameter("username");
%>
<!-- request.getParameter("username")  -->
<%-- 환영합니다.${param.username}님 --%>
환영합니다.<%=name %>님
</body>
</html>