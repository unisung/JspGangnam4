<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<%-- Response.sendRedirect("http://search.daum.net/search?w=blog&q=축구") --%>
 <c:redirect url="http://search.daum.net/search">
    <c:param name="w" value="blog" />
    <c:param name="q" value="축구"/>
 </c:redirect>
</body>
</html>

