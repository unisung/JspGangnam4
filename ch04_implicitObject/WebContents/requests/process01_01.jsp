<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html><html><head>
<meta charset="UTF-8"><title>Insert title here</title>
</head>
<body>
<%
     request.setCharacterEncoding("utf-8");
     String name = request.getParameter("id"); 
     String pwd = request.getParameter("pwd");
  %>
 <p>id:<%=name %><br>
 <p>pwd:<%=pwd %><br>
 <hr>
 <%
 	Enumeration params = request.getParameterNames();
  while(params.hasMoreElements()){
	    String paramName=(String)params.nextElement();
	   %><%=paramName%>=<%=request.getParameter(paramName) %><br> 
 <% }
 %>
</body>
</html>