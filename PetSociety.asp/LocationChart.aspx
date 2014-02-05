<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LocationChart.aspx.cs" Inherits="PetSociety.asp.LocationChart" %>

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
              ['Month', 'Rate'],
              ['Oct-2013', 1000],
              ['Nov-2013', 1170],
              ['Dec-2013', 660],
              ['Jan-2014', 1030],
              ['Feb-2014', 1030]
            ]);

            var options = {
                title: 'Accident Rate'
            };

            var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="chart_div" class="col-md-10 panel-body" style="height: 100%; width: 100%; min-height: 500px; max-height: 500px; min-width:400px;">
        <p>...</p>
    </div>
    </form>
</body>
</html>

