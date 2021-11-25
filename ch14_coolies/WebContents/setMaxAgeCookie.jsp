<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  Cookie cookie = new Cookie("name",URLEncoder.encode("홍길동"));
  //유효기간 설정
  cookie.setMaxAge(60*60);//초단위
  response.addCookie(cookie);

%>