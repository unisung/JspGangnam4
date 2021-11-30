<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Connection conn=null;
try{
	 String url ="jdbc:mysql://localhost:3306/webmarketDB";
	 String user="root";
	 String password="1234";
	 
     Class.forName("com.mysql.jdbc.Driver");
	 conn=DriverManager.getConnection(url,user,password);
	 
	 if(conn!=null){
	     String sql ="select p_id,p_name, p_unitPrice from product order by p_id";
         //쿼리객체 생성
         Statement stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery(sql);
         while(rs.next()){
        	  out.print(rs.getString(1)+":"); 
        	  out.print(rs.getString(2)+":");
        	  out.print(rs.getInt(3)+"<br>");
         }
	 }
}catch(Exception e){
	 out.print("데이터베이스 연결이 실패했습니다.<br>");
	 out.print("SQLEXception: " + e.getMessage());
}finally{
	if(conn !=null) conn.close();
}

%>
</body>
</html>