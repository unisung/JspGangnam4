<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>i18n</title>
</head>
<body>
<%
    /* 통화와 숫자 표현을 위해 NumberFormat 클래스의 geetCurrencyInstance() 이용 */
	Locale locale = request.getLocale();
    NumberFormat currency = NumberFormat.getCurrencyInstance(locale);
    NumberFormat percentage = NumberFormat.getPercentInstance(locale);
    String fcurency = currency.format(1234567);
    String fpercentage = percentage.format(0.25);
%>
<p> 로케일의 통화 형식 :<%=fcurency %><br>
<p> 로케일의 비율 형식 : <%=fpercentage %>
</body>
</html>
