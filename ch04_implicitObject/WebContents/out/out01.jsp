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
	int grade=7;

   if(grade>10){
	   %><%="A"%><%
   }else if(grade>5){
	   %><%="B"%><%
   }else {
	   %><%="C"%><%
   }
%>
<hr>
<% 
   if(grade>10){
	 out.print("A"); 
   }else if(grade>5){
	   out.print("B");
   }else {
	   out.print("C");
   }
%>
</body>
</html>