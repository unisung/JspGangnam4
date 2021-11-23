<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<%
	response.setContentType("text/html");
    /* "Content-Language" 값을 해당 언어코드로 변환하여 지역정보 변경 */
    response.setHeader("Content-Language", "es");
    String title ="Espa&ntilde;ol";
%>
<title><%out.print(title);%></title>
</head>
<body>
 <p>Idioma : Espa&ntilde;ol</p>
 <p>&iexcl;Hola Mundo!</p>

</body>
</html>