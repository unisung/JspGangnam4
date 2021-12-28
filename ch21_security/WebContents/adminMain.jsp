<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% session.setAttribute("sessionId", "admin");
   String id = request.getParameter("id");
   String sessionId=(String)session.getAttribute("sessionId");
   if(!id.equals(sessionId)){
	   out.print("<script>alert('관리자로 로그인하세요');</script>");
	   out.print("<script>location.href='login.jsp'</script>");
	   //response.sendRedirect("login.jsp");
   }
%>
<h1>admin main</h1>
</body>
</html>