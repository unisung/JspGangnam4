<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>------------- 세션 삭제 전 -------------</h4>
<%
	 String name; String value;
	 Enumeration en = session.getAttributeNames();
	 int i=0;
	 while(en.hasMoreElements()){
		 i++;
		 name=en.nextElement().toString();
		 value =session.getAttribute(name).toString();
		 
		 out.print("설정된 세션의 속성 이름["+i+"] : "+ name+"<br>");
		 out.print("설정된 세션의 속성 값["+i+"] : "+ value+"<br>");
	 }
	 
	 session.removeAttribute("userId");
%>
<hr>
<h4>------------- 세션 삭제 후 -------------</h4>
<%
	 en = session.getAttributeNames();
	 i=0;
	 while(en.hasMoreElements()){
		 i++;
		 name=en.nextElement().toString();
		 value =session.getAttribute(name).toString();
		 
		 out.print("설정된 세션의 속성 이름["+i+"] : "+ name+"<br>");
		 out.print("설정된 세션의 속성 값["+i+"] : "+ value+"<br>");
	 }
%>
</body>
</html>