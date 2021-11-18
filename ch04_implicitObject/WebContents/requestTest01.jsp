<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
요청ip 주소:<%=request.getRemoteAddr()%><br>
요청메소드:<%=request.getMethod() %><br>
요청URI:<%=request.getRequestURI() %><br>
요청URL:<%=request.getRequestURL() %><br>
서버명:<%=request.getServerName() %><br>
서버포트:<%=request.getServerPort() %><br>
<%
    /* URI로 부터 command추출하기 */
   String uri = request.getRequestURI();
   String command = uri.substring(uri.lastIndexOf("/")+1);
   command = command.substring(0,command.lastIndexOf("."));
%>
<%=command %>
</body>
</html>