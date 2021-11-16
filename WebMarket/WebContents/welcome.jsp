<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>welcome</title>
</head>
<body>
<nav class="navbar navbar-expand navbar-dark bg-dark">
<div class="container">
  <div class="navbar-header">
  	<a class="navbar-brand" href="./welcome.jsp" >Home</a>
  </div>
</div>
</nav>
     <%!
     	 String greeting = "Welcome to Web Shopping Mall";
         String tagline = "Welcome to Web Market!";
     %>
<div class="jumbotron">
  <div class="container">
  	<h1 class="display-3"><%=greeting %></h1>
  </div>
</div>  

<div class="container">
  <div class="text-center">
     <h3><%=tagline %></h3>
  </div>
<hr>
</div>

<footer class="container">
  <p> &copy; WebMarket </p>
</footer>  
</body>
</html>
<!-- web.xml에 welcome-file-list에 페이지를 등록하면 
    welcome페이지로 사용가능 
http://localhost:8080/WebMarket/welcome.jsp
-->