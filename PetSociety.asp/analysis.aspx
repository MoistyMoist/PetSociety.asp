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
    <script type="text/javascript">
        function plotLocations() {
        }
    </script>



</head>
<body style="background-repeat: repeat; background-image: url(../images/2.png)">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />
        <!--this form is needed to clal javascript form code behind -->

        <nav class="navbar navbar-inverse" style="height: 80px;" role="navigation">
        </nav>

        <div class="col-md-2 panel panel-success" style="height: auto; min-height: 600px; max-height: 800px; border-color: white; padding: 0px 0 0 0px;">
            <div class="panel-heading">
                Tools
            </div>
            <div class="panel-body" style="padding: 0 0 0 0;">

                <ul class="nav nav-pills nav-stacked">

                    <li>

                        <asp:Image class="thumbnail" runat="server" src="http://www.radiatordigital.com/images/map_icon.png" alt="..." Style="height: 100px; padding: 0 0 0 0; width:100%;" />
                    </li>
                </ul>

                <hr />
                 <ul class="nav nav-pills nav-stacked">
                    <li>Vitualization Option

                    </li>
                    <li class="active">
                        <asp:HyperLink ID="HyperLink1" runat="server" Text="Time" />
                    </li>
                    <li class="">
                        <asp:HyperLink ID="HyperLink2" runat="server" Text="Heatmap" />
                    </li>
                    <li class="">
                        <asp:HyperLink ID="HyperLink3" runat="server" Text="Pins" />
                    </li>
                </ul>
                <hr />
                <ul class="nav nav-pills nav-stacked">
                    <li>Analysis Option

                    </li>
                    <li class="active">
                        <asp:HyperLink ID="L" runat="server" Text="Lost" />
                    </li>
                    <li class="">
                        <asp:HyperLink ID="LinkButton1" runat="server" Text="Accidents" />
                    </li>
                    <li class="">
                        <asp:HyperLink ID="LinkButton2" runat="server" Text="Events" />
                    </li>
                    <li class="">
                        <asp:HyperLink ID="LinkButton4" runat="server" Text="Strays" />
                    </li>
                    <li class="">
                        <asp:HyperLink ID="LinkButton5" runat="server" Text="Diseases" />
                    </li>
                </ul>
                <hr />

            </div>

        </div>
        <div class="col-md-10 panel panel-info" style="border-color: white; padding: 0 0 0 0; background: none; margin: 0 0 0 0;">
            <div class="panel-heading">
                has never been so fuck up
            </div>
            <div id="map-canvas" class="col-md-10 panel-body" style="height: auto; width: 100%; min-height: 500px; max-height: 800px;">
            </div>
            <asp:Panel runat="server" ID="panel" Style="background-color: white; padding-top: 50px;">
                <br />
                <asp:Label runat="server" Visible="true" Text="dsa" />
                <div class="progress progress-striped active">
                    <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                        <span class="sr-only">20% Complete</span>
                    </div>
                </div>
                dsa

            </asp:Panel>
        </div>
    </form>
</body>
</html>
