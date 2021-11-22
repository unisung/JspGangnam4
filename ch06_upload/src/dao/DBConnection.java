package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static DBConnection instance=new DBConnection();
	Connection conn=null;
	private DBConnection() {}
		
	public static DBConnection getInstance() {
		return instance;
	}

	public static Connection getConnection() throws Exception {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="madang";
		String password="madang";
				
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection conn = DriverManager.getConnection(url,user,password);
       return conn;
	}
}
