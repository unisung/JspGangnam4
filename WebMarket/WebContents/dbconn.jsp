<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
 Connection conn=null;

 try{
	 String url="jdbc:mysql://localhost:3306/webmarketDB";
	 String user="root";
	 String password="1234";
	 
	 Class.forName("com.mysql.cj.jdbc.Driver");
	 conn=DriverManager.getConnection(url,user,password);
	 if(conn!=null)
	    out.print("연결 성공");
 }catch(Exception e){
	 out.println("데이터베이스 연결이 실패했습니다");
	 out.print("SQLException : " +e.getMessage());
 }
%>