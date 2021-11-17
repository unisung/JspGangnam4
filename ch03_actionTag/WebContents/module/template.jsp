<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String pageTitle=(String)request.getAttribute("PAGETTILE");
    String contentPage=request.getParameter("CONTENTPAGE");
%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title><%=pageTitle%></title>
</head>
<body>
<table width="750" border="1" cellpadding="2" cellspacing="0">
<tr height="50">
<td colspan="2"><jsp:include page="/module/top.jsp" flush="false"/> </td>
</tr>
<tr>
<td width="50" valign="top"><jsp:include page="/module/left.jsp" flush="false"/></td>
<td width="300" valign="top" height="350">
  <!--내용부분 시작:  -->
  <jsp:include page="<%=contentPage %>" flush="false" />
  <!--내용부분 끝:  -->
</td>
</tr>
<tr height="30">
<td colspan="2"><jsp:include page="/module/bottom.jsp" flush="false"/></td>
</tr>
</table>

</body>
</html>