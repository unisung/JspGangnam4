<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String path = "c:\\upload";
   //파일 업로드 핸들러 생성
   DiskFileUpload upload = new DiskFileUpload();
   
   //파일 업로드 최대 사이즈 설정
   upload.setSizeMax(1000000);
   //한번에 메모리에 저장할 사이즈 설정
   upload.setSizeThreshold(4096);//4kb
   //파일 업로드 경로 서정
   upload.setRepositoryPath(path);
   
   //전송된 request를 parsing하여 아이템들을 추출
   List items = upload.parseRequest(request);
   
  Iterator params = items.iterator();
  while(params.hasNext()){
	  FileItem item =(FileItem)params.next();
	  
	  if(item.isFormField()){//일반파라미터
		  String name = item.getFieldName();
		  String value = item.getString("utf-8");//문자셋 설정
		  out.print(name+"="+value+"<br>");
	  }else{//파일 인 경우
		  String fileFieldName = item.getFieldName();//필드명
	      String fileName = item.getName();//파일명
	      String contentType = item.getContentType();//MIME타입
	      
	      fileName = fileName.substring(fileName.lastIndexOf("\\")+1);// "c:\\temp\\a.jpg" ->a.jpg
	      long fileSize = item.getSize();//전송된 파일의 크기 구하기
	      
File file = new File(path +"/" + fileName); // "c:\\upload" + "\\" + "a.jpg" -> "c:\\upload\\a.jpg"
         item.write(file);

         //저장내용 출력
         out.print("----------------------------------------");
         out.print("요청 파라미터 이름: " +fileFieldName+"<br>");
         out.print("저장 파일 이름: " +fileName+"<br>");
         out.print("파일 콘텐츠 유형: " +contentType+"<br>");
         out.print("파일 크기: " +fileSize+"<br>");
	  }			  
  }
%>
</body>
</html>