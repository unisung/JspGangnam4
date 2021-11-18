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
    request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
    String password =request.getParameter("passwd");
%>
<%
  out.print("아이디: "+id+"<br>");
  out.print("비밀번호: "+password+"<br>");
%>
</body>
</html>