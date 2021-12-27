<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<head>
<style>
#myChart{width: 100%; max-width: 600px; height: 500px;}
</style>
<script>
google.charts.load('current',{packages:['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart(){
	//set Data
var data =google.visualization.arrayToDataTable([
	['Price','Size'],
	[50,7],
	[60,8],
	[70,8],
	[80,9],
	[90,9],
	[100,9],
	[110,10],
	[120,11],
	[130,14],
	[140,14],
	[150,15]
]);

	//set options
	var options ={
	 title: 'House Prices vs. Size',
	 hAxis: {title: 'Square Meters'},
	 vAxis: {title: 'Price in Millions'},
	 legend: 'none'				
};
//Draw
var chart = new google.visualization.LineChart(document.getElementById('myChart'));	
chart.draw(data,options);
}
</script>
<meta charset="UTF-8">
<title>구글 차트</title>
</head>
<body>
 <div  id="myChart"></div>
</body>
</html>