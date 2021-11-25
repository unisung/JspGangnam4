<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();

   for(int i=0;i<cookies.length;i++){
	   cookies[i].setMaxAge(0);//즉시 삭제
	   response.addCookie(cookies[i]);
   }
   
   response.sendRedirect("cookie02.jsp");
%>