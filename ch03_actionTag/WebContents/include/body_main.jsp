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
	String name=request.getParameter("name");
%>
<%=name %>
<%-- param에 이름이 동일한 객체를 선언하더라도 jsp에서
     구분이 가능, 액션태그애 선언된 파람은 선언된 범위까지만 사용됨 --%>
<jsp:include page="body_sub.jsp">
  <jsp:param value="honggildong" name="name"/>
</jsp:include>
</body>
</html>