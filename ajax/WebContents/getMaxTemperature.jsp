<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	double[] temp={9.8, 12.2, 24.7, 23.7, 23.1};
   for(int i=0;i<temp.length;i++){
	   out.print(temp[i]);
	   if(i!=(temp.length-1)){out.print(",");}
   }
%>
</body>
</html>