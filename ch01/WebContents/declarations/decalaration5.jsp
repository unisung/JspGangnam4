<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>함수와 맴버변수 선언</title>
</head>
<body>
<%
    //자바의 로컬변수는 사용전에 반드시 선언되고 초기화 되어야 읽을 수 있음.
   
	for(int i=0;i<=count;i++){
		out.print("Java Server Pages " + i +"<br>");
	}
%>
<%
    //자바의 메소드는 사용전에 반드시 선언되어야 함.
	out.print(makeItLower("Hello World"));
%>
<!-- 선언부에 선언된 변수는 클래스의 맴버변수(필드, 전역변수) 
     스크립트 상에 뒤에 위치하더라도 서블릿으로 변경시 
     필드 선언부 위치에 자리함.
   -->
<%!  int count =3; %>
<!-- 스크립트상 뒤에 위치하더라도 서블릿으로 변경시 위에 위치함.  -->
<%!
    String makeItLower(String data){
	return data.toLowerCase();
}
%>
</body>
</html>