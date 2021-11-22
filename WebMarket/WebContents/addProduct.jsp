<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>Insert title here</title>
</head>

<body>
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
  <div class="container">
     <h1 class="display-3">상품 등록</h1>
  </div>
</div>
<div class="container">
  <form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" 
        method="post" enctype="multipart/form-data">
    <div class="form-group row">
       <label class="col-sm-2">상품 코드</label>
       <div class="col-sm-3">
         <input type="text" name="productId" id="productId" class="form-control" disabled="disabled">
       </div>
    </div>
   <div class="form-group row">
       <label class="col-sm-2">상품명</label>
       <div class="col-sm-3">
       <%--페이지 출력시 name태그에 자동 으로 커서이동 처리 autofocus() --%>
         <input type="text" name="name" class="form-control"  autofocus required>
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
      <label class="col-sm-2">이미지</label>
       <div class="col-sm-5">
         <img style="width: 500px;" id="preview-image" >
         <input type="file" name="productImage" class="form-control" id="input-image">
       </div>
   </div>
   
   <div class="form-group row">
       <div class="col-sm-offset-2 col-sm-10">
         <input type="submit" value="등록" class="btn btn-primary" onclick="return chk()">
       </div>
   </div>
  </form>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
<script>
function readImage(input) {
    // 인풋 태그에 파일이 있는 경우
    if(input.files && input.files[0]) {
        // 이미지 파일인지 검사 (생략)
        // FileReader 인스턴스 생성
        const reader = new FileReader()
        // 이미지가 로드가 된 경우
        reader.onload = e => {
            const previewImage = document.getElementById("preview-image")
            previewImage.src = e.target.result
        }
        // reader가 이미지 읽도록 하기
        reader.readAsDataURL(input.files[0])
    }
}
// input file에 change 이벤트 부여
const inputImage = document.getElementById("input-image")
inputImage.addEventListener("change", e => {readImage(e.target)})
</script>