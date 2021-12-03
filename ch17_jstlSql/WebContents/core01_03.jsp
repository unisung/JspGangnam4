<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="ch17_jstlSql.Member"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Insert title here</title>
</head>
<body>
<%-- 스크립틀릿으로 객체 생성 --%>
<% Member member = new Member(); %>
<%-- target 변수명 --%>
<c:set target="<%=member%>" property="name" value="홍길동" />
<%=member.getName()%><%-- 표현식 --%>
<hr>

<%-- 변수 대입, jstl의 set변수로 m 선언 --%>
<c:set var="m" value="<%=member %>"/>
<c:set target="${m}" property="name" value="임꺽정"/>
${m.name} <%-- EL로 출력 --%>
<hr>
<hr>
<%-- collection객체에 키,값  --%>
<% Map<String,String> prop = new HashMap<String,String>(); %>
<c:set target="<%=prop %>" property="host" value="localhost"/>
<c:set target="<%=prop %>" property="domain" value="www.naver.com"/>
<c:set target="<%=prop %>" property="id" value="hong"/>
<%=prop.get("host") %><br><%-- map에서 값 추출 --%>
<%=prop.get("domain") %><br><%-- map에서 값 추출 --%>
<%=prop.get("id") %><br><%-- map에서 값 추출 --%>

</body>
</html>