<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventChart.aspx.cs" Inherits="PetSociety.asp.EventChart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Lobster+Two" rel="stylesheet" type="text/css" />
    <!-- Styles -->
    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font awesome CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- Countdown CSS -->
    <link href="css/jquery.countdown.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet" />
    <!--Google api -->
    <script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCn7PCDcQ6el2OzBjdIKHgFF2xfxdwNj3o&sensor=false">
    </script>
     <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        google.load("visualization", "1", { packages: ["corechart"] });
        google.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Year', 'No Of Events'],
              ['Oct-2013', 0],
              ['Nov-2013', 0],
              ['Dec-2013', 0],
              ['Jan-2013', 7],
              ['Feb-2013', 2]
            ]);

            var options = {
                title: 'Events Organized',
                vAxis: { title: 'Year', titleTextStyle: { color: 'red' } }
            };

            var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }
    </script>
  </head>
  <body>
    <div id="chart_div" style="width: 900px; height: 500px;"></div>
  </body>
</html>