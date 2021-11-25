<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
    String cartId = session.getId();
    
    String shipping_cartId=""; 
    String shipping_name=""; 
    String shipping_shippingDate=""; 
    String shipping_country=""; 
    String shipping_zipCode=""; 
    String shipping_roadAddress=""; 
    String shipping_jibunAddress=""; 
    String shipping_detailAddress=""; 
    String shipping_extraAddress="";
    
    //쿠키정보 얻기
    Cookie[] cookies = request.getCookies();
    if(cookies!=null){
    	for(int i=0;i<cookies.length;i++){
    		Cookie thisCookie = cookies[i];
    		String n=thisCookie.getName();
    		if(n.equals("Shipping_cartId"))
    			shipping_cartId = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		if(n.equals("Shipping_name"))
    			shipping_name = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		if(n.equals("Shipping_shippingDate"))
    			shipping_shippingDate = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		if(n.equals("Shipping_country"))
    			shipping_country = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		
    		if(n.equals("Shipping_zipCode"))
    			shipping_zipCode = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		if(n.equals("Shipping_roadAddress"))
    			shipping_roadAddress = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		if(n.equals("Shipping_jibunAddress"))
    			shipping_jibunAddress = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		if(n.equals("Shipping_detailAddress"))
    			shipping_detailAddress = URLDecoder.decode(thisCookie.getValue(),"utf-8");
    		if(n.equals("Shipping_extraAddress"))
    			shipping_extraAddress = URLDecoder.decode(thisCookie.getValue(),"utf-8");  
    	}
    }
%>
<%-- <%=shipping_cartId%><br> 
<%=shipping_name%><br>
<%=shipping_shippingDate%><br> 
<%=shipping_country%><br>
<%=shipping_zipCode%><br> 
<%=shipping_roadAddress%><br> 
<%=shipping_jibunAddress%><br> 
<%=shipping_detailAddress%><br> 
<%=shipping_extraAddress%><br> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>