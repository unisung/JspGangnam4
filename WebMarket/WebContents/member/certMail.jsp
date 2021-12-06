<%@page import="java.text.NumberFormat"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>이메일 인증</title>
<%
	String email=request.getParameter("email");
%>
</head>
<body> 
    <form >
     <input type="text" name="email" value="<%=email%>" readonly><br>
     <input type="password" name="password"><br>
     <input type="submit" value="이메일 전송">
     </form> 
</body>
</html>    
<%
     int[] arr= {(int)(Math.random()*92)+33,
    		     (int)(Math.random()*92)+33,
    		     (int)(Math.random()*92)+33,
    		     (int)(Math.random()*92)+33,
    		     (int)(Math.random()*92)+33,
    		     (int)(Math.random()*92)+33
               };
   String s="";
   for(int i=0;i<arr.length;i++)
	   s+=(char)(arr[i]);
   //비번문자생성
   System.out.println(s);
%>

