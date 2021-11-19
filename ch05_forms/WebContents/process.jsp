<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 넘어온 파라미터 출력하기 -->
<%
  /* request로 넘어온 파라미터의 문자셋 설정 */
  request.setCharacterEncoding("utf-8");

  String id=request.getParameter("id");
  String password=request.getParameter("passwd");
  String name=request.getParameter("name");
  String phone1=request.getParameter("phone1");
  String phone2=request.getParameter("phone2");
  String phone3=request.getParameter("phone3");
  String city=request.getParameter("city");
  String sex=request.getParameter("sex");
  /* 동일이름으로 두개이상의 값이 전달되는 경우 getParameterValues()로 받음 */
  String[] hobbies=request.getParameterValues("hobby");
  String comment = request.getParameter("comment");
%>
<%=id %><br>
<%=password %><br>
<%=name %><br>
<%=phone1 %>-<%=phone2 %>-<%=phone3 %><br>
<%=city %><br>
<%=sex %><br>
<%=Arrays.toString(hobbies) %><br>
[
<%
	for(int i=0;i<hobbies.length;i++){
		if(i==(hobbies.length-1))
		  out.print(hobbies[i]+"]");
		else
			out.print(hobbies[i]+",");	
	}
%><br>
<%=comment %>
</body>
</html>