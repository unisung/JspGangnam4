<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:parseNumber value="1,100.12"  pattern="0,000.00" var="num"/>
parse결과:(0,000.00):${num}<p>

<fmt:parseNumber value="1,100.12"  pattern="#,###.##" var="num"/>
parse결과:(#,###.##):${num}<p>

<fmt:parseNumber value="1,100.12"  pattern="0,000.00" var="num" integerOnly="true"/>
parse결과:(0,000.00):${num}<p>

<fmt:formatNumber var="fmtNum" value="${num}" pattern="0,000.00"/>
천 단위 묶음 표시:${fmtNum}
</body>
</html>