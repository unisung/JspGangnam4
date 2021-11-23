<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>i18n</title>
</head>
<body>
<%-- request.setCharacterEncoding("문자셋") --%>
<fmt:requestEncoding value="utf-8"/>
요청 파라미터:<%=request.getParameter("id")==null?"":request.getParameter("id")%>
<p><%=response.getLocale() %>

<form action="#" method="post">
  <p>아이디:<input type="text" name="id">
  <input type="submit" value="전송">
</form>
</body>
</html>