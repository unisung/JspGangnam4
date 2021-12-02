<%@page import="java.sql.ResultSet"%><%@page import="java.sql.PreparedStatement"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>배송지 리스트</title></head>
<body>
<script>
function removeDeliveryInfo(seq){
	if(confirm("정말 삭제하시겠습니까?")){
	  location.href="removeDeliveryInfo.jsp?seq="+seq;
	}else{
		return false;
	}
}
</script>
<jsp:include page="menu.jsp" />
<div class="jumbotron">
   <div class="container">
       <h1 class="display-3">배송지 리스트</h1>
   </div>
</div>
<%@ include file="dbconn.jsp" %>
<%
  String sql="select * from delivery order by seq";
   PreparedStatement pstmt =conn.prepareStatement(sql);
   ResultSet rs=pstmt.executeQuery();
%>
<div class="container">
  <div class="row">
     
  </div>
  <div style="padding-top:50px;">
    <table class="table table-hover">
      <tr>
        <th>순번</th><th>배송지명</th><th>국가</th><th>우편번호</th><th>도로명</th><th>지번</th>
             <th>상세주소</th><th colspan="2">참고항목</th>
      </tr>
      <%
      while(rs.next()){
      %>
          <tr>
          <td><%=rs.getInt(1) %></td>
          <td><a href="deliveryInfo.jsp?seq=<%=rs.getInt(1)%>"><%=rs.getString(2) %></a></td>
          <td><%=rs.getString(3) %></td>
          <td><%=rs.getString(4) %></td>
          <td><%=rs.getString(5) %></td>
          <td><%=rs.getString(6) %></td>
          <td><%=rs.getString(7) %></td>
          <td><%=rs.getString(8) %></td>
          <td><a href="javascript:removeDeliveryInfo('<%=rs.getInt(1)%>')" 
                   class="badge badge-danger">삭제</a></td>
          </tr>    	 
      	<% 
         }
      %>
      <tr>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
      </tr>
    </table>
    <a href="./products.jsp" class="bnt bnt-secondary">&laquo; 쇼핑 계속하기</a>
  </div>
  <hr>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>