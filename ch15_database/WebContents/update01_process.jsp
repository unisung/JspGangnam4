<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="dbconn.jsp" %>
<%
	 //파리미터 받기
	 request.setCharacterEncoding("utf-8");
	 
	 String passwd = request.getParameter("passwd");
	 String name = request.getParameter("name");
	 String id=request.getParameter("id");
	 
	 //쿼리 객체 생성
	 PreparedStatement pstmt= null;
	 
	 try{
		  String sql ="update member set passwd=?, name=? where id=?";
		  //preparedStatement객체 생성
		  pstmt = conn.prepareStatement(sql);
		  //바인딩 변수 설정
		  pstmt.setString(1, passwd);
		  pstmt.setString(2,name);
		  pstmt.setString(3,id);
		  //입력 처리
		  int result =pstmt.executeUpdate();
		  //결과 확인
		  if(result>0){
			  //response.sendRedirect("select02.jsp");
			  out.print("<script>alert('수정완료');</script>");
			  out.print("<script>location.href='select02.jsp';</script>");
		  }else{
			  out.print("<script>alert('수정실패');</script>");
			  out.print("<script>history.back();</script>");/* 이전페이지로 되돌아가기 */
		  }
	 }catch(Exception e){
		  out.print("Member 테이블 수정 실패<br>");
		  out.print("SQLException: " + e.getMessage());
	 }finally{
		 if(pstmt!=null) pstmt.close();
		 if(conn!=null) conn.close();
	 }
%>


%>