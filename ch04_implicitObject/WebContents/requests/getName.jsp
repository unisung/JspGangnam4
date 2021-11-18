<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>getName.jsp페이지 </h1>
<%
  /* 넘어온 request객체의 문자셋을 현재페이지에 맞게 설정 
    request.setCharacterEncding() 메소드는 항상 제일 위에 위치
  */
   request.setCharacterEncoding("utf-8");
   String name=request.getParameter("name");
%>
<%=name %>

</body>
</html>