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
	
	String name1 = multi.getParameter("name1");
    out.print("<h3>"+name1+"</h3>");
    String subject1 = multi.getParameter("subject1");
    out.print("<h3>"+subject1+"</h3>");
    
	String name2 = multi.getParameter("name2");
    out.print("<h3>"+name2+"</h3>");
    String subject2 = multi.getParameter("subject2");
    out.print("<h3>"+subject2+"</h3>");
    
	String name3 = multi.getParameter("name3");
    out.print("<h3>"+name3+"</h3>");
    String subject3 = multi.getParameter("subject3");
    out.print("<h3>"+subject3+"</h3>");
    
    /* 파일 정보 얻기 */
    Enumeration files = multi.getFileNames();//
    
    String names =(String)files.nextElement();
    //업로드된 파일의 시스템 파일명
    String filename1 = multi.getFilesystemName(names);
    //업로드된 파일의 원래 파일명
    String original1 = multi.getOriginalFileName(names);
    
    names =(String)files.nextElement();
    //업로드된 파일의 시스템 파일명
    String filename2 = multi.getFilesystemName(names);
    //업로드된 파일의 원래 파일명
    String original2 = multi.getOriginalFileName(names);
    
    names =(String)files.nextElement();
    //업로드된 파일의 시스템 파일명
    String filename3 = multi.getFilesystemName(names);
    //업로드된 파일의 원래 파일명
    String original3 = multi.getOriginalFileName(names);
    
%>
<br>
업로드된 파일명:<%=filename1 %>,파일 원본명: <%=original1 %><br>
업로드된 파일명:<%=filename2 %>,파일 원본명: <%=original2 %><br>
업로드된 파일명:<%=filename3 %>,파일 원본명: <%=original3 %><br>
</body>
</html>