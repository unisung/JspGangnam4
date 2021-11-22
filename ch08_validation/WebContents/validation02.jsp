<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type='text/css'>
		/* 스타일 */
		body {
			margin: 0;
		}
		a {
			color:#000000;
			text-decoration: none;
		}
		#wrap {
			width:960px;
			background: #cccccc;
			position: relative;
			left:50%;
			margin-left:-480px;
		}
		#header {
			background: #eeeeee;
			padding:20px;
		}
		#header .logo {
			float:left;
		}
		#content {
			padding:20px;
		}
		#content img {
			width:100%;
		}
		#footer {
			background: #000000;
			height: 50px;
			text-align: center;
			padding:20px;
		}
		#footer span {
			color:#ffffff;
		}
		.clear {
			clear:both;
		}

		#loginForm {
			position: relative;
			width: 50%;
			border:1px solid #999999;
			margin: 0 auto;
			padding: 20px;
		}

		#loginForm label {
			display: block;
			width:80px;
		}

		#loginForm input {
			width:96%;
		}

		#loginForm input[type="text"] , #loginForm input[type="password"] {
			padding: 2%;
			color:#666666;
			border:none;
			border-right:1px solid #999999;
			border-bottom:1px solid #999999;
		}


		#loginForm input[type="checkbox"] {
			width:5%;
		}

		#loginForm input[type="submit"] {
			width:100%;
			background: #555599;
			border:none;
			color:#ffffff;
			padding:10px;
		}

		#loginForm input[type="submit"]:hover {			
			background: #9999cc;
			cursor: pointer;
		}

		
	</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function checkLogin(){
	var form = document.loginForm;
	if(form.idname.value==""){
		alert("아이디를 입력해주세요");
		form.idname.focus();
		return false;
	}else if(form.idname.value.length < 6 || form.idname.value.length > 12){
		alert("아이디의 길이를 6~12자 이내로 입력해주세요");
		form.idname.select();
		return false;
	}else if(form.pw.value==""){
		alert("비밀번호를 입력해주세요");
		form.pw.focus();
		return false;
	}
	//form을 서버로 전송 -  폼명.submit();
	form.submit();
}
</script>
<body>
<div id="wrap">
		<div id="header">
			<span class="logo"><img src="/resources/img/logo.png" alt="사이트 로고"></span>
			<h1>CSS활용강의</h1>
			<h2>로그인 폼 연습하기</h2>
			<div class="clear"></div>
		</div>
		<div id="content">
			<form id="loginForm" name="loginForm" method="post" action="validation02_process.jsp">
				<h3>로그인</h3>
				<p>
				<label>아이디</label>
				<input name="idname" id="idname" type="text" />
				</p>
				<p>
				<label>비밀번호</label>
				<input name="pw" id="pw" type="password" />
				</p>
				<p>
					<input name="chkbox" id="chkbox" type="checkbox">					
				<span>기억하기</span>
				</p>

				<p>
				<input type="submit" value="전송"  onclick="return checkLogin()">
				</p>
			</form>
		</div>
		<div id="footer">
			<span>2015.CSS활용강좌 All rights reserved.</span>
		</div>
	</div>
</body>
</html>