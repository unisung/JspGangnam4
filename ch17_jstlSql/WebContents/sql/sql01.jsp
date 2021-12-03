<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html><html><head> <meta charset="UTF-8">
<title>JSTL SQL</title>
</head>
<body>
 <%-- 데이타 소스 선언 --%>
 <sql:setDataSource var="dataSource" url="jdbc:mysql://localhost:3306/webmarketDB"
      driver="com.mysql.jdbc.Driver" user="root" password="1234"
  />
  
  <%-- 쿼리 전송 --%>
  <sql:query var="resultSet" dataSource="${dataSource}" >
       select * from myMember
  </sql:query> 
  
  <%--결과 출력 --%>
  <table border="1">
    <tr>
      <c:forEach var="columnName" items="${resultSet.columnNames}"><%--header부분 출력 --%>
        <th width="100"><c:out value="${columnName}" /> </th>
      </c:forEach>
    </tr>
    <c:forEach var="row" items="${resultSet.rowsByIndex}"><%--행 단위 출력 --%>
     <tr>
       <c:forEach var="column" items="${row}" varStatus="i"><%--열 단위 출력 --%>
         <td>
          <c:if test="${column !=null}">
             <c:out value="${column}"/>
          </c:if>
          <c:if test="${column ==null}">
              &nbsp;
          </c:if>       
         </td>
       </c:forEach>
     </tr>
    </c:forEach>
  </table>
</body>
</html>