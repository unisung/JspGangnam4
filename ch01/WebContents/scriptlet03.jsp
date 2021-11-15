<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0부터 10까지의 수 중 짝수 출력</title>
</head>
<body>
<!-- 스크립틀릿 끼리 끊어지더라도 서블릿으로 변경시 합쳐짐 -->
<%
	for(int i=0;i<=10;i++){
		if(i%2==0){ %>
		<%=i %><br>
		<% }
	}
%>
</body>
</html>