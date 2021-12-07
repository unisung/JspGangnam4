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
<jsp:include page="/menu.jsp" />
 <div class="jumbotron">
    <div class="container">
         <h1 class="display-3">회원 수정</h1>
    </div>
 </div>
  <c:forEach var="row" items="${resultSet.rows}">
     <c:set var="mail" value="${row.mail}"/>
     <c:set var="mail1" value="${mail.split('@')[0]}"/>
     <c:set var="mail2" value="${mail.split('@')[1]}"/>
     
     <c:set var="birth" value="${row.birth}"/>
     <c:set var="year" value="${birth.split('/')[0]}"/>
     <c:set var="month" value="${birth.split('/')[1]}"/>
     <c:set var="day" value="${birth.split('/')[2]}"/>
     
    <div class="container">
       <form name="newMember" class="form-hotizontal" action="processUpdateMember.jsp" 
             method="post" onsubmit="reutrn checkForm()">
       
       
       </form>
    </div><!-- container끝.  --> 
  </c:forEach>


</body>
</html>