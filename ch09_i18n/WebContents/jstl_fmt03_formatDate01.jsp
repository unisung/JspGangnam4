<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>formatDate</title>
</head>
<body>
<jsp:useBean id="now" class="java.util.Date"/>
${now }
<p>데이터 형식:<fmt:formatDate value="${now}" type="date"/><br>
<p>데이터 형식:<fmt:formatDate value="${now}" type="date" dateStyle="full"/><br>
<p>데이터 형식:<fmt:formatDate value="${now}" type="date" dateStyle="short"/><br>
<p>time 형식:<fmt:formatDate value="${now}" type="time"/><br>
<p>date time형식:<fmt:formatDate value="${now}" type="both"/>

<p>date time형식:<fmt:formatDate value="${now}" type="both"
                      dateStyle="full" timeStyle="full"/>
<p>date time형식:<fmt:formatDate value="${now}" type="both"
                      dateStyle="long" timeStyle="long"/>                      
<p>date time형식:<fmt:formatDate value="${now}" type="both"
                      dateStyle="medium" timeStyle="medium"/> 
<p>date time형식:<fmt:formatDate value="${now}" type="both"
                      dateStyle="short" timeStyle="short"/> 
                       
</body>
</html>