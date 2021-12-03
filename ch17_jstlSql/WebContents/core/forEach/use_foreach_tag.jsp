<%@page import="java.util.Date"%><%@page import="java.util.HashMap"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
<%
  /* 스크립틀릿으로 선언한 mapData변수와 jstl로 선언한 map변수는 서로 다른 변수 */
   HashMap<String, Object> mapData = new HashMap<String,Object>();
    mapData.put("name", "홍길동");
    mapData.put("today",new Date());
%>
<%-- int[] intArray = {1,2,3,4,5}; --%>
<c:set var="intArray" value="<%=new int[]{1,2,3,4,5} %>" />
<c:set var="map" value="<%=mapData %>"/>
<hr>
<h4>1부터 100까지 홀수 합</h4>
<c:set var="sum" value="0"/> <%-- sum변수 선언 --%>
<c:forEach var="i" begin="1" end="100" step="2">
<c:set var="sum"  value="${sum+i}"/> 
</c:forEach>
${sum}
<hr>

<h4>int형 배열</h4>
<c:forEach var="i" items="${intArray}" begin="2" end="4" varStatus="status">
   ${status.index} - ${status.count} - ${i} - ${status.first} - ${status.last} - ${status.current }<br>
</c:forEach>

<hr>
<h4>Map</h4>
<%-- map.getKey(), map.getValue() --%>
<c:forEach var="i"  items="${map}">
   ${i.key}=${i.value} <br>
</c:forEach>









</body>
</html>