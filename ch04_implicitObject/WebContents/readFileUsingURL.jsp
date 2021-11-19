<%@page import="java.net.URL"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>application 기본 객체 사용하여 자원 읽기</title>
</head>
<body>
<%
    //getRealPath()<-절대경로, getResource()<-URL, getResourceAsStream()<-Stream
    
	String resourcePath = "/message/notice.txt";

	char[] buff = new char[128];
    int len= -1;
    /* getResource(경로) 웹 어플리케이션 내에서 지정한 경로에 해당하는 자원에 접근할 수 있는 URL객체 리턴 */
    URL url = application.getResource(resourcePath);
    
    try(InputStreamReader br 
    	 = new InputStreamReader(url.openStream(),"UTF-8")){
    	while((len=br.read(buff))!=-1){
			out.print(new String(buff,0,len));
		}
    }catch(Exception e){
    	out.print("익셉션 발생: " +e.getMessage());
    }
%>
</body>
</html>