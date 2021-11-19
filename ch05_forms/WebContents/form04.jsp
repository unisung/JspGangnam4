<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
<h3>회원가입</h3>
	<form action="process03.jsp" name="member" method="post">
	<fieldset>
	 <legend>필수 입력사항</legend>
		<p>아이디 : <input name="id"> <input type="button" value="아이디 중복검사">
		<p>비밀번호 : <input type="password" name="passwd">
		<p>이름 : <input  name="name">
		<p>연락처 : <select name="phone1">
		              <option value="010">010</option>
		              <option value="011">011</option>
		              <option value="016">016</option>
		              <option value="017">017</option>
		              <option value="019">019</option>
		           </select>
				- <input maxlength="4" size="4" name="phone2"> -
				<input maxlength="4" size="4" name="phone3">
		<p> <select name="city" size="3">
		     <option value="서울시">서울특별시</option>
		     <option value="경기도">경기도</option>
		     <option value="인천시">인천시</option>
		     <option value="충청도">충청도</option>
		     <option value="전라도">전라도</option>
		     <option value="경상도">경상도</option>
		    </select>		
		<p>성별 : <input type="radio" name="sex" value="남성" checked>남성 
				 <input	type="radio" name="sex" value="여성" >여성
</fieldset>
<fieldset>	
 <legend>선택 입력사항</legend>		 
		<p>취미 : <label>독서<input type="checkbox" name="hobby" checked value="독서"></label>
				<label>운동<input type="checkbox" name="hobby" value="운동"></label> 
				<label>영화<input type="checkbox" name="hobby" value="영화"></label>
		<p><textarea rows="3" cols="30" name="comment"
		     placeholder="가입 인사를 입력해주세요"></textarea>
</fieldset>		     		
		<p><input type="submit" value="가입하기"> 
			<input type="reset"	value="다시쓰기">
	</form>
</body>
</html>