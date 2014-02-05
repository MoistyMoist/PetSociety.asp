<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StrayChart.aspx.cs" Inherits="PetSociety.asp.StrayChart" %>

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
              ['Type', 'Number'],
              ['Dog', 11],
              ['Cat', 2],
              ['Bird', 2],
              ['Rabbit', 2],
              ['Turtle', 7], ['Fish', 7], ['Hamster', 7]
            ]);

            var options = {
                title: 'Current Lost Pets',
                pieHole: 0.4,
            };

            var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
            chart.draw(data, options);
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="donutchart" class="col-md-10 panel-body" style="height: auto; width: 100%; min-height: 300px; max-height: 500px;min-width: 300px; max-width: 500px;">
                        <p>...</p>
                    </div>
    </form>
</body>
</html>
