<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LostChart.aspx.cs" Inherits="PetSociety.asp.LostChart" %>

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
              ['Language', 'Speakers (in millions)'],
              ['Assamese', 13], ['Bengali', 83], ['Bodo', 1.4],
              ['Dogri', 2.3], ['Gujarati', 46], ['Hindi', 300],
              ['Kannada', 38], ['Kashmiri', 5.5], ['Konkani', 5],
              ['Maithili', 20], ['Malayalam', 33], ['Manipuri', 1.5],
              ['Marathi', 72], ['Nepali', 2.9], ['Oriya', 33],
              ['Punjabi', 29], ['Sanskrit', 0.01], ['Santhali', 6.5],
              ['Sindhi', 2.5], ['Tamil', 61], ['Telugu', 74], ['Urdu', 52],
            ]);

            var options = {
                title: 'Indian Language Use',
                legend: 'none',
                pieSliceText: 'label',
                slices: {
                    4: { offset: 0.2 },
                    12: { offset: 0.3 },
                    14: { offset: 0.4 },
                    15: { offset: 0.5 },
                },
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));
            chart.draw(data, options);
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="piechart" class="col-md-10 panel-body" style="height: 100%; width: 100%; min-height: 500px; max-height: 500px; min-width:400px;">
        <p>...</p>
    </div>
    </form>
</body>
</html>
