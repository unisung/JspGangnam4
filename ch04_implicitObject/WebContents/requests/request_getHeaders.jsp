<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>request getHeaders</title>
</head>
<body>
<%
   /* request객체로 부터 읽어들인 header정보들 */
	Enumeration<?> en = request.getHeaderNames();
    while(en.hasMoreElements()){
    	String headerName = (String)en.nextElement();
    	String headerValue = request.getHeader(headerName);
    %>
    <%=headerName %> : <%=headerValue %> <br>
  
  <%  } %>
</body>
</html>