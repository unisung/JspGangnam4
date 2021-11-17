<%@page import="com.dto.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
   //참조변수명 member, 클래스 com.dto.MemberBean
   MemberBean member = new MemberBean();
   //참조변수 member의 속성 중 id속성의 값을 1999로 설정
   member.setId(1999);
   //참조변수 member의 속성 중 name속성의 값을 "홍길동"으로 설정
   member.setName("홍길동");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%=member.getId() %><br>
 <%=member.getName() %>
</body>
</html>