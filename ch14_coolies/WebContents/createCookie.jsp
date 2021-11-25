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
	 Cookie cookie = new Cookie("name","honggildong");
     //생성한 쿠키를 클라이언트(브라우저)로 전송 처리
     response.addCookie(cookie);
%>
<!-- 쿠키 이름: getName(), 값: getValue() 출력 -->
<%=cookie.getName() %> 쿠키의 값 = <%=cookie.getValue() %>

</body>
</html>