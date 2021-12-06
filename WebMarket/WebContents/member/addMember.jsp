<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<script>
function selectDomain(obj){
	document.newMember.mail2.value=obj.value;
	if(obj.value=="") document.newMember.mail2.focus();
}
</script>        
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>회원 가입</title>
</head>
<body>
 <jsp:include page="/menu.jsp"/>
  <div class="jumbotron">
      <div class="container">
      	<h1 class="display-3">회원가입</h1>
      </div>
  </div>
  
  <div class="container">
    <form name="newMember" class="form-horizontal" action="processAddMember.jsp" 
                method="post" onsubmit="return checkForm()">
        <div class="form-group row">
              <label class="col-sm-2">아이디</label>
              <div class="col-sm-3">
                   <input name="id" type="text" class="form-control" placeholder="id">
              </div>
        </div>
        
        <div class="form-group row">
              <label class="col-sm-2">비밀번호</label>
              <div class="col-sm-3">
                   <input name="password" type="password" class="form-control" placeholder="password">
              </div>
        </div>
        
        <div class="form-group row">
              <label class="col-sm-2">비밀번호확인</label>
              <div class="col-sm-3">
                   <input name="password_confirm" type="password" class="form-control" placeholder="password">
              </div>
        </div>
        
        <div class="form-group row">
              <label class="col-sm-2">성명</label>
              <div class="col-sm-3">
                   <input name="name" type="text" class="form-control" placeholder="name">
              </div>
        </div>
        
        <div class="form-group row">
              <label class="col-sm-2">성별</label>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="남">
                <label class="form-check-label" for="inlineRadio1">남자</label>
              </div>
              <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="여">
              <label class="form-check-label" for="inlineRadio2">여자</label>
              </div>
        </div>

        <div class="form-group row">
              <label class="col-sm-2">생일</label>
              <div class="col-sm-4">
                   <input type="text" name="birthyy" maxlength="4" placeholder="년(4자)" size="6">
                   <select name="birthmm">
                   	<option value="">월</option>
                   	<option value="01">1</option>
                   	<option value="02">2</option>
                   	<option value="03">3</option>
                   	<option value="04">4</option>
                   	<option value="05">5</option>
                   	<option value="06">6</option>
                   	<option value="07">7</option>
                   	<option value="08">8</option>
                   	<option value="09">9</option>
                   	<option value="10">10</option>
                   	<option value="11">11</option>
                   	<option value="12">12</option>
                   </select>
                   <input type="text" name="birthdd" maxlength="2" placeholder="일" size="4">
              </div>
        </div>
        
       <div class="form-group row">
             <label class="col-sm-2">이메일</label>
             <div class="col-sm-10">
                <input type="text" name="mail1" maxlength="50">@
                <input type="text" name="mail2" maxlength="50">
                 <select name="mail2_select" onchange="selectDomain(this)">
                    <option disabled="disabled" selected="selected">선택</option>
                    <option>namver.com</option>
                    <option>daum.net</option>
                    <option>gmail.com</option>
                    <option>nate.com</option>
                    <option value="">직접입력</option>
                </select>
             </div>
       </div>
       
        
        
        
        
    </form>
  </div>


</body>
</html>