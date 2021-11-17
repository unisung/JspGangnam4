<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 파라미터로 넘어온 "date"이름의 값 출력 --%>
 Today is:<%=request.getParameter("date") %>
</body>
</html>