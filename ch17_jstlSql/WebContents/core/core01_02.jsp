<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- Member m = new Member() --%>
<jsp:useBean id="m" class="ch17_jstlSql.Member"/>
<jsp:setProperty property="lastName" name="m"  value="홍"/>
<jsp:setProperty property="firstName" name="m" value="길동"/>

<%-- value 속성 사용 예 --%>
<c:set var="name" value="홍길동"/>
<c:out value="${name}" /> <br>

<%-- requestScope.속성명, sessionScope.속성명, applicationScope.속성명, pageScope.속성명 --%>
<c:out value="${requestScope.name}" /><br>
<c:set var="name" value="${m.lastName} ${m.firstName}" /><%-- EL은 속성을 출력-getMethod()실행 --%>
<c:out value="${name}" />
<hr>

<%-- 태그의 몸체를 값으로 사용하는 예 --%>
<c:set var="name">홍길동</c:set>

<c:set var="name">${m.lastName} ${m.firstName}</c:set>
</body>
</html>