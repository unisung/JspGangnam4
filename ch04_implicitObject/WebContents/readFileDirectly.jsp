<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="org.apache.catalina.connector.InputBuffer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>절대 경로 사용하여 자원 읽기</title>
</head>
<body>
<%
	char[] buff = new char[128];//128bit 버퍼
	int len=-1;
	/* web서버내의 파일경로 절대경로 */
	String filePath 
	  ="C:\\Users\\user\\git\\JspGangnam4\\ch04_implicitObject\\WebContents\\message\\notice.txt";
	
	try(InputStreamReader fr=new InputStreamReader(new FileInputStream(filePath),"UTF-8")){
		while((len=fr.read(buff))!=-1){
			out.print(new String(buff,0,len));
		}
	}catch(Exception e){
		out.print("익셉션 발생: " +e.getMessage());
	}
%>
</body>
</html>