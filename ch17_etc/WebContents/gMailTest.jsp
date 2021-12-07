<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.internet.AddressException"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>gmailTest</title>
</head>
<body>
<%
  /* 가입한 gmail계정 정보 입력  */
  String user ="본인 계정";
  String password="본인 패스워드";
  
  //SMTP서버 정보 설정
   Properties prop = new Properties();   
   prop.put("mail.smtp.host","smtp.gmail.com");
   prop.put("mail.smtp.port",465);//gmail port
   prop.put("mail.smtp.auth","true");
   prop.put("mail.smtp.ssl.enable","true");
   prop.put("mail.smtp.ssl.trust","smtp.gmail.com");
   
   //세션정보 생성
   Session session2 = Session.getDefaultInstance(prop,new Authenticator(){
	   protected PasswordAuthentication getPasswordAuthentication(){
		   return new PasswordAuthentication(user,password);
	   }
   });
   
   try{
	   MimeMessage message = new MimeMessage(session2);
	   //발신자 정보
	   message.setFrom(new InternetAddress(user));
	   //수신자 정보
	   message.addRecipient(Message.RecipientType.TO, new InternetAddress(user));
	   //제목
	   message.setSubject("gmail 테스트 ");
	   //내용
	   message.setText("gmail 내용 테스트 입니다.");
	   
	   //메일 전송처리
	   Transport.send(message);
	   
	   out.print("message sent successfully....");
   }catch(AddressException e){
	   e.printStackTrace();
   }catch(MessagingException e){
	   e.printStackTrace();
   }
%>

</body>
</html>