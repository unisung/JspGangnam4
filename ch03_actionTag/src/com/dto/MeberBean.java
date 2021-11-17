package com.dto;

import java.io.Serializable;

public class MeberBean implements Serializable{
	private int id;
	private String name;
	
	//기본생성자
	public MeberBean() {}

	//getters/setters
	public int getId() { return id;	}
	public void setId(int id) { this.id = id;}
	public String getName() {return name;	}
	public void setName(String name) {		this.name = name;	}
	
}
