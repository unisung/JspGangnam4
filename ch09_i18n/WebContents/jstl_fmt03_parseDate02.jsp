<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Date Parsing</h3>
<c:set var="now" value="20-10-2010" />
<fmt:parseDate  value="${now}" var="parsedDate" pattern="dd-MM-yyyy"/>
<p>Parsed Date:<c:out value="${parsedDate }"/>

<p><fmt:parseDate pattern="yyyy-MM-dd HH:mm:ss">2010-05-05 16:51:44</fmt:parseDate>

<p><c:set var="nowTemp"  value="2010-09-14 16:51:44.0"/>
<fmt:parseDate var="dateTemp" value="${nowTemp}" pattern="yyyy-MM-dd HH:mm:ss.S"/>
<c:out value="${dateTemp }"/>
</body>
</html>