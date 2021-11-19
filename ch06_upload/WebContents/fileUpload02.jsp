<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="fileForm" method="post" 
      enctype="multipart/form-data" action="fileUpload01_process02.jsp">
      <p>이름1 : <input name="name1">
      <p>제목1: <input name="subject1">
      <p>파일:1 <input type="file" name="filename1">
       
      <p>이름2 : <input name="name2">
      <p>제목2: <input name="subject2">
      <p>파일:2 <input type="file" name="filename2">
      
      <p>이름3 : <input name="name3">
      <p>제목3: <input name="subject3">
      <p>파일:3 <input type="file" name="filename3">
      
      <p><input type="submit" value="파일 올리기">
</form>

</body>
</html>