<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Calendar cal = Calendar.getInstance();
    int y = cal.get(Calendar.YEAR);
    int m = cal.get(Calendar.MONTH) + 1;//현재달 가져오기, 0~11
    int d = cal.get(Calendar.DATE);
%>
<%    
    //이달의 1일로 설정-시작요일을 찾기 위해
    cal.set(y,m-1,1);// 11 -1 => 10 <-11월
    int w = cal.get(Calendar.DAY_OF_WEEK);//이달의 1일의 요일
%>  
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>칼렌다</title>
</head>
<body>
<table border=1>
<tr>
<td>일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td>토</td>
</tr>
<%
    /* 이달의 1일이 시작되는 전 날짜기 공백채우기 */
   out.print("<tr>");
  for(int i=1;i<w;i++){
	  out.print("<td>&nbsp;</td>");
  }
  //1일부터 마지막날짜까지 날짜 뿌려주기
 for(int i=1;i<=cal.getActualMaximum(Calendar.DATE);i++){
	 out.print("<td>"+i+"</td>");
	 w++;
	 if(w%7==1 && i!=cal.getActualMaximum(Calendar.DATE)){//다음 줄로 이동 처리
		 out.print("</tr>");
		 out.print("<tr>");
	 }
 }
  //뒷부분 공백처리
  if(w%7!=1){
	for(int i=w%7;i<=7;i++){
			out.print("<td>&nbsp;</td>");
		  }
   }
  out.print("</tr>");
%>
</table>
</body>
</html>