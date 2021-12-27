<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#myChart{width: 100%; max-width: 600px; height: 500px;}
</style>
</head>
<body>
<div id="myChart"></div>
<script>
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);
function drawChart(){
	var data = google.visualization.arrayToDataTable([
		  ['Contry', 'Mhl'],
		  ['Italy',55],
		  ['France',49],
		  ['Spain',44],
		  ['USA',24],
		  ['Argentina',15]
	]);
	
var options ={title:'World Wide Wine Production'};

var chart = new google.visualization.BarChart(document.getElementById('myChart'));
chart.draw(data,options);
}
</script>
</body>
</html>