<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부를 사용한 두 정수 값의 곱</title>
</head>
<body>
<!-- 선언부: 함수 선언 -->
<%! 
	public int multiply(int a, int b){
	int c = a * b;
	return c;
}
%>
<!-- 선언된 함수 호출 -->
10 * 25 =<%=multiply(10,25) %> 
</body>
</html>