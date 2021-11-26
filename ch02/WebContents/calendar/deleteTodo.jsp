<%@page import="dto.Todo"%>
<%@page import="java.time.LocalDate"%>
<%@page import="dto.Schedule"%>
<%@page import="java.util.List"%>
<%@page import="dao.ScheduleRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
	int seq=Integer.parseInt(request.getParameter("seq"));
    
	LocalDate date = LocalDate.of(year, month, dayOfMonth); 
	
	Schedule schedule=null;
	
	//스케줄 날짜의 todoList의 seq에 해당하는 todo삭제
	for(int i=0;i<list.size();i++){
		    schedule=list.get(i);
	    if(schedule!=null & schedule.getDate().equals(date)){
	    	List<Todo> todoList = schedule.getTodoList();
	        for(int j=0;j<todoList.size();j++){
	        	 if(todoList.get(j).getSeq()==seq){
	        		 todoList.remove(j);
	        		 break;
	        	  }
	           }
	    	}
	    }
%>
<%
	response.sendRedirect("calendar.jsp");
%>