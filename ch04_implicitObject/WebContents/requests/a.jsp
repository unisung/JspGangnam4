<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 파라미터로 넘어온 값은 getParameter -->
파라미터:<%=request.getParameter("msg") %><br>
<!-- 속성으로 넘어온 값은 getAttribute -->
어트리뷰트:<%=request.getAttribute("msg") %><br>
</body>
</html>