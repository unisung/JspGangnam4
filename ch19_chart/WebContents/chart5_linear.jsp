<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script>
var xValues=[];
var yValues=[];
generateData("x*2 + 7",0,10, 0.5);
function generateData(value, i1,i2,step=1){
	for(let x=i1;x<=i2; x+=step){
		yValues.push(eval(value));/*eval(문자열로 된 식을 실제 산식으로 변형하여 계산한결과 리턴),push(값)-추가  */
		xValues.push(eval(x));
		console.log("yValues",yValues);
		console.log("xValues",xValues);
	}
}
</script>
<style>
#myChart{width:100%; max-width: 600px;}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<canvas id="myChart"></canvas>
<script>
new Chart(
	"myChart",
	{
	 type:"line",
	data:{
		labels:xValues,
		datasets:[
			{
				fill:false,
				pointRadius:1,
				borderColor:"rgba(255,0,0,0.5)",
				data:yValues
			}]	
	},
	options:{
		legend:{display:false},
		title:{
			display:true,
			text:"y= x * 2 + 7",
			fontSize: 16
		}
	  }
	});
</script>
</body>
</html>