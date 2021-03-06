<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
<meta charset="UTF-8">
<title>QnA게시판</title>
</head>
<body>
<jsp:include page="/view/main/menu.jsp"/>
<div class="jumbotron">
   <div class="container">
      <h1 class="display-3">QnA게시판</h1>
   </div>
</div>
<div class="container">
   <form name="newWrite" action="./QnAWriteProcess.car"
      class="form-horizontal" 
      method="post" 
      onsubmit="return checkForm()">
      <input name="id" type="hidden" class="form-control" value="${id}">
      <input name="pageNum" type="hidden" value="${pageNum}">
      <input name="items" type="hidden" value="${items}">
      <input name="text" type="hidden" value="${text}">
      <input name="ref" type="hidden" value="${ref}">
      <input name="re_step" type="hidden" value="${re_step}">
      <input name="re_level" type="hidden" value="${re_level}">
      
      <div class="form-group row">
        <label class="col-sm-2 control-label">작성자</label>
        <div class="col-sm-3">
              <%-- ${}의 속성값은 자동 형변환처리 및 null 처리, String 인 경우 빈 문자열("")로 처리 --%>
           <input name="writer" class="form-control" value="${writer}" placeholder="writer">
        </div>
      </div>
      
        <div class="form-group row">
        <label class="col-sm-2 control-label">회원아이디</label>
        <div class="col-sm-3">
              <%-- ${}의 속성값은 자동 형변환처리 및 null 처리, String 인 경우 빈 문자열("")로 처리 --%>
           <input name="writer" class="form-control" value="${sessionId}" placeholder="id" disabled="disabled">
        </div>
      </div>
      
      
      <div class="form-group row">
        <label class="col-sm-2 control-label">제목</label>
        <div class="col-sm-5">
           <input name="subject" class="form-control" placeholder="subject" 
           <c:if test='${num!=null}'>
             value="답변 :"
           </c:if>
           >
         </div>
      </div>
      
      <div class="form-group row">
        <label class="col-sm-2 control-label">내용</label>
        <div class="col-sm-8">
           <textarea rows="5" cols="50" class="form-control" placeholder="content" name="content"></textarea>
        </div>
      </div>
      
     <div class="form-group row">
        <div class="col-sm-offset-2 col-sm-10">
           <input type="submit" class="btn btn-success" value="등록">
           <input type="reset" class="btn btn-primary" value="취소">
        </div>
      </div>
 
   </form>
</div>

<jsp:include page="/view/main/footer.jsp"/>
</body>
</html>