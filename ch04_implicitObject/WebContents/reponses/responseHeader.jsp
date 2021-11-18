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
	response.setHeader("Cache-control", "use_cache");
    /* addHeader(key, value) <-헤드정보 추가 */
    response.addHeader("contentType","text/html; charset=utf-8");
    response.setDateHeader("date", 1L);
%>
Cache-control: <%=response.getHeader("Cache-control") %><br>
contentType:<%=response.getHeader("contentType") %><br>
date : <%=response.getHeader("date") %>
</body>
</html>