<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("PAGETTILE", 
			         "정보보기");

%>
<jsp:forward page="template.jsp">
   <jsp:param name="CONTENTPAGE" value="info_view2.jsp"/>
</jsp:forward>

</body>
</html>