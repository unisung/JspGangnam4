<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
   request.setCharacterEncoding("utf-8");
   //파일업로드된 경로
   String root = getServletContext().getRealPath("/");
   //C:\jspWorkspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\ch06_upload
   String savePath = root + "upload";
/*"C:\\jspWorkspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\ch06_upload\\upload"*/

//서버에 실제 저장된 파일명
 String filename = "a.png";

//실제 내보낼 파일명
String orgfilename = "테스트.png";

InputStream in = null;
OutputStream os = null;
File file = null;
boolean skip = false;
String client = "";

try{
	  //파일을 읽어 스트림에 담기
	  try{
		   file = new File(savePath, filename);
		   in = new FileInputStream(file);
	  }catch(FileNotFoundException e){//해당파일이 없으면 다운로드 skip
		   skip=true;
	  }
	  client = request.getHeader("User-Agent");//브라우저 종류확인
	  //파일 다운로드 헤더 지정
	  response.reset();
	  response.setContentType("application/octet-stream");
	  response.setHeader("Content-Description","JSP Generated Data");
	  
	  System.out.println("client:"+client);
	  
	  if(!skip){
		  //IE
		  //if(client.indexOf("MSIE")!=-1){//internetExplorere 브라우저인 겨우
		  if(client.indexOf("Trident")!=-1){//internetExplorere 브라우저인 겨우
			 response.setHeader("Content-Disposition", "attachment; filename="
		                        +new String(orgfilename.getBytes("KSC5601"),"ISO8859_1"));
		  }else{//IE 아닌 다른 브라우저
		//한글 파일명 처리
		orgfilename = new String(orgfilename.getBytes("utf-8"),"ISO8859_1");
		response.setHeader("Content-Disposition", "attachment; filename=\"" + orgfilename + "\"");
		response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
		  }
		response.setHeader("Content-Length",""+file.length());
		
		//아래 오류 발생 방지 처리
		//java.lang.IllegalStateException: 이 응답을 위해 getOutputStream()이 이미 호출되었습니다.
		out.clear();
		out = pageContext.pushBody();
		
		//다운로드 처리
		os = response.getOutputStream();
		byte[] b = new byte[(int)file.length()];
		int leng =0;
		
		while((leng = in.read(b)) > 0){
			os.write(b,0,leng);
		}
	  }else{//파일이 없을 때
		  response.setContentType("text/html;charset=utf-8");
	      out.print("<script>alert('파일을 찾을 수 없습니다.'); history.back(); </script>");
	  }
	  in.close(); os.close();
	  
}catch(Exception e){
  e.printStackTrace();	
}
%>
