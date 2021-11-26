<%@page import="java.util.ArrayList"%>
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
    
    String fromTime = request.getParameter("fromTime");
    String toTime = request.getParameter("toTime");
    String toDo = request.getParameter("todo");
    
    System.out.println("fromTime:" +fromTime);
    
	LocalDate date = LocalDate.of(year, month, dayOfMonth); 
	int seq=0;
	
	Schedule schedule=null;
	
	//기존 스케줄이 있을 때
	for(int i=0;i<list.size();i++){
		System.out.println("a");
	       Schedule schedule1=list.get(i);
	    if(schedule1!=null & schedule1.getDate().equals(date)){
	    	schedule = schedule1;
	    	System.out.println("y");
	    	seq = schedule.getTodoList().size();
	    	System.out.println("a:seq:"+seq);
	    	schedule.addTodList(new Todo(date,seq,fromTime,toTime,toDo));
	    	break;
	    	}
	    }
	
	//기존 스케줄이 없고 신규 등록시 
	if(schedule==null){
	   System.out.println("X");
	   schedule = new Schedule(date,new ArrayList<Todo>());
		schedule.setDate(date);
    	schedule.addTodList(new Todo(date,seq,fromTime,toTime,toDo));
    	list.add(schedule);		
	}


%>
<%
	response.sendRedirect("calendar.jsp");
%>
</body>
</html>