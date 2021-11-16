<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부에 선언된 메소드호출</title>
</head>
<body>
<%! int sum(int a, int b) {
	return a+b;
}
 %>
 <!-- _jspservice()메소드에서 호출  -->
 <%
 	 out.print("2 + 3 = " + sum(2,3));
 %>
</body>
</html>