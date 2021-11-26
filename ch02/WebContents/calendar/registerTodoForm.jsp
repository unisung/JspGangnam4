<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String ymd=request.getParameter("ymd");
%>
<form action="registerTodo.jsp" method="post">
  <input type="hidden" value="<%=ymd%>" name="ymd">
   <label>시작시간</label>
   <input type="time" name="fromTime">
   ~
   <label>종료시간</label>
   <input type="time" name="toTime"><br>
   <label>스케줄</label>
   <textarea rows="5" cols="30" name="todo"></textarea>
   <br>
   <input type="submit" value="등록">
</form>

</body>
</html>