<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="name" value="홍길동" scope="application" />
<c:set var="name" value="일지매" scope="session" />
<c:set var="name" value="임꺽정" scope="request"/>
<c:set var="name" value="이순신" />

<p>application 영역: <c:out value="${applicationScope.name }"/>
<p>session 영역: <c:out value="${sessionScope.name }"/>
<p>request 영역: <c:out value="${requestScope.name }"/>
<p>page 영역: <c:out value="${pageScope.name }"/>
<hr>
<hr>
<c:remove var="name" scope="application"/>
<p>application영역 삭제 후:
<p>application 영역: <c:out value="${applicationScope.name }"/>
<p>session 영역: <c:out value="${sessionScope.name }"/>
<p>request 영역: <c:out value="${requestScope.name }"/>
<p>page 영역: <c:out value="${pageScope.name }"/>
<hr>
<c:remove var="name" scope="session"/>
<p>session영역 삭제 후:
<p>application 영역: <c:out value="${applicationScope.name }"/>
<p>session 영역: <c:out value="${sessionScope.name }"/>
<p>request 영역: <c:out value="${requestScope.name }"/>
<p>page 영역: <c:out value="${pageScope.name }"/>
<hr>
<c:remove var="name" scope="request"/>
<p>request영역 삭제 후:
<p>application 영역: <c:out value="${applicationScope.name }"/>
<p>session 영역: <c:out value="${sessionScope.name }"/>
<p>request 영역: <c:out value="${requestScope.name }"/>
<p>page 영역: <c:out value="${pageScope.name }"/>
<hr>
<c:remove var="name" scope="page"/>
<p>page영역 삭제 후:
<p>application 영역: <c:out value="${applicationScope.name }"/>
<p>session 영역: <c:out value="${sessionScope.name }"/>
<p>request 영역: <c:out value="${requestScope.name }"/>
<p>page 영역: <c:out value="${pageScope.name }"/>
<hr>

</body>
</html>