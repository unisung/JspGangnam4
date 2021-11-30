<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="dbconn.jsp" %>
<%
    String sql="select * from member order by id";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs =pstmt.executeQuery();
	
%>	
<body>
 <form method="post" action="delete01_process.jsp">
  <table>
  <%  
	while(rs.next()){
   %><tr>
   <td><input type="checkbox" name="checkedId" value="<%=rs.getString(1)%>"></td>
   <td><input type="hidden" name="id" value="<%=rs.getInt(1)%>">
       <%=rs.getInt(1)+":"+rs.getString(2)+":"+rs.getString(3)%>
   </td>    
   <tr>
<%} %> 
</table>
 <input type="submit" value="삭제">
</form> 
</body>
</html>