<%@page import="dao.MemberRepository"%>
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
<%-- <jsp:useBean id="memberDAO" class="dao.MemberRepository" scope="session"/> --%>
<%
 MemberRepository memberDAO = MemberRepository.getInstance();
%>
<jsp:useBean id="member" class="dto.Member" scope="page"/>
<jsp:setProperty property="*" name="member"/>
<jsp:setProperty property="hobbies" name="member" param="hobby"/>
<b><%=member %></b><br><br>
<%
	memberDAO.registerMember(member);
%>
<%
 List<Member> list = memberDAO.getMembers();
 for(int i=0;i<list.size();i++){
%>
 회원정보:<%=(i+1)%>:<a href="memberInfo.jsp?id=<%=list.get(i).getId()%>"><%=list.get(i).getId()%></a><%=list.get(i) %><br>
<%} %>
</body>
</html>