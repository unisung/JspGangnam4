<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>JSTL sql</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
   
    String id=request.getParameter("id");
    String passwd =request.getParameter("passwd");
%>
<sql:setDataSource  var="dS" url="jdbc:mysql://localhost:3306/webmarketDB" 
	 driver="com.mysql.cj.jdbc.Driver" user="root" password="1234"/>
	 
<sql:update dataSource="${dS}" var="resultSet">
     delete from myMember where id=? and passwd=?
     <sql:param value="<%=id %>"/>
     <sql:param value="<%=passwd %>"/>
</sql:update>
<c:import url="sql01.jsp" var="url"/>
 ${url}
</body>
</html>