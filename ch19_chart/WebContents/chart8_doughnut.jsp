<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script>
var xValues=["Italy","France","Spain","USA","Argentina"];
var yValues=[55,49,44,24,15];
var barColors=["#b91d47", "#00aba9","#2b5797", "#e8c3b9","#1e7145"];
</script>

<style>
#myChart{width: 100%; max-width: 600px;}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<canvas id="myChart"></canvas>
<script>
new Chart("myChart",{
	type:"doughnut",
	data:{
		labels: xValues,
		datasets:[{backgroundColor:barColors, data:yValues}]
	},
	options:{
	  title:{
		  display:true,
		  text:"World Wide Wine Production 2018"
	  }	
	}
});
</script>
</body>
</html>