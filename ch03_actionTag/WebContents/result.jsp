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
    /* getAttribute의 결과 는 Object이므로 형변환(casting) 처리  */
	Integer num1 =Integer.parseInt((String)request.getAttribute("num1"));
    Integer num2 =Integer.parseInt((String)request.getAttribute("num2"));
    String  op =(String)request.getAttribute("op");

   switch(op){
   case "+": out.print(num1+"+"+num2+"="+(num1+num2)); break;
   case "-": out.print(num1+"-"+num2+"="+(num1-num2)); break;
   case "x": out.print(num1+"x"+num2+"="+(num1*num2)); break;
   }
%>

</body>
</html>