<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("utf-8");
 	Calendar cal=Calendar.getInstance(); //현재 시스템이 가지고 있는 날짜 데이터 가지고 오기
 	int y=cal.get(Calendar.YEAR);
 	int m=cal.get(Calendar.MONTH)+1;
 	int d=cal.get(Calendar.DATE);
 	String _y=request.getParameter("y");
 	String _m=request.getParameter("m");
 	if(_y!=null)
 		y=Integer.parseInt(_y);
 	if(_m!=null)
 		m=Integer.parseInt(_m);

 	//y년 m월 1일의 요일
 	cal.set(y,m-1,1);
 	y=cal.get(Calendar.YEAR);
 	m=cal.get(Calendar.MONTH)+1;
 	int w=cal.get(Calendar.DAY_OF_WEEK); //1(일)~7(토) => 일요일일때 w에 1. 메소드를 외우면 된다.

 %>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{margin:0px; padding:0px;font-famaily: 돋움; font-size: 9pt;}
	td{font-size: 9pt;}
	a{text-decoration: none;}
	a:HOVER{text=decoration: underline;color:tomato;}
</style>
</head>
<body>
<br><br><br>

<table width="700" cellpadding="0" cellspacing="1" bgcolor="#ff22cc">
<caption style="height: 20px;">
<select id="y" onchange="changeDate();">
<% for(int i=y-5; i<y; i++){%>
	<option value="<%=i %>"><%=i %>년</option>
<%} %>
	<option value="<%=y %>" selected="selected"><%=y%>년</option>
<% for(int i=y+1; i<=y+5; i++){%> 
	<option value="<%=i %>"><%=i %>년</option>
<%} %>
</select>
<select id="m" onchange="changeDate();">
<% for(int i=1; i<=12; i++){%>
	<option value="<%=i %>"<%=m==i?"selected='selected'":"" %>><%=i %>월</option>
<%} %>
</select>
</caption>
<tr height="25">
	<td width="100" bgcolor="#c8c8c8" align="center"><font color="red">일</font></td>
	<td width="100" bgcolor="#c8c8c8" align="center">월</td>
	<td width="100" bgcolor="#c8c8c8" align="center">화</td>
	<td width="100" bgcolor="#c8c8c8" align="center">수</td>
	<td width="100" bgcolor="#c8c8c8" align="center">목</td>
	<td width="100" bgcolor="#c8c8c8" align="center">금</td>
	<td width="100" bgcolor="#c8c8c8" align="center"><font color="blue">토</font></td>
</tr>
<%
	//1일 앞부분 공백처리
	out.println("<tr height='25'>");
	for(int i=1; i<w; i++){ // 6월의 1일은 토요일이라 w=7 따라서 공백 6번을 써준다.
		out.println("<td bgcolor='#ffffff'>&nbsp;</td>" );
	}
	//1~마지막일 계산
	String fc;
	for(int i=1; i<=cal.getActualMaximum(Calendar.DATE); i++){
		fc=w%7==1?"red":(w%7==0?"blue":"black");
		out.println("<td align='center' bgcolor='#ffffff' style='color:"+fc+";'>");
		out.print(i+"</td>");
		w++;
		if(w%7==1&&i!=cal.getActualMaximum(Calendar.DATE)){
			out.println("</tr>");
			out.println("<tr height='100'>"); // 공백 부분
			for(int j=1; j<=7;j++)
				out.println("<td align='center' bgcolor='#ffffff';>&nbsp;</td>");
			    out.println("</tr>");					//  공백 부분
			    out.println("<tr height='25'>");
		}
	}

	// 뒷부분 공백처리
	if(w%7!=1){
		if(w%7==0){
			out.println("<td bgcolor='#ffffff'>&nbsp;</td>");
		}else{
		for(int i=w%7; i<=7; i++)
			out.println("<td bgcolor='#ffffff'>&nbsp;</td>");
	}
	out.println("</tr>");
	out.println("<tr height='100'>");// 맨아랫 부분 공백 
		for(int j=1; j<=7;j++)
			out.println("<td align='center' bgcolor='#ffffff';>&nbsp;</td>");
		out.println("</tr>");
	}
%>
</table>

</body>
</html>