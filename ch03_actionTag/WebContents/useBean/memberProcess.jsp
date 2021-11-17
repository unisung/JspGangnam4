<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="member" class="com.dto.MemberBean"/>
<jsp:setProperty property="id" name="member" />
<jsp:setProperty property="name" name="member"/>

<jsp:getProperty property="id" name="member"/><br>
<jsp:getProperty property="name" name="member"/><br>
</body>
</html>