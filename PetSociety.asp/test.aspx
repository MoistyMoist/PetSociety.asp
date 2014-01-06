<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="PetSociety.asp.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
    <script type="text/javascript">
        var map;
        var x = 1.37;
        var y = 103.84;
        function initialize() {
            var mapOptions = {
                center: new google.maps.LatLng(1.37, 103.84),
                zoom: 11
            };
            map = new google.maps.Map(document.getElementById("map-canvas"),
                mapOptions);
        }
        google.maps.event.addDomListener(window, 'load', initialize);
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
    <script type="text/javascript">
        google.load("visualization", "1", { packages: ["corechart"] });
        google.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Accident', 'Date'],
              ['2004', 1000],
              ['2005', 1170],
              ['2006', 660],
              ['2007', 1030]
            ]);

            var options = {
                title: 'Accident Rate'
            };

            var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }
    </script>
</head>
<body style="background-color: #ebe9e9">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />
        <!--this form is needed to clal javascript form code behind -->

        <nav class="navbar navbar-inverse" style="height: 80px;" role="navigation">
        </nav>

        <div class="row">
            <div class="col-md-offset-1 col-md-2 panel panel-primary">
                <div class="panel-heading" style="margin-left: -15px; margin-right: -15px">
                    <center><bold>Locations</bold></center>
                </div>
                <div class="panel-body">
                    <center><p><asp:Label runat="server" ID="locationNo" Text="1209" /></p></center>
                </div>
            </div>
            <div class="col-md-2 panel panel-primary" style="margin-left: 5px;">
                <div class="panel-heading" style="margin-left: -15px; margin-right: -15px">
                    <center><bold>Lost Pets</bold></center>
                </div>
                <div class="panel-body">
                    <p>
                        <center><p><asp:Label runat="server" ID="lostNo" Text="1209" /></p></center>
                    </p>
                </div>
            </div>
            <div class="col-md-2 panel panel-primary" style="margin-left: 5px;">
                <div class="panel-heading" style="margin-left: -15px; margin-right: -15px">
                    <center><bold>Reported Strays</bold></center>
                </div>
                <div class="panel-body">
                    <p>
                       <center><p><asp:Label runat="server" ID="strayNO" Text="1209" /></p></center>
                    </p>
                </div>
            </div>
            <div class="col-md-2 panel panel-primary" style="margin-left: 5px;">
                <div class="panel-heading" style="margin-left: -15px; margin-right: -15px">
                    <center><bold>Pets</bold></center>
                </div>
                <div class="panel-body">
                    <p>
                        <center><p><asp:Label runat="server" ID="petNO" Text="1209" /></p></center>
                    </p>
                </div>
            </div>
            <div class="col-md-2 panel panel-primary" style="margin-left: 5px;">
                <div class="panel-heading" style="margin-left: -15px; margin-right: -15px">
                    <center><bold>Events</bold></center>
                </div>
                <div class="panel-body">
                    <p>
                        <center><p><asp:Label runat="server" ID="eventNO" Text="1209" /></p></center>
                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-offset-1 col-md-10 panel panel-primary" style="padding: 10px;">
                <h4 class="text-success">
                    <bold>Analysis Panel</bold>
                </h4>
                <div id="Div1" class="col-md-10 panel-body" style="height: auto; width: 100%; min-height: 100px; max-height: 500px;">
                   

                    <br />
                    <button type="button" class="btn btn-primary pull-right">Analysis</button>
                    <button type="button" class="btn btn-success pull-right">Refresh</button>

                </div>
            </div>
            <div class="row">
                <div class="col-md-offset-1 col-md-5 panel panel-primary" style="padding: 10px;">
                    <h4 class="text-success">
                        <bold>Visulation</bold>
                        <small class="pull-right">3mins ago</small></h4>
                    <div id="map-canvas" class="col-md-10 panel-body" style="height: auto; width: 100%; min-height: 300px; max-height: 500px;">
                        <p>...</p>
                    </div>
                </div>
                <div class="col-md-5 panel panel-primary" style="margin-left: 10px; padding: 10px;">
                    <div id="piechart" class="col-md-10 panel-body" style="height: auto; width: 100%; min-height: 350px; max-height: 500px;">
                        <p>...</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-offset-1 col-md-10 panel panel-primary" style="padding: 10px;">
                    <h4 class="text-success">
                        <bold>Graph</bold>
                        <small class="pull-right">3mins ago</small></h4>
                    <div id="chart_div" class="col-md-10 panel-body" style="height: auto; width: 100%; min-height: 300px; max-height: 500px;">
                        <p>...</p>
                    </div>
                </div>
            </div>
    </form>
</body>
</html>
