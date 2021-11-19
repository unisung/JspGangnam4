<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<script>
function chk(){
	var productId = document.getElementById("productId");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	//상품 아이디 체크
	if(!check(/^P[0-9]{4,11}$/, productId,
			  "[상품코드]\nP와 숫자를 조합하여 5~12자 까지 입력하세요\n첫 글자는 반드시 P로 시작하세요" )){
		return false;
	}
	//상품 가격 체크
	if(unitPrice.value.lenght==0 || isNaN(unitPrice.value)){
		alert("[가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	//
	if(unitPrice.value < 0 ){
		alert("[가격]\n음수를 입력할 수 없습니다.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}else if(!check(/^\d+(?:[.]?[\d]?[\d])?$/,unitPrice, "[가격]\n소수점 둘째 자리까지만 입력하세요")){
		return false;
	}
	//재고 수 체크
	if(unitsInStock.value.lenght==0 || isNaN(unitsInStock.value)){
		alert("[재고 수]\n숫자만 입력하세요");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	//
	if(unitsInStock.value < 0 ){
		alert("[재고 수]\n음수를 입력할 수 없습니다.");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	
	document.newProduct.submit();
}
/* check(정규표현신, element, 메세지) */
function check(regExp, e, msg){
	if(regExp.test(e.value)){//정규표현식 객체 regExp.test(값); 정규표현식 규칙에 맞으면 true, false를 리턴하는 함수
		return true;
	}
	alert(msg);
	e.select();
	e.focus();
	return false;
}
</script>
<body>
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
  <div class="container">
     <h1 class="display-3">상품 등록</h1>
  </div>
</div>
<div class="container">
  <form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post">
    <div class="form-group row">
       <label class="col-sm-2">상품 코드</label>
       <div class="col-sm-3">
         <input type="text" name="productId" id="productId" class="form-control" required>
       </div>
    </div>
   <div class="form-group row">
       <label class="col-sm-2">상품명</label>
       <div class="col-sm-3">
         <input type="text" name="name" class="form-control" required>
       </div>
    </div>
    
  <div class="form-group row">
       <label class="col-sm-2">가격</label>
       <div class="col-sm-3">
         <input type="text" name="unitPrice" id="unitPrice" class="form-control" required>
       </div>
   </div>
    <div class="form-group row">
       <label class="col-sm-2">상세 정보</label>
       <div class="col-sm-5">
         <textarea rows="2" cols="50" name="description" class="form-control" required></textarea>
       </div>
   </div>
   <div class="form-group row">
       <label class="col-sm-2">제조사</label>
       <div class="col-sm-3">
         <input type="text" name="manufacturer" class="form-control" required>
       </div>
   </div>
  <div class="form-group row">
       <label class="col-sm-2">분류</label>
       <div class="col-sm-3">
         <input type="text" name="category" class="form-control" required>
       </div>
   </div>
   
   <div class="form-group row">
       <label class="col-sm-2">재고 수</label>
       <div class="col-sm-3">
         <input type="text" name="unitsInStock"  id="unitsInStock" class="form-control" required>
       </div>
   </div>
   <div class="form-group row">
       <label class="col-sm-2">상태</label>
       <div class="col-sm-5">
         <input type="radio" name="condition" value="New " checked="checked">신규 제품
         <input type="radio" name="condition" value="Old ">중고 제품
         <input type="radio" name="condition" value="Refurbished ">재생 제품
       </div>
   </div>
   
   <div class="form-group row">
       <label class="col-sm-2">상태</label>
       <div class="col-sm-offset-2 col-sm-10">
         <input type="submit" value="등록" class="btn btn-primary" onclick="return chk()">
       </div>
   </div>
  </form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>