<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>입력에 성공했습니다.</h3>
<%
	request.setCharacterEncoding("utf-8");
    String id = request.getParameter("idname");
    String passwd = request.getParameter("pw");
    //로그인처리
    //session객체에 로그인 한 id를 저장
    session.setAttribute("id", id);
%>
<p> 아이디:<%=id%>
<p> 비밀번호:<%=passwd %>
<p> 아이디:<%=session.getAttribute("id") %>
</body>
</html>