<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>함수와 맴버변수 선언</title>
</head>
<body>
<%
    //자바의 로컬변수는 사용전에 반드시 선언되고 초기화 되어야 읽을 수 있음.
    int count =3;
	for(int i=0;i<=count;i++){
		out.print("Java Server Pages " + i +"<br>");
	}
%>
<%
    //자바의 메소드는 사용전에 반드시 선언되어야 함.
	//out.print(makeItLower("Hello World"));
%>

</body>
</html>