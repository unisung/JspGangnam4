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
<!-- Bean의 속성명과 파라미터명이 다르면 param속성에 파라미터명을 지정  -->
<jsp:setProperty property="id" name="member" param="userId"  />
<jsp:setProperty property="name" name="member"/>

<jsp:getProperty property="id" name="member"/><br>
<jsp:getProperty property="name" name="member"/><br>
</body>
</html>