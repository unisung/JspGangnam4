<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="dbconn.jsp" %>
<%
    String sql="select * from member where id=1";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs =pstmt.executeQuery();
	if(rs.next()){
%>
<body>
  <form method="post" action="update01_process.jsp">
      <input type="hidden" name="id" value="<%=rs.getInt(1)%>">
     <p>비밀번호: <input type="password" name="passwd" value="<%=rs.getString(3)%>">
     <p>이름:<input type ="text" name="name" value="<%=rs.getString(2) %>">
     <p><input type="submit" value="보내기">
  </form>
<%} %> 
 
</body>
</html>