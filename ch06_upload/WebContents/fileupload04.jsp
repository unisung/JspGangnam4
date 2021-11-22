<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="fileForm" method="post" enctype="multipart/form-data" 
      action="fileupload04_process.jsp">
     <p> 이 름:<input name="name">
     <p> 제 목:<input name="subject">
     <p> 파 일:<input type="file" name="filename">
     <input type="submit" value="파일 올리기"> 
</form>

</body>
</html>