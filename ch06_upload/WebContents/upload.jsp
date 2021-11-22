<%@page import="dao.DBConnection"%>
<%@page import="org.apache.commons.io.FileUtils"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 String uploadPath = "c:\\upload";
 out.println("절대경로 : " + uploadPath + "<br/>");

int maxSize = 1024 * 1024 * 10; // 한번에 올릴 수 있는 파일 용량 : 10M로 제한

String id = "";

String fileName1 = ""; // 중복처리된 이름
String originalName1 = ""; // 중복 처리전 실제 원본 이름
long fileSize = 0; // 파일 사이즈
String fileType = ""; // 파일 타입

MultipartRequest multi = null;
File file = null;

try {
	// request,파일저장경로,용량,인코딩타입,중복파일명에 대한 기본 정책
	multi = new MultipartRequest(request, uploadPath, 
			                     maxSize, "utf-8", new DefaultFileRenamePolicy());

	// form내의 input name="id"  value를 가져옴
	id = multi.getParameter("id");
	
	// 전송한 전체 파일이름들을 가져옴
	//Enumeration files = multi.getFileNames();
	file = multi.getFile("photo");

	// 커넥션 연결
	Connection conn = DBConnection.getConnection();

	PreparedStatement psmt = null;

	StringBuffer sql 
	  = new StringBuffer("insert into photo(id,image) values(?,?)");
	byte[] buf = FileUtils.readFileToByteArray(file);
	psmt = conn.prepareStatement(sql.toString());
    	psmt.setString(1, id);
		psmt.setBytes(2, buf);
	
	psmt.executeUpdate();
	
} catch (Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>