<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script>
var xValues=[];
var yValues=[];
generateData("Math.sin(x)",0,10,0.5);

function generateData(value, i1,i2, step=1){
	for(let x=i1;x<=i2; x+=step){
		yValues.push(eval(value));
		xValues.push(x);
		console.log("yValues:",yValues);
		console.log("xValues:",xValues);
	}
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#myChart{width:100%; max-width: 600px;}
</style>
</head>
<body>
<canvas id="myChart"></canvas>

<script>
new Chart("myChart",{
	type:"line",
	data:{
		labels:xValues,
		datasets:[{
			fill:false,
			pointRadius:2,
			borderColor:"rgba(0,0,255,0.5)",
			data:yValues
		}]
	},
	options:{
		legend:{display:false},
		title:{
			display:true,
			text:"Math.sin(x)",
			fontSize:16
		}
	}
});
</script>
</body>
</html>