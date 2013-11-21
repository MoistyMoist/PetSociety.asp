<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="analysis.aspx.cs" Inherits="PetSociety.asp.Pages.analysis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Title here -->
    <title>PetSociety</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Lobster+Two" rel="stylesheet" type="text/css" />
    <!-- Styles -->
    <!-- Bootstrap CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font awesome CSS -->
    <link href="../css/font-awesome.min.css" rel="stylesheet" />
    <!-- Countdown CSS -->
    <link href="../css/jquery.countdown.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="../css/style.css" rel="stylesheet" />
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
                zoom: 12
            };
            map = new google.maps.Map(document.getElementById("map-canvas"),
                mapOptions);
        }

        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>
<body style="background-repeat:repeat;background-image:url(../images/2.png)">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />
        <!--this form is needed to clal javascript form code behind -->
    </form>
    <nav class="navbar navbar-inverse" style="height: 80px;" role="navigation">
        <div class="page-header">
            <h1>Example page header <small>Subtext for header</small></h1>
        </div>
    </nav>

    <div class="col-md-2 panel panel-success" style="height: auto; min-height: 500px; max-height: 800px; border-color: white; padding: 0 0 0 5px;">
        <div class="panel-heading">
            Analysis tools options
        </div>
        <div class="panel-body" style="padding: 10px 0 0 0px;">
            <ul class="nav nav-pills nav-stacked">
                <li class="active">
                    <a href="#" class="thumbnail">
      <img src="../images/icon2.png" alt="..." style="height:100px;width:90%;"/>
    </a>
                </li>
                <li class="">
                    <a href="#">
                        <span class="badge pull-right">42</span>
                        Home
                    </a>
                </li>
                <li class="">
                    <a href="#">
                        <span class="badge pull-right">42</span>
                        Home
                    </a>
                </li>
            </ul>
        </div>

    </div>
    <div class="col-md-10 panel panel-info" style="border-color: white; padding: 0 0 0 0;background:none; margin: 0 0 0 0;">
        <div class="panel-heading">
            Visulation has never been so fuck up
        </div>
        <div id="map-canvas" class="col-md-10 panel-body" style="height: auto; width: 100%; min-height: 500px; max-height: 800px;">
        </div>

        <div class="panel-success">
            the play tbuttons
        </div>
    </div>


</body>
</html>
