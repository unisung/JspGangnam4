<%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="dbconn.jsp" %>
<%
//파리미터 받기
request.setCharacterEncoding("utf-8");

String id=request.getParameter("checkedId");

//쿼리 객체 생성
 PreparedStatement pstmt= null;

try{
	  String sql ="delete from member where id=?";
	  //preparedStatement객체 생성
	  pstmt = conn.prepareStatement(sql);
	  conn.setAutoCommit(false);
	  //바인딩 변수 설정
	 pstmt.setString(1,id);
	  //입력 처리
	  int result =pstmt.executeUpdate();
	  //결과 확인
	  if(result>0){
		  //response.sendRedirect("select02.jsp");
		  out.print("<script>alert('삭제완료');</script>");
		  out.print("<script>location.href='select02.jsp';</script>");
	  }else{
		  out.print("<script>alert('삭제실패');</script>");
		  out.print("<script>history.back();</script>");/* 이전페이지로 되돌아가기 */
	  }
	  conn.commit();
}catch(Exception e){
	 conn.rollback();
	  out.print("Member 테이블 삭제 실패<br>");
	  out.print("SQLException: " + e.getMessage());
}finally{
	  conn.setAutoCommit(true);
	 if(pstmt!=null) pstmt.close();
	 if(conn!=null) conn.close();
}

%>