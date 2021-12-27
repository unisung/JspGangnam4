<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>차트 테스트 1</title>
<!-- 차트 지원 라이브러리 chart.js 링크 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
/* 데이타 및 차트 정보 설정 부분 */
  /* 라벨 상수 선언  */
  const labels = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
  ];
  /* 데이타 상수 선언 - 라벨, 데이타 셋  */
  const data = { 
    labels: labels,
    datasets: [{
      label: '월별 실적 차트',
      backgroundColor: 'rgb(255, 99, 132)',
      borderColor: 'rgb(255, 99, 132)',
      data: [0, 10, 5, 2, 20, 30, 45],
    }]
  };
 /* 차트 설정 정보 */
  const config = {
    type: 'line',/* 차트 유형 */
    data: data,  /* 차트 데이타  */
    options: {}
  };
</script>
</head>
<body>
<div>
 <!-- 차트 그릴 영역 선언 canvas 엘리먼트 -->
  <canvas id="myChart"></canvas>
<!-- 차트 그리기   -->
<script>
 const myChart = new Chart(
    document.getElementById('myChart'),
    config
 );
</script>
</div>
</body>
</html>