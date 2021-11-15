<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  /* 스크립틀릿 (script + let)*/
    /* _service()메소드내의 로컬변수 선언 */
	String bookTitle="JSP 기초";
    String author = "홍길동";
%>
<!-- 표현식(expression) -->
<b><%=bookTitle %></b>(<%=author %>)입니다.
</body>
</html>