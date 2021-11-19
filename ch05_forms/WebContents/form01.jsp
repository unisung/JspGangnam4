<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
<h3>회원가입</h3>
	<form action="#" name="member" method="post">
		<p>아이디 : <input name="id"> <input type="button" value="아이디 중복검사">
		<p>비밀번호 : <input type="password" name="passwd">
		<p>이름 : <input  name="name">
		<p>연락처 : <input maxlength="4" size="4" name="phone1">
				- <input maxlength="4" size="4" name="phone2"> -
				<input maxlength="4" size="4" name="phone3">
		<p>성별 : <input type="radio" name="sex" value="남성" checked>남성 
				 <input	type="radio" name="sex" value="여성" >여성
		<p>취미 : <label>독서<input type="checkbox" name="hobby" checked value="독서"></label>
				<label>운동<input type="checkbox" name="hobby" value="운동"></label> 
				<label>영화<input type="checkbox" name="hobby" value="영화"></label>
		<p><input type="submit" value="가입하기"> 
			<input type="reset"	value="다시쓰기">
	</form>
</body>
</html>