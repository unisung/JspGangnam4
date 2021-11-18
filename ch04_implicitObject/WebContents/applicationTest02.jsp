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
<!-- application 기본 객체  -->
<%
	String driver = application.getInitParameter("driver");
%>
<%=driver %><br>
<%
   Enumeration initParams = application.getInitParameterNames();
  
  while(initParams.hasMoreElements()){
	    String param =(String)initParams.nextElement();
	  %><%=param%>:<%=application.getInitParameter(param) %><br><%
  }
%>
</body>
</html>