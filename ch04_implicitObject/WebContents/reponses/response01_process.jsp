<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	request.setCharacterEncoding("utf-8");
    String userid = request.getParameter("id");
    String password = request.getParameter("pass");
    
    //로그인 처리
    if(userid.equals("관리자") && password.equals("1234")){
    	//세션에 로그인 정보 저장
    	session.setAttribute("id", userid);
    	response.sendRedirect("response01_success.jsp");
    }else{
    	response.sendRedirect("response01_failed.jsp");
    }
%>