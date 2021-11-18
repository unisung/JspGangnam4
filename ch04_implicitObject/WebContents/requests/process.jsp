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
    /* request로 넘어온파라미터의 문자셋 설정  */
    request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
%>
<p>아이디:<%=name %>

</body>
</html>