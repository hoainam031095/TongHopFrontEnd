(function () {

//== Start Chart Pie and  Line Admin LTE
  // Định nghĩa Chart Line
  var randomScalingFactor = function(){ return Math.round(Math.random()*200)};
  // var dataOld = [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
  // var dataNew = [randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor(),randomScalingFactor()]
  var dataOld = $('#dataOld').html().split(',');
  var dataNew = $('#dataNew').html().split(',');
  var lineChartData = {
    //   labels : ["January","February","March","April","May","June","July"],
    labels : ["Tháng1","Tháng2","Tháng3","Tháng4","Tháng5","Tháng6","Tháng7","Tháng8","Tháng9","Tháng10","Tháng11","Tháng12"],
    datasets : [
    {
      label: "Năm trước",
      fillColor : "rgba(220,220,220,0.2)",
      strokeColor : "rgba(220,220,220,1)",
      pointColor : "rgba(220,220,220,1)",
      pointStrokeColor : "#fff",
      pointHighlightFill : "#fff",
      pointHighlightStroke : "rgba(220,220,220,1)",
      data: dataOld
    },
    {
      label: "Năm hiện tại",
      fillColor : "rgba(151,187,205,0.2)",
      strokeColor : "rgba(26,154,20,1)",
      pointColor : "rgba(26,154,20,1)",
      pointStrokeColor : "#fff",
      pointHighlightFill : "#fff",
      pointHighlightStroke : "rgba(151,187,205,1)",
      data: dataNew
    }
    ]
  }
  
  // Định nghĩa Chart Pie
  var pieData = [
                    {
                      value: 20,
                      color:"#990099",
                      highlight: "#000",
                      label: "Hà Nội"
                    },
                    {
                      value: 15,
                      color: "#dc3812",
                      highlight: "#000",
                      label: "Tp. Hồ Chí Minh"
                    },
                    {
                      value: 15,
                      color: "#ff9900",
                      highlight: "#000",
                      label: "Đà Nẵng"
                    },
                    {
                      value: 10,
                      color: "#3266cc",
                      highlight: "#000",
                      label: "Nghệ An"
                    },
                    {
                      value: 5,
                      color: "#109619",
                      highlight: "#000",
                      label: "Hà Tĩnh"
                    },
                    {
                      value: 28,
                      color: "#0099c5",
                      highlight: "#000",
                      label: "Hà Tĩnh"
                    }

                    ];

  window.onload = function(){

    //Load Chart.Line
    var ctx = document.getElementById("canvas").getContext("2d");
    window.myLine = new Chart(ctx).Line(lineChartData, {
      responsive: true
    });

    // Load ChartPie
    var ctx = document.getElementById("chart-area").getContext("2d");
        window.myPie = new Chart(ctx).Pie(pieData);
  }
  //
  //== End Chart Pie and  Line Admin LTE

  //== Start Pie Chart Google
  google.charts.load('current', {'packages':['corechart']});
  google.charts.setOnLoadCallback(drawChart);

  function drawChart() {
    var dataPieString = document.getElementById('data-piechart-string').innerHTML.split(',');
    var dataPieNumber = document.getElementById('data-piechart-number').innerHTML.split(',');

    // Cách 1:
    // var data = google.visualization.arrayToDataTable([
    //   ['Task', 'Hours per Day'],
    //   [dataPieString[0],parseInt(dataPieNumber[0])],
    //   [dataPieString[1],parseInt(dataPieNumber[1])],
    //   [dataPieString[2],parseInt(dataPieNumber[2])],
    //   [dataPieString[3],parseInt(dataPieNumber[3])],
    //   [dataPieString[4],parseInt(dataPieNumber[4])],
    //   [dataPieString[5],parseInt(dataPieNumber[5])]
    //   ]);

    // Cách 2:
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Task');
    data.addColumn('number', 'Hours per Day');
    for(var i = 0; i < dataPieString.length; i++)
    data.addRows([
      [dataPieString[i],parseInt(dataPieNumber[i])],
    ]);


    var options = {
      title: 'Biểu đồ khu vực tiêu thụ',
      // with: 500,
      // height: 500
    };

    var chart = new google.visualization.PieChart(document.getElementById('piechart'));
    chart.draw(data, options);
  }
  // == end Pie Chart Google

}).call(this);