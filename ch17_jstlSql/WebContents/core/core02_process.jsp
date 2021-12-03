<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>


<c:if test="${param.number %2==0}">
  ${param.number }는 짝수입니다.
</c:if>
<c:if test="${param.number %2!=0}">
  ${number }는 홀수입니다.
</c:if>


</body>
</html>