<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- http://search.daum.net/search?w=blog&q=축구 
    searchUrl변수에 문자열로 경로 저장
--%>
  <c:url value="http://search.daum.net/search" var="searchUrl">
         <c:param name="w" value="blog"/>
         <c:param name="q" value="축구"/>
  </c:url>
  
  <ul>
    <li>${searchUrl}</li>
  </ul>
</body>
</html>