<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function checkForm(){
	//var regExp = /java/i;//초기화 방식으로 패턴 생성
	var regExp = new RegExp('java','i');//정규표현식 객체로 패턴 생성
	var str = document.frm.title.value;
	var result = regExp.exec(str);//패턴에 맞는 값을 배열로 추출 
	alert(result[0]);//
}
</script>
</head>
<body>
  <form name="frm">
    <p>제목: <input type="text" name="title">
    <input type="submit" value="전송" onclick="checkForm()">
  </form>
</body>
</html>