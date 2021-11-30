<%@page import="java.sql.Statement"%><%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Database SQL</title>
</head>
<body>
<%
Connection conn=null;
try{
	 String url ="jdbc:mysql://localhost:3306/jspbookdb";
	 String user="root";
	 String password="1234";
	 
     Class.forName("com.mysql.jdbc.Driver");
	 conn=DriverManager.getConnection(url,user,password);
	 
	 //파리미터 받기
	 request.setCharacterEncoding("utf-8");
	 
	 String passwd = request.getParameter("passwd");
	 String name = request.getParameter("name");
	 
	 //쿼리 객체 생성
	 Statement stmt = null;
	 
	 try{
		  String sql ="insert into member(passwd, name) " 
				     +" values('"+passwd+"','"+name+"')";
		  stmt = conn.createStatement();
		  int result =stmt.executeUpdate(sql);
		  if(result>0) out.print("Member 테이블에 삽입이 성공했습니다.");
	 }catch(Exception e){
		  out.print("Member 테이블 삽입 실패<br>");
		  out.print("SQLException: " + e.getMessage());
	 }finally{
		 if(stmt!=null) stmt.close();
		 if(conn!=null) conn.close();
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