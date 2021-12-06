<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%
  request.setCharacterEncoding("UTF-8"); 
  
  String id=request.getParameter("id");
  String name=request.getParameter("name");
  String password=request.getParameter("password");
  String gender=request.getParameter("gender");
  String year=request.getParameter("birthyy");
  String month=request.getParameter("birthmm");
  String day=request.getParameter("birthdd");
  String birth = year+"/"+month+"/"+day;
  String mail1=request.getParameter("mail1");
  String mail2=request.getParameter("mail2");
  String mail = mail1+"@"+mail2;
  String phone1 = request.getParameter("phone1");
  String phone2 = request.getParameter("phone2");
  String phone3 = request.getParameter("phone3");
  String phone = phone1+"-"+phone2+"-"+phone3;
  String zipCode = request.getParameter("zipcode");
  String roadAddress = request.getParameter("roadAddress");
  String jibunAddress= request.getParameter("jibunAddress");
  String detailAddress = request.getParameter("detailAddress");
  String extraAddress = request.getParameter("extraAddress");
%>
<%=id %><br>
<%=name %><br>
<%=password %><br>
<%=gender %><br>
<%=birth %><br>
<%=mail %><br>
<%=phone %><br>
<%=zipCode %><br>
<%=roadAddress %><br>
<%=jibunAddress %><br>
<%=detailAddress %><br>
<%=extraAddress %><br>

<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>