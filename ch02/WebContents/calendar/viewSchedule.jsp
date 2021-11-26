<%@page import="dto.Todo"%>
<%@page import="java.time.LocalDate"%>
<%@page import="dao.ScheduleRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
function deleteTodo(ymd, seq){
	alert(ymd+":"+seq);
	location.href='deleteTodo.jsp?ymd='+ymd+'&seq='+seq;
}
</script>
<%
String ymd = request.getParameter("ymd");
int year = Integer.parseInt(ymd.substring(0,4));
int month = Integer.parseInt(ymd.substring(4,6));
int dayOfMonth = Integer.parseInt(ymd.substring(6));
int seq = Integer.parseInt(request.getParameter("seq"));

ScheduleRepository repository = ScheduleRepository.getInstance();
 Todo todo=repository.getSchedule(LocalDate.of(year,month,dayOfMonth), seq);

%>
<form action="updateTodo.jsp" method="post">
   <input type="hidden" name="index" value="<%=todo.getSeq()%>">
  <label>날짜</label>
  <input type="text" value="<%=ymd%>" name="ymd" readonly="readonly"><br>
   <label>시작시간</label>
   <input type=time name="fromTime" id="fromTime" value="<%=todo.getFromTime()%>">
   ~
   <label>종료시간</label>
   <input type="time" name="toTime" value="<%=todo.getToTime()%>"><br>
   <label>스케줄</label>
   <textarea rows="5" cols="30" name="todo"><%=todo.getToDo() %></textarea>
   <br>
   <input type="submit" value="수정" onclick="chk()">
   <input type="button" value="삭제" onclick="deleteTodo('<%=ymd%>','<%=todo.getSeq()%>')">
</form>
</body>
</html>
<script>
function chk(){
	alert(document.getElementById('fromTime').value);
}
</script>