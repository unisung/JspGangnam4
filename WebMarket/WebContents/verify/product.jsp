<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<!-- 서버와 접속 후 브라우저 종료전 까지 모든 페이지에서 사용가능한 session범위로 지정 -->
<%-- <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/> --%>
<% ProductRepository productDAO = ProductRepository.getInstance(); %>
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
<link rel='stylesheet' 
href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css'/>
<style>
.inner-star::before{color: #FF9600;}
.outer-star {position: relative;display: inline-block;color: #CCCCCC;}
.inner-star {position: absolute;left: 0;top: 0;width: 0%;overflow: hidden;white-space: nowrap;}
.outer-star::before, .inner-star::before {content: '\f005 \f005 \f005 \f005 \f005';font-family: 'Font Awesome 5 free';font-weight: 900;}
</style>

<script>
ratings = {RatingScore: 4.5} 
totalRating = 5;
table = document.querySelector('.RatingStar');

	function rateIt() {
		for (rating in ratings) {
			ratingPercentage = ratings[rating] / totalRating * 100;
			ratingRounded = Math.round(ratingPercentage / 10) * 10 + '%';
			star = table.querySelector('.${"4"} .inner-star');
			numberRating = table.querySelector(`.${rating} .numberRating`);
			star.style.width = ratingRounded;
			numberRating.innerText = ratings[rating];
		}
	}
	rateIt();
</script>

</head>
<body>
<div class="jumbotron">
    <div class="container">
      <h1 class="display-3">상품 정보</h1>
    </div>
    <div class='RatingStar'>
	    <div class='RatingScore'>
	      <div class='outer-star'>
	      	<div class='inner-star'></div>
		 </div>
    </div>
</div>
</div>
<%
	String id = request.getParameter("id");
    Product product =productDAO.getProductById(id);
%>
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
          <input type="number" name="qty" value="0"><a href="#" class="btn btn-info" onclick="addToCart()">상품주문 &raquo;</a>
          <a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
          <a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
          </form>
     </div>
  </div>
</div>
<jsp:include page="../footer.jsp"/>
</body>
</html>
