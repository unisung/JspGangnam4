<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<c:if test="true">
 무조건 수행
</c:if>

<hr>
<%-- param : request.getParameter("name") --%>
<c:if test="${param.name=='bk'}">
  name파라미터의 값이 ${param.name}입니다.
</c:if>
<hr>
<%-- param : request.getParameter("age") --%>
<c:if test="${18 < param.age}">
  당신의 나이는 18세 이상입니다.
</c:if>

</body>
</html>