package dao;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import dto.Schedule;
import dto.Todo;

public class ScheduleRepository {
	private static ScheduleRepository instance = new ScheduleRepository();
	
	private static List<Schedule> scheduleList = new ArrayList<Schedule>();
	
	static {
		Schedule schedule1 = new Schedule(LocalDate.of(2021, 11, 1), new ArrayList<Todo>() );
		schedule1.addTodList(new Todo(LocalDate.of(2021, 11, 1),1,"0930","1030","첫번째 업무"));
		schedule1.addTodList(new Todo(LocalDate.of(2021, 11, 1),2,"0930","1030","두번째 업무"));
		schedule1.addTodList(new Todo(LocalDate.of(2021, 11, 1),3,"0930","1030","세번째 업무"));
		
		Schedule schedule2 = new Schedule(LocalDate.of(2021, 11, 3), new ArrayList<Todo>() );
		schedule2.addTodList(new Todo(LocalDate.of(2021, 11, 3),1,"0930","1030","네번째 업무"));
		schedule2.addTodList(new Todo(LocalDate.of(2021, 11, 3),2,"1100","1230","다섯번째 업무"));
		
		Schedule schedule3 = new Schedule(LocalDate.of(2021, 11, 5), new ArrayList<Todo>() );
		schedule3.addTodList(new Todo(LocalDate.of(2021, 11, 5),1,"1030","1130","여섯째 업무"));
		schedule3.addTodList(new Todo(LocalDate.of(2021, 11, 5),2,"1530","1630","일곱째 업무"));
		
		scheduleList.add(schedule1); scheduleList.add(schedule2);scheduleList.add(schedule3);
	}
	public ScheduleRepository() {}
	
	public static ScheduleRepository getInstance() {
		return instance;
	}

    public int[] getScheduleCounts(){
    	int[] schedules = new int[32];
    	for(int i=0;i<scheduleList.size();i++) {
    		 System.out.println("scheduleCounts:"+scheduleList.get(i).getDate().getDayOfMonth());
    		 System.out.println("todolist.size():"+scheduleList.get(i).getTodoList().size());
    		 System.out.println("todolist.date():"+scheduleList.get(i).getTodoList());
    		  schedules[scheduleList.get(i).getDate().getDayOfMonth()]=scheduleList.get(i).getTodoList().size();   	    	
    	}
        System.out.println(Arrays.toString(schedules));
    	return schedules;
    }

	public void insertSchedule(Schedule schedule){
		scheduleList.add(schedule);
	}
	
	public List<Schedule> getAllSchedules(){
		return scheduleList;
	}

	public Todo getSchedule(LocalDate date, int seq){
		for(int i=0;i<scheduleList.size();i++) {
			Schedule schedule = scheduleList.get(i);
			if(schedule.getDate().equals(date)) {
		       return schedule.getTodoList().get(seq);
			}
		}
		return null;
	}
}