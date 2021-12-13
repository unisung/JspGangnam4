package ch18_mvc;

import java.io.Serializable;

public class LoginBean implements Serializable{
	private static final long serialVersionUID = 1L;

	private String id;
	private String password;
	
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
	
	//비밀번호 확인 메소드
	public boolean validate() {
		if (password.equals("admin")) return true;
		else return false;
	}

}
