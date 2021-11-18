<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 세션 사용  -->
<%
    /* 세션에 로그인 정보가 있는지 확인 */
	String id =(String)session.getAttribute("id");
    if(id==null || "".equals(id)){
    	response.sendRedirect("../out/out03.jsp");
    }else{
    	out.print("<b>"+id+"님 환영합니다.</b>");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인을 성공했습니다!!!
</body>
</html>