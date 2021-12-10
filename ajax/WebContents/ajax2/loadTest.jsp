<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>서버의 데이터를 대상 엘리먼트에 삽입하기</title>
</head>
<!-- jquery 라이브러리 링크 -->
<script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
<script>
/* load(url[,data][,success]): 
	data: 요청시 서버에 보낼 자바스크립트 객체 맵, 문자열 형식의 데이타,
	success: 성공시 호출 콜백함수, */
$(document).ready(function(){
	$('button').click(function(){
		$('#container').load('resource.html');
	});/*버튼선택자 클릭시 이벤트 핸들러  */
});
</script>
<body>
 <button>서버로 부터 데이터 가져오기</button>
 <div id="container">데이터 가져오기 전</div>
</body>
</html>