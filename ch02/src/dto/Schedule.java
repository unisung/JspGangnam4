package dto;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Schedule {
  private LocalDate date;
  List<Todo> todoList;
  
public Schedule() {}

public Schedule(LocalDate date, List<Todo> todoList) {
	this.date = date;
	this.todoList = todoList;
}

public LocalDate getDate() {
	return date;
}

public void setDate(LocalDate date) {
	this.date = date;
}

public List<Todo> getTodoList() {
	return todoList;
}

public void setTodoList(List<Todo> todoList) {
	this.todoList = todoList;
}

public void addTodList(Todo todo) {
	System.out.println("todoList:"+todoList);
		this.todoList.add(todo);
}

@Override
public String toString() {
	return "Schedule [date=" + date + ", todoList=" + todoList + "]";
}




 

  
}
