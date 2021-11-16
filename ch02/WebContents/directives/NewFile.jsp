<%@page import="dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Member m=new Member();
	m.setName("홍길동");
%>
<%-- 변수선언 태그  --%>
<%-- ${}는 선언시 값 결정 --%>
<c:set var="m" value="<%=m %>" />
${m.name  }

<%-- #{}는 호출시 값 결정 --%>
<c:set var="name" value="#{m.name}"/>
<% m.setName("일지매");%>
 ${name }

</body>
</html>