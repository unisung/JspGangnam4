<%@page import="dto.RecentProduct"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<!-- 서버와 접속 후 브라우저 종료전 까지 모든 페이지에서 사용가능한 session범위로 지정 -->
<%-- <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/> --%>
<% ProductRepository productDAO = ProductRepository.getInstance(); %>
<%
String id = request.getParameter("id");
Product product =productDAO.getProductById(id);

 ArrayList<RecentProduct> recentProducts 
                =(ArrayList<RecentProduct>)session.getAttribute("recentProducts");
 
 RecentProduct recentProduct = new RecentProduct(id,product.getPname());
 
 if(recentProducts==null) {
     recentProducts = new ArrayList<RecentProduct>();
     recentProducts.add(new RecentProduct(id,product.getPname()));
     session.setAttribute("recentProducts", recentProducts);
 }else{
	 //세션에 최근본 상품이 없으면 생성하여 추가
	 if(!recentProducts.contains(recentProduct)){
		 recentProducts.add(new RecentProduct(id,product.getPname()));
		 session.setAttribute("recentProducts", recentProducts);
	 }
 }
%>
<!DOCTYPE html><html><head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function addToCart(){
	if(confirm("상품을 장바구니에 추가하시겠습니까?")){
		document.addForm.submit();
	}else{
		document.addForm.reset();
	}
}
</script>
</head>
<body>
<div class="jumbotron">
    <div class="container">
      <h1 class="display-3">상품 정보</h1>
    </div>
</div>
<div class="container">
  <div class="row">
     <div class="col-md-5">
        <img src="/resources/images/<%=product.getFilename()%>" style="width:100%">
     </div>
     <div class="col-md-6">
        <p><% for(int i=1;i<=4;i++){out.print("★");} %></p>
       <h3><%=product.getPname() %></h3>
       <p><%=product.getDescription() %>
       <p><b>상품 코드 : </b><span class="badge badge-danger"><%=product.getProductId() %></span>
       <p><b>제조사</b>:<%=product.getManufacturer() %>
       <p><b>분류</b>:<%=product.getCategory() %>
       <p><b>재고 수</b>:<%=product.getUnitsInStock() %>
       <h4><%=product.getUnitPrice() %>원</h4>
       <p><form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post">
          <div class="col-md-2">
          <input type="number" name="qty" value="0" class="form-control input-md">
          </div>
          <a href="#" class="btn btn-info" onclick="addToCart()">상품주문 &raquo;</a>
          <a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
          <a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
          </form>
     </div>
  </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>