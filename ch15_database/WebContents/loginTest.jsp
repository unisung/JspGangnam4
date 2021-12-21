<%@page import="ch15_database.MemberDao"%>
<%@page import="ch15_database.Member"%>
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
  String id=   request.getParameter("id");
  String password=request.getParameter("password");
  
  Member member = new Member();
  member.setId(id);
  member.setPassword(password);
  
  MemberDao dao = MemberDao.getInstance();
 %>
<%=dao.loginCheck(member)%>
</body>
</html>