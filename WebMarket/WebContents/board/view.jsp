<%@page import="mvc.model.BoardDTO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   int nowPage =(Integer)request.getAttribute("page");
   BoardDTO notice =(BoardDTO)request.getAttribute("board");

%>
<!DOCTYPE html><html><head>
<link rel="stylesheet" 
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>글 내용 보기</title>
</head>
<body>
<jsp:include page="../menu.jsp"/>
<div class="jumbotron">
   <div class="container">
     <h1 class="display-3">게시판</h1>
   </div>
</div>

<div class="container">
    <form name="newUpdate" 
          action="BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowPage%>"
          class="form-horizontal" method="post" >
<%--          <input name="num" type="hidden" value="<%=notice.getNum()%>"> 
         <input name="pageNum" type="hidden" value="<%=nowPage%>"> --%>
         <input type="hidden" name="id" value="${sessionId}">
    <div class="form-group row">
        <label class="col-sm-2 control-label">성명</label>
        <div class="col-sm-3">
            <input name="name" class="form-control" value="<%=notice.getName()%>">
        </div>
    </div>
        <div class="form-group row">
        <label class="col-sm-2 control-label">제목</label>
        <div class="col-sm-3">
            <input name="subject" class="form-control" value="<%=notice.getSubject()%>">
        </div>
    </div>
        <div class="form-group row">
        <label class="col-sm-2 control-label">내용</label>
        <div class="col-sm-8" style="word-break:break-all;">
            <textarea rows="5" cols="50" name="content"
               class="form-control"><%=notice.getContent()%></textarea>
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-offset-2 col-sm-10">
            <c:set var="userId" value="<%=notice.getId() %>" />
            <c:if test="${sessionId==userId}"><!-- 작성자와 로그인 아이디가 같은 경우 버튼 보이기  -->
              <p>
         <a href="./BoardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowPage%>" 
             class="btn btn-danger">삭제</a>
             <input type="submit" class="btn btn-success" value="수정">
            </c:if>
            <a href="./BoardListAction.do?pageNum=<%=nowPage%>" class="btn btn-primary">목록</a>
        </div>
    </div>
    </form>
    <hr>
</div>
<jsp:include page="../footer.jsp"/>    
</body>
</html>