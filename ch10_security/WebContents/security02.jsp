<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p> 사용자명:<%=request.getRemoteUser() %>
<p> 인증방법:<%=request.getAuthType() %>
<p> 인증한 사용자명이 역할명 "tomcat"에 속하는 사용자인가요?<%=request.isUserInRole("tomcat")?"네":"아니요" %>
<p> 인증한 사용자명이 역할명 "role1"에 속하는 사용자인가요?<%=request.isUserInRole("role1")?"네":"아니요"  %>
<hr>
<%
	if(request.isUserInRole("admin")){%>
	 <a href="admin/addProduct.jsp">상품 등록</a>
     <a href="admin/member.jsp">회원관리</a>
  <% }else{%>
   <a href="member/products.jsp">상품리스트</a>
   <%} %>


</body>
</html>