package mvc.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import mvc.database.DBConnection;

//싱글톤 
public class BoardDAO {
  //1.자신타입의 static 필드 선언
  private static BoardDAO instance;
  //2.default생성자를 private로 선언
  private BoardDAO() {}
  //3. public 접근제어타입의 getInstance()메소드 선언,getInstance()로만 접근 
  public static BoardDAO getInstance() {
	  if(instance==null) instance = new BoardDAO();
	return instance;
  }
  
  public String getLoginNameById(String id) {
	  Connection conn=null;
	  PreparedStatement pstmt=null;
	  ResultSet rs=null;
	  
	  String name=null;
	  String sql="select * from member where id=?";
	  
	  try {
		    conn=DBConnection.getConnection();
		    pstmt=conn.prepareStatement(sql);
		    pstmt.setString(1, id);
		
		    rs=pstmt.executeQuery();
		    
		    if(rs.next()) {
		    	name=rs.getString("name");//rs.getString(칼럼명)
		    }
		    return name;//값을 db에서 얻어왔으면 name을 리턴, 아니면 null값 그대로 리턴.
	  }catch(Exception e) {
		  System.out.println("에러:"+e);
	  }finally {
		  try {
			    if(rs!=null) rs.close(); if(pstmt!=null) pstmt.close();
			    if(conn!=null)conn.close();
		  }catch(Exception e) {
			  throw new RuntimeException(e.getMessage());
		  }
	  }
	return null;  
  }
  
  //db에 저장하는 메소드
  public void insertBoard(BoardDTO board) {
	  Connection conn=null;
	  PreparedStatement pstmt=null;
	  
	  String name=null;
	  String sql = "insert into board(id, name, subject, content, regist_day, hit, ip) "
	  		     + " values(?,?,?,?,?,?,?)";
	  
	  try {
		    //db연결
		    conn=DBConnection.getConnection();
		    pstmt=conn.prepareStatement(sql);
		    //값 설정
		    pstmt.setString(1,board.getId());
		    pstmt.setString(2, board.getName());
			pstmt.setString(3, board.getSubject());
			pstmt.setString(4, board.getContent());
			pstmt.setString(5, board.getRegist_day());
			pstmt.setInt(6, board.getHit());
			pstmt.setString(7, board.getIp());
			//db저장처리
			pstmt.executeUpdate();		  
	  }catch(Exception e) {
		  System.out.println("에러:"+e);
	  }finally {
		  try {
                if(pstmt!=null) pstmt.close();
			    if(conn!=null)conn.close();
		  }catch(Exception e) {
			  throw new RuntimeException(e.getMessage());
		  }
	  }
  }//insertBoard()메소드 끝.
  
  
  
  
  
  
}
