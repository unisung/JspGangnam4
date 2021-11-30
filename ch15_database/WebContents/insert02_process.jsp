<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%><%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Database SQL</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
	 //파리미터 받기
	 request.setCharacterEncoding("utf-8");
	 
	 String passwd = request.getParameter("passwd");
	 String name = request.getParameter("name");
	 
	 //쿼리 객체 생성
	 PreparedStatement pstmt= null;
	 
	 try{
		  String sql ="insert into member(passwd, name) values(?,?)";
		  //preparedStatement객체 생성
		  pstmt = conn.prepareStatement(sql);
		  //바인딩 변수 설정
		  pstmt.setString(1, passwd);
		  pstmt.setString(2,name);
		  //입력 처리
		  int result =pstmt.executeUpdate();
		  //결과 확인
		  if(result>0){
			  //out.print("Member 테이블에 삽입이 성공했습니다.");
			  response.sendRedirect("select02.jsp");
		  }else{
			  out.print("<script>alert('입력실패');</script>");
			  out.print("<script>history.back();</script>");/* 이전페이지로 되돌아가기 */
		  }
	 }catch(Exception e){
		  out.print("Member 테이블 삽입 실패<br>");
		  out.print("SQLException: " + e.getMessage());
	 }finally{
		 if(pstmt!=null) pstmt.close();
		 if(conn!=null) conn.close();
	 }
%>

</body>
</html>