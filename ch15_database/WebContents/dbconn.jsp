<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%
     Connection conn=null;

	 String url ="jdbc:mysql://localhost:3306/jspbookdb";
	 String user="root";
	 String password="1234";
	 
     Class.forName("com.mysql.jdbc.Driver");
	 conn=DriverManager.getConnection(url,user,password);
%>