<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
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

    
    </form>
  </div>


</body>
</html>