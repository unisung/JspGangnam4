<%@page import="dto.Todo"%>
<%@page import="java.util.List"%>
<%@page import="dao.ScheduleRepository"%>
<%@page import="java.time.LocalDate"%>
<%@page import="dto.Schedule"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    ScheduleRepository repository = ScheduleRepository.getInstance();
	List<Schedule> list = repository.getAllSchedules();
%>
<%
     request.setCharacterEncoding("utf-8");

	 String ymd = request.getParameter("ymd");
    int year = Integer.parseInt(ymd.substring(0,4));
    int month = Integer.parseInt(ymd.substring(4,6));
    int dayOfMonth = Integer.parseInt(ymd.substring(6));
    int index = Integer.parseInt(request.getParameter("index"));
    
    String fromTime = request.getParameter("fromTime");
    String toTime = request.getParameter("toTime");
    String toDo = request.getParameter("todo");
    
	LocalDate date = LocalDate.of(year, month, dayOfMonth); 

	Todo todo = new Todo(date,index,fromTime,toTime,toDo);
	
	for(int i=0;i<list.size();i++){
	    Schedule schedule=list.get(i);
	    if(schedule.getDate().equals(date)){
	    	List<Todo> toDoList = schedule.getTodoList();
	    	toDoList.set(index, todo);
	    	schedule.setTodoList(toDoList);
	    	}
	    }


%>
<%
	response.sendRedirect("calendar.jsp");
%>
</body>
</html>