<%@page import="dto.Member"%>
<%@page import="java.util.List"%>
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
%>
<jsp:useBean id="memberDAO" class="dao.MemberRepository" scope="session"/>
<jsp:useBean id="member" class="dto.Member" scope="session"/>
<jsp:setProperty property="*" name="member"/>
<b><%=member %></b>
<%
	memberDAO.registerMember(member);
%>
<%
 List<Member> list = memberDAO.getMembers();
 for(int i=0;i<list.size();i++){
%>
 <%=list.get(i) %><br>
<%} %>
</body>
</html>