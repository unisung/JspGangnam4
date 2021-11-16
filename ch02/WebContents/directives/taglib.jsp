<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 표현언어로 표시되는 라이브러리 선언 지시부 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
<%
	for(int i=1;i<=10;i++){
		out.print(i+"<br>");
	}
%>
<hr>
<c:forEach var="k" begin="1" end="10" step="1" varStatus="i">
   <c:forEach var="j" begin="1" end="9" >
      <c:out value="${k}"/> * <c:out value="${j}"/> = <c:out value="${k*j}"/> 
   </c:forEach>  
   <br>
</c:forEach>
</body>
</html>