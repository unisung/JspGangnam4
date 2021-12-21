package ch15_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDao {
	private static MemberDao instance = new MemberDao();
	private MemberDao() {}
	
	public static MemberDao getInstance() {
		return instance;
	}

	public Connection getConnection() {
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="scott";
		String password="tiger";
		Connection conn=null;
		try {
			  Class.forName("oracle.jdbc.driver.OracleDriver");
		      conn= DriverManager.getConnection(url,user,password);
		}catch(Exception e) {
		}
		return conn;
	}
	
	public int loginCheck(Member member) {
	     int result=0;
	     Connection conn=null;
	     PreparedStatement pstmt=null;
	     ResultSet rs=null;
	     String sql="select id,password from member2 where id=?";
	     try {
	    	  conn=getConnection();
	    	  pstmt = conn.prepareStatement(sql);
	    	  pstmt.setString(1,member.getId());   	  
	    	  rs = pstmt.executeQuery();
	    	  if(rs.next()) {
	    		 if(rs.getString(1).equals(member.getId())){
	    			 if(rs.getString(2).equals(member.getPassword())) {
	    				 result=1;
	    			 }else { result=0; }
	    		 }else {
	    		    result=-1;	 
	    		 }
	    	  }else {
	    		  result=-1;
	    	  }
	     }catch(Exception e) {e.printStackTrace();}
	     return result;
	}
}
