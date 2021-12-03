<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>import tag</title>
</head>
<body>
<%-- 동일 도메인 내의 페이지 임포트 , 다른 도메인에서는 차단 --%>
<c:import url="use_if_tag.jsp" var="daumNews" scope="request">
     <c:param name="_top_G" value="news"/>
</c:import>
${daumNews }
</body>
</html>