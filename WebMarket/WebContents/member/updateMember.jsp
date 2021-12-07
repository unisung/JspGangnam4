<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
<%
	String sessionId = (String)session.getAttribute("sessionId");
%>
<%--데이타 소스 설정 --%>
<sql:setDataSource  var="dataSource"   
      url="jdbc:mysql://localhost:3306/WebMarketDB"
      user="root" password="1234"
      driver="com.mysql.cj.jdbc.Driver" />
<%-- db에서 sessionId에 해당하는 회원 정보 추출 --%>      
<sql:query var="resultSet" dataSource="${dataSource}">
 select * from member where id=?
 <sql:param value="<%=sessionId%>"/>
</sql:query>      
<title>회원 수정</title>
</head>
<body>

</body>
</html>