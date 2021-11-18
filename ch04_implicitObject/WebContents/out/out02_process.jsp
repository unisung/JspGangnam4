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
    String password 
      =request.getParameter("passwd");
 
    //로그인 처리
    if("관리자".equals(id) && "1234".equals(password)){
    	 session.setAttribute("id", id);
    	response.sendRedirect("../responses/response01_success.jsp"); 
    }else{
    	response.sendRedirect("../responses/response01_failed.jsp");
    }
%>
<%
  out.print("아이디: "+id+"<br>");
  out.print("비밀번호: "+password+"<br>");
%>
<hr>


</body>
</html>