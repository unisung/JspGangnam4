<%@page import="dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="memberDAO" class="dao.MemberRepository" 
   scope="session"/>
<%
   String id = request.getParameter("id");
    Member member = memberDAO.getMemberById(id) ;
%>
<b><%=member %></b>
</body>
</html>