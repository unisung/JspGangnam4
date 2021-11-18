<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   /* 처음부터 다시 www.google.com으로 이동하라는 응답 메세지 
     response.sendRedirec(URL);
   브라우저의 주소가 바뀜 get방식전송,
    <form method="get">, <a href="경로">, sendRedirect(url), location.href='경로'
   */
  response.sendRedirect("http://www.google.com?q=aaa");
%>
</body>
</html>