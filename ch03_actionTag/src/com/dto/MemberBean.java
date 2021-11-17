package com.dto;

import java.io.Serializable;

public class MemberBean implements Serializable{
	private int id;//0
	private String name;//null
	
	//기본생성자
	public MemberBean() {}

	//getters/setters
	public int getId() { return id;	}
	public void setId(int id) { this.id = id;}
	public String getName() {return name;	}
	public void setName(String name) {		this.name = name;	}
	
}
