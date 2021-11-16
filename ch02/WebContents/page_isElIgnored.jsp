<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- isELIgnored="true" 이면 EL 기호를 하나의 문자로 인식함.
     default는 false  -->    
<%@ page isELIgnored="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    /* request에 속성저장 (이름,값); */
	request.setAttribute("RequesstAttribute", "request 내장 객체");
%>
${RequesstAttribute}


</body>
</html>