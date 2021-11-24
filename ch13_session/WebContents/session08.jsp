<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String session_id = session.getId();
    long last_time = session.getLastAccessedTime();
    
    long start_time = session.getCreationTime();
    
    long user_time = (last_time - start_time) / 60000;
    
    out.println("세션 아이디: " + session_id +"<br>");
    out.println("요청 시작 시각: " + start_time +"<br>");
    out.println("요청 마지막 시각: " + last_time +"<br>");
    out.println("웹 사이트의 경과 시간: " + user_time +"<br>");

%>

</body>
</html>