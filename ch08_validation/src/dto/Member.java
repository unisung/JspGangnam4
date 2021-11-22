package dto;

import java.util.Arrays;

public class Member {
 private String id;
 private String password;
 private String name;
 private String phone1;
 private String phone2;
 private String phone3;
 private String city;
 private String sex;
 private String[] hobbies;
 private String comment;

 public Member() {}
 public Member(String id, String password, String name, String phone1, String phone2, String phone3, String city,
		String sex, String[] hobbies, String comment) {
	this.id = id;
	this.password = password;
	this.name = name;
	this.phone1 = phone1;
	this.phone2 = phone2;
	this.phone3 = phone3;
	this.city = city;
	this.sex = sex;
	this.hobbies = hobbies;
	this.comment = comment;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPhone1() {
	return phone1;
}
public void setPhone1(String phone1) {
	this.phone1 = phone1;
}
public String getPhone2() {
	return phone2;
}
public void setPhone2(String phone2) {
	this.phone2 = phone2;
}
public String getPhone3() {
	return phone3;
}
public void setPhone3(String phone3) {
	this.phone3 = phone3;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public String[] getHobbies() {
	return hobbies;
}
public void setHobbies(String[] hobbies) {
	this.hobbies = hobbies;
}
public String getComment() {
	return comment;
}
public void setComment(String comment) {
	this.comment = comment;
}

@Override
public String toString() {
	return "Member [id=" + id + ", password=" + password + ", name=" + name + ", phone1=" + phone1 + ", phone2="
			+ phone2 + ", phone3=" + phone3 + ", city=" + city + ", sex=" + sex + ", hobbies="
			+ Arrays.toString(hobbies) + ", comment=" + comment + "]";
}

 

 
}
