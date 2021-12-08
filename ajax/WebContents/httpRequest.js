/**
 * 
 */
var httpRequest = null;
function getRequest(){
	if(window.ActiveXObject){
		return new ActiveXObject("Msxml2.XMLHTTP");
	}else if(window.XMLHttpRequest){
		return new XMLHttpRequest();
	}else{
		return null;
	}
}
function sendRequest(url, params,callback, method){
	httpRequest = getRequest();
	var httpMethod = method?method:'GET';
	//default get방식
	if(httpMethod!='GET' && httpMethod!='POST'){
		httpMethod = 'GET';
	}
	//params값이 없거나 비어있으면 null로 처리, 아니면 전달된 params값 사용
	var httParams=(params==null||params=='')?null:params;
	var httpUrl=url;
	//전송방식이 'GET' 이고  params값이 있는 경우 url주소?파라미터쿼리스트링
	if((httpMethod=='GET') && (httParams!=null)){
		httpUrl = httpUrl + "?"+ httParams;
	}
	//설정
	httpRequest.open(httpMethod,httpUrl,true);
	httpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	//콜백함수 설정
	httpRequest.onreadystatechange = callback;
	//전송 post/get에 따른 파라미터 처리
	httpRequest.send(httpMethod=='POST'?httpParams:null);
}
function log(msg){
	var con=document.getElementById('console');
	if(msg!=null){
		con.innerHTML +=msg+'<br>';
	}
}
