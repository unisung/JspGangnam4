<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
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
     //쿠키 생성 Cookie 변수 = new Cookie(이름,값);
     // 한글 쿠키 값은 URLEncoder의 encode()로 인코딩처리
	 Cookie cookie = new Cookie("name",URLEncoder.encode("홍길동"));
     //생성한 쿠키를 클라이언트(브라우저)로 전송 처리
     response.addCookie(cookie);
%>
<!-- 쿠키 이름: getName(), 값: getValue() 출력, 출력시 decode() 처리 -->
<%=cookie.getName() %> 쿠키의 값 = <%=URLDecoder.decode(cookie.getValue()) %>

</body>
</html>