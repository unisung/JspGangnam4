<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%--response헤드의 Content-Language값 설정 --%>
  <%-- 현재 브라우저의 지역코드 --%>
  <%=request.getLocale() %>
  
  <%--로케일 지정 --%>
  <fmt:setLocale value="ko"/>
  <p><%=response.getLocale() %>
  
  <fmt:setLocale value="ja"/>
  <p><%=response.getLocale() %>
  
  <fmt:setLocale value="en"/>
  <p><%=response.getLocale() %>
</body>
</html>