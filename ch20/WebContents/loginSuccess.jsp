<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
당신이 입력한 정보입니다(고전전 방식)<br>
아이디:<%=request.getParameter("id") %>
비밀번호:<%=request.getParameter("passwd") %><br>
당신이 입력한 정보입니다<br>
아이디:${param.id}<br>
비밀번호:${param.passwd }<br>
</body>
</html>