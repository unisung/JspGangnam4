<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 주석</title>
</head>
<body>
  <h2>A Test of Comments </h2>
  <%-- JSP주석 This comment will not be visible in the page source
       JSP주석은 서버에 처리 되므로 최종 생성되는 HTML에서는 빠짐 --%>
  <!-- HTML주석 This comment will be visible int the page source
       html주석은 최종 결과물이 html이므로 html소스에 포함됨. -->
</body>
</html>