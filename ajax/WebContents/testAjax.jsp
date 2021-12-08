<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>간단한 Ajax 어플리케이션</title>
<script>
/* 글로벌 변수 */
var httpRequest = null;
function getXMLHttpRequest(){
	if(window.ActiveXObject){
		return new ActiveXObject("Msxml2.XMLHTTP");
	}else if(window.XMLHttpRequest){
		return new XMLHttpRequest();
	}else{
		return null;
	}
}

function load(url){
	httpRequest = getXMLHttpRequest();
	httpRequest.onreadystatechange = viewMessage;//콜백함수 설정
	//url 및 전송 방법설정
	httpRequest.open('GET',url,true);
	//요청 전송
	httpRequest.send(null);//get방식은 send(null)로 전송
}

function viewMessage(){
/* 	alert(httpRequest.readyState); */
	if(httpRequest.readyState==4){ //요청전송후 결과데이타 가 완전히 전송되었을때 이고,
		if(httpRequest.status==200){//전송결과가 정상일때
			alert(httpRequest.responseText);//요청 전달 후 받은 결과 text
		}else{
			alert("실패:"+httpRequest.status);
		}
 	}
}
</script>
</head>
<body>
<input type="button" value="simple.txt" onclick="load('simple.txt')">
<input type="button" value="simple2.txt" onclick="load('simple2.txt')">
<input type="button" value="simple.jsp" onclick="load('simple.jsp')">
<input type="button" value="simple2.jsp" onclick="load('simple2.jsp')">
</body>
</html>