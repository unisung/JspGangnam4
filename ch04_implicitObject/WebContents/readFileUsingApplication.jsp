<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>application 기본 객체 사용하여 자원 읽기</title>
</head>
<body>
<%
	String resourcePath = "/message/notice.txt";
%>
자원실제 경로:<br>
<%=application.getRealPath(resourcePath) %>
<br>
------------------<br>
<%=resourcePath %>의 내용<br>
-----------------<br>
<%
    /* 웹 어플리케이션 내에서 지정한 경로에 해당하는 자원으로 부터 데이터를 읽어 올수 잇는 InputStream 리턴 */
	char[] buff = new char[128];
    int len= -1;
    try(InputStreamReader br 
    	 = new InputStreamReader(application.getResourceAsStream(resourcePath),"UTF-8")){
    	while((len=br.read(buff))!=-1){
			out.print(new String(buff,0,len));
		}
    }catch(Exception e){
    	out.print("익셉션 발생: " +e.getMessage());
    }
%>
</body>
</html>