<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>validation</title>
<script>
function checkForm(){
	var str = document.frm.name.value;
	var regExp = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	if(!regExp.test(str)){
		alert('이름은 숫자로 시작할 수 없습니다!');
		return false;
	}
}
</script>
</head>
<body>
<form name="frm">
  <p>이름 :<input type="text" name="name">
  <input type="submit" value="전송" onclick="return checkForm()">
</form>

</body>
</html>