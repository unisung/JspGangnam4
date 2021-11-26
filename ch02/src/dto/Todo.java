package dto;

import java.time.LocalDate;

public class Todo {
  private LocalDate date;
  private int seq;
  private String fromTime;
  private String toTime;
  private String toDo;
  
public Todo() {}

public Todo(LocalDate date, int seq, String fromTime, String toTime, String toDo) {
	super();
	this.date = date;
	this.seq = seq;
	this.fromTime = fromTime;
	this.toTime = toTime;
	this.toDo = toDo;
}

public LocalDate getDate() {
	return date;
}

public void setDate(LocalDate date) {
	this.date = date;
}

public int getSeq() {
	return seq;
}

public void setSeq(int seq) {
	this.seq = seq;
}

public String getFromTime() {
	return fromTime;
}

public void setFromTime(String fromTime) {
	this.fromTime = fromTime;
}

public String getToTime() {
	return toTime;
}

public void setToTime(String toTime) {
	this.toTime = toTime;
}

public String getToDo() {
	return toDo;
}

public void setToDo(String toDo) {
	this.toDo = toDo;
}

@Override
public String toString() {
	return "Todo [date=" + date + ", seq=" + seq + ", fromTime=" + fromTime + ", toTime=" + toTime + ", toDo=" + toDo
			+ "]";
}
  


  
}
