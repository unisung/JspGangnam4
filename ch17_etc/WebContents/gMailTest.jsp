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
  String user ="본인 gmail계정아이디";
  String password="gmail비밀번호";
  
  //SMTP서버 정보 설정
   Properties prop = new Properties();   
   prop.put("mail.smtp.host","smtp.gmail.com");//stmp서버 주소
   prop.put("mail.smtp.starttls.enable","true");//
   prop.put("mail.smtp.auth","true");
   prop.put("mail.smtp.port","587");//네이버 포트
   prop.put("mail.smtp.port","587");//네이버 포트
   prop.put("mail.smtp.ssl.protocols", "TLSv1.2");//시큐어 프로토콜 추가
   /* Caused by: javax.net.ssl.SSLHandshakeException: PKIX path building failed: sun.security.provider.certpath.SunCertPathBuilderException: unable to find valid certification path to requested target
   */
   //prop.put("mail.smtp.ssl.trust","*"); //인증서 전부 신뢰
   
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
	   message.addRecipient(Message.RecipientType.TO, new InternetAddress("수신자 email주소"));
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