<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//날짜정보는 이페이지에서 생성
	Date now =new Date();
%>
<%=now %>
<%-- 날짜정보를 printToday.jsp로 전달하도록 처리  --%>
<%-- printToday.jsp로 forward처리 --%>
<jsp:forward page="printToday.jsp">
 <jsp:param value="<%=now %>" name="now"/>
</jsp:forward>
</body>
</html>