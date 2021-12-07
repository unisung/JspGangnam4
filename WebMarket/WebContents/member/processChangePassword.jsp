<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%
	String sessionId = (String)session.getAttribute("sessionId");

    String currentPassword =request.getParameter("currentPassword");
    String newPassword =request.getParameter("newPassword");

%>
<%--데이타 셋 설정 --%>
<sql:setDataSource  var="dataSource"   
      url="jdbc:mysql://localhost:3306/WebMarketDB"
      user="root" password="1234"
      driver="com.mysql.cj.jdbc.Driver" />
      
<%--id,password 에 맞는 회원정보를 db에서 추출 --%>
<sql:query dataSource="${dataSource}" var="resultSet" >
  select * from member where id=? and password=?
  <sql:param value="<%=sessionId%>" />
  <sql:param value="<%=currentPassword%>"/>
</sql:query>

<c:if test="${not empty resultSet.row}">
  <sql:update dataSource="${dataSource}" var="result" >
  update member set password=? where id=? 
  <sql:param value="<%=newPassword%>"/>
  <sql:param value="<%=sessionId%>" />
</sql:update>
	<c:if test="${result}">
	      <script>window.close();</script>
	</c:if>
</c:if>
