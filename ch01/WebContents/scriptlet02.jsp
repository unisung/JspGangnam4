<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>두수의 합 출력</title>
</head>
<body>
<%
	int a=2;
    int b=3;
    int sum = a+b;
    
    /* out은 서블릿으로 변환시 자동으로 선언되는 내장객체 참조변수 9개 중 하나임. */
    out.println("2 + 3 = " + sum);
%>
<BR>
<!-- 서블릿으로 변경시 out.print()로 변경됨.  -->
<%="2 + 3 = " + sum %>
</body>
</html>