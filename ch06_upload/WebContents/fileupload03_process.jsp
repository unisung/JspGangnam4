<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head>
<body>
<%
  String fileUploadPath = "c:\\upload";
  
  DiskFileUpload upload = new DiskFileUpload();
  //request를 parsing하여 아이템들 추출
  List items = upload.parseRequest(request);
  Iterator params = items.iterator();
   
  while(params.hasNext()){
	  FileItem item = (FileItem)params.next();
	  if(item.isFormField()){//일반 파라미터
		  String title = item.getString("UTF-8");
	      out.print("<h3>"+title+"</h3>");
	  }else if(!item.isFormField()){//파일 파라미터
		  String fileName = item.getName();
	      fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);//c:\temp\a.jpg
	      File file = new File(fileUploadPath+"/"+fileName); // c:/uplodad/a.jpg
	      item.write(file);
	      out.print("파일이름: "+fileName+"<br>");
	  }
  }
%>
</body>
</html>