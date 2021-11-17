<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String num1 = request.getParameter("num1");
    String op = request.getParameter("op");
    String num2 = request.getParameter("num2");
    
    /* forward전에 request에 setAttribute()로 저장 후 이동.
       setAttribute(이름,Object) */
    request.setAttribute("num1", num1);
    request.setAttribute("num2", num2);
    request.setAttribute("op", op);
%>
<%=num1 %><br>
<%=num2 %><br>
<%=op %>
<jsp:forward page="result.jsp"></jsp:forward>
</body>
</html>