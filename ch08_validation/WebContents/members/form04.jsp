<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Form Processing</title>
<script>
function chk(){
	alert("aaaaaa");
}
</script>
<script>
function idChk(){
 var id=document.member.id.value;
 if(id.length==0){
	 alert("아이디를 입력하세요");
	 document.member.id.focus();
	 return;
 }else{
  /* 팝업창 열기 window.open(페이지); <-현재페이지는 opener임. */
  window.open('idCheck.jsp?id='+id);
 }
}
</script>
<script>
function chk(){
	var pass1 = document.member.passwd.value;
	var pass2 = document.member.passwd1.value;

	if(pass1!=pass2){
		alert("입력한 비밀번호와 확인번호가 서로 다릅니다.");
		document.member.passwd.value='';
		document.member.passwd1.value='';
		document.member.passwd.focus();
		return false;
	}
	
	//validation 체크
	var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	var regExpName = /^[가-힣]*$/;
	var regExpPassword =/^[0-9]*$/;
	var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
	var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; //akim
	//form명
	var form = document.member;
	
	var id = form.id.value;
	var name = form.name.value;
	var passwd = form.passwd.value;
	var phone = form.phone1.value +"-" + form.phone2.value +"-" + form.phone3.value;
	var email = form.emailId.value +"@"+form.emailDomain.value;
	
	if(!regExpId.test(id)){
		alert("아이디는 문자로 시작해주세요");
		form.id.focus();
		form.id.value="";
		return false;
	}
	
	if(!regExpName.test(name)){
		alert("이름은 한글만 입력해주세요!");
		form.name.focus();
		form.name.value='';
		return false;
	}
	
	if(!regExpPassword.test(passwd)){
		alert("비밀번호는 숫자만 입력해주세요");
		form.passwd.focus();
		form.passw.value='';
		form.passw1.value='';
		return false;
	}
	
	if(!regExpPhone.test(phone)){
		alert("연락처 입력을 확인 해주세요");
		form.phone2.focus();
		form.phone2.value='';
		form.phone3.value='';
		return false;	
	}
	if(!regExpEmail.test(email)){
		alert("이메일 입력을 확인 해주세요");
	    form.emailId.focus();
		form.emailId.value='';
		form.emailDomain.value='';
		return false;	
	}
	
	return true;
}
</script>
<script>
function selectDomain(obj){
	alert(obj.selectedIndex);
}
</script>
</head>
<body>
<h3>회원가입</h3>
	<form action="process03.jsp" name="member" method="post">
	<fieldset>
	 <legend>필수 입력사항</legend>
		<p>아이디 : <input name="id" required> 
		          <input type="button" value="아이디 중복검사" onclick="idChk()">
		<p>비밀번호 : <input type="password" name="passwd" required>
		<p>비밀번호 확인 : <input type="password" name="passwd1" required>
		<p>이름 : <input  name="name" required>
		<p>연락처 : <select name="phone1" required>
		              <option value="010">010</option>
		              <option value="011">011</option>
		              <option value="016">016</option>
		              <option value="017">017</option>
		              <option value="019">019</option>
		           </select>
				- <input maxlength="4" size="4" name="phone2" required> -
				<input maxlength="4" size="4" name="phone3" required>
				
		<p>email :<input name="emailId">@<input name="emailDomain">
		          <select name="emailDomainList" onchange="selectDomain(this)">
		           <option value="naver.com">naver.com</option>
		           <option value="daum.net">daum.net</option>
		           <option value="gmail.com">gmail.com</option>
		           <option value="">직접입력</option>
		 </select>		
		<p> <select name="city" size="3" required>
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
		<p><input type="submit" value="가입하기" onclick="return chk()" > 
			<input type="reset"	value="다시쓰기">
	</form>
</body>
</html>