<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Localization</title>
</head>
<body>
<%
    /* 현재 브라우저에 설정된 지역 정보 Locale */
	Locale locale = request.getLocale();
String displayLanguage = locale.getDisplayLanguage();
String language = locale.getLanguage();
String displayCountry = locale.getDisplayCountry();
String country = locale.getCountry();
%>
<%
   out.print("로케일 언어: "+displayLanguage+"<br>");
   out.print("로케일 언어코드: "+language+"<br>");
   out.print("로케일 국가: "+displayCountry+"<br>");
   out.print("로케일 국가코드: "+country+"<br>");
%>
</body>
</html>