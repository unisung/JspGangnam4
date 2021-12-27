<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 차트 지원 라이브러리 chart.js 링크 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
var xValues=[50,60,70,80,90,100,110,120,130,140,150];
var yValues=[7,8,8,9,9,9,10,11,14,14,15];
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- 차트 그릴 영역  -->
 <canvas id="myChart" style="width:100%;max-width:700px"></canvas>
 
<script>
new Chart("myChart",{
	 type:"line",
	 data:{
		 labels:xValues,
		 datasets:[{
			 fill:false,
			 lineTension:0,
			 backgroundColor:"rgba(0,0,255,1.0)",
			 borderColor:"rgba(0,0,255,0.5)",
			 data:yValues
		 }]
	 },
	 options:{
		 legend:{display:false},
		 scales:{
			 yAxes:[{ticks:{min:6, max:16}}],
		 }
	 }
}
		);
</script> 
</body>
</html>