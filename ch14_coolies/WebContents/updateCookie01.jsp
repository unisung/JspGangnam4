<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Insert title here</title>
</head>
<body>
<%
	Cookie cook = new Cookie("name",URLEncoder.encode("홍길동"));
    response.addCookie(cook);
%>
<%=cook.getName() %>=<%=cook.getValue() %><br>
<%
	Cookie[] cookies = request.getCookies();
%>
쿠키목록<br>
<%
    /* 쿠키 값 변경 : 동일 이름의 쿠키를 새로 생성하여 응답으로 전송하면
       브라우저에서 동일이름으로 전달된 값을 변경처리 */
	if(cookies!=null && cookies.length >0) { 
		for(int i=0;i<cookies.length;i++){
             if(cookies[i].getName().equals("name")){
            	 Cookie cookie = new Cookie("name",URLEncoder.encode("임꺽정"));
            	 response.addCookie(cookie);
             }
		}
	}else{
%>
쿠키가 존재하지않습니다.
<%
	}
%>
</body>
</html>