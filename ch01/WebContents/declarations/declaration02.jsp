<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전역변수(필드,맴버변수) 선언</title>
</head>
<body>
<!-- 맴버변수, 필드  -->
<%! int data = 50; %>
<%
	out.print("Value of the variable is : " + data);
%>
</body>
</html>