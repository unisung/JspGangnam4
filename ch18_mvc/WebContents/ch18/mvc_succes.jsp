<%@page import="ch18_mvc.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Insert title here</title>
</head>
<body>
<p>로그인 성공했습니다.
<%
	LoginBean bean =(LoginBean)request.getAttribute("bean");
    out.print("아이디: "+bean.getId());
%>
</body>
</html>