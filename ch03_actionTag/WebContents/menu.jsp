<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String forwardPage=null;
  //request는 클라이언트로 부터 넘어온 파라미터를 실어나르는 객체
  //getParameter()메소드는 파라미터의 값을 추출하는 메소드
  //page=1로 넘어온 값은 String
   String menu =request.getParameter("page");
 //
if(menu.equals("1")){
	forwardPage="page1.jsp";	
}else if(menu.equals("2")){
	forwardPage="page2.jsp";
}else if(menu.equals("3")){
	forwardPage="page3.jsp";
}
%>
<jsp:forward page="<%=forwardPage %>"/>
</body>
</html>