<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    /* upload완료시 객체 생성 */
	MultipartRequest multi = new MultipartRequest(request, /* HttpServletRequest객체 */ 
			                                     "c:\\upload",/* 업로드 경로 */
			                                     5*1024*1024, /* 한번에 전송할수 있는 파일의 크기 */
			                                     "utf-8", /* 문자셋 */
			                                     new DefaultFileRenamePolicy());/* 동일파일명처리규칙 */
	
	String name = multi.getParameter("name");
    out.print("<h3>"+name+"</h3>");
    String subject = multi.getParameter("subject");
    out.print("<h3>"+subject+"</h3>");
    
    /* 파일 정보 얻기 */
    Enumeration files = multi.getFileNames();//
    String names =(String)files.nextElement();
    //업로드된 파일의 시스템 파일명
    String filename = multi.getFilesystemName(names);
    //업로드된 파일의 원래 파일명
    String original = multi.getOriginalFileName(names);
%>
업로드된 파일명:<%=filename %><br>
파일 원본명: <%=original %><br>
</body>
</html>