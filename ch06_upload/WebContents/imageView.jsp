<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="3" bordercolor="skyblue">
       <tr bgcolor="skyblue"><td>1</td><td>2</td><td>3</td></tr>
<%
     // 쿼리문
     String query="select id, image FROM photo";
     
     // 커넥션 연결
     Connection conn = DBConnection.getConnection();
     
     // DB에 쿼리문을 보낸다.
     PreparedStatement pstmt = conn.prepareStatement(query);
     
     // 쿼리문의 결과값을 rs에 담는다.
     ResultSet rs = pstmt.executeQuery();
     try{
      // 결과값을 출력한다.
      while(rs.next()){
       // 바이너리 데이터를 저장하고 있는 컬럼으로부터 데이터를 가져온다
       InputStream in = rs.getBinaryStream("image");
       // BufferedImage를 생성하면 ImageIO를 통해 브라우저에 출력하기가 쉽다.
      BufferedImage bimg = ImageIO.read(in);
       in.close();
 
       
    ByteArrayOutputStream baos = new ByteArrayOutputStream();
    ImageIO.write( bimg, "jpg", baos );
    baos.flush();
    byte[] imageInByteArray = baos.toByteArray();
    baos.close();
    String b64 = DatatypeConverter.printBase64Binary(imageInByteArray);
    
          out.println("<tr>");
          out.println("<td>"+rs.getString("id")+"</td>");
          out.print("<td>");
          out.print("<img src='data:x-image/jpg;base64,"+ b64+"' alt='Visruth.jpg not found' />");
          out.print("</td>");
          out.println("</tr>");
      }

//실제 사용시는 당연히 finally로 io가 발생된 부분은 닫아 줘야됨
     }catch(Exception e){
            e.printStackTrace();
     }
        %>
        </table>
</body>
</html>