<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>implicit Object 오류메세지 보내기</title>
</head>
<body>
<%
     /* 오류 신호를 강제로 응답으로 전송시 sendError(오류코드, 메세지); */
	response.sendError(404, "요청 페이지를 찾을 수 없습니다.");
%>
</body>
</html>