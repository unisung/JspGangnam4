<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>error.jsp 오류 페이지</h3>
<%=request.getAttribute("exception") %>
<%-- <%=exception.getMessage() %> --%>
</body>
</html>