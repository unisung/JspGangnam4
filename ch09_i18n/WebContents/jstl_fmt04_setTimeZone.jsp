<%@page import="java.util.TimeZone"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="now" class="java.util.Date"/>
${now }
<p>Date in current Zone: <fmt:formatDate value="${now}" 
                         type="both" timeStyle="long" dateStyle="long"/>
<p>Change Time Zone to GMT-8
<fmt:setTimeZone value="GMT-8"/>
<p>Date in Changed Zone: <fmt:formatDate value="${now}" 
                         type="both" timeStyle="long" dateStyle="long"/>                         
<%
   String[] timeZones =TimeZone.getAvailableIDs();
%>
<hr>
<%
	for(String zone:timeZones){
%>
<%=zone %><br>
<%} %>
</body>
</html>