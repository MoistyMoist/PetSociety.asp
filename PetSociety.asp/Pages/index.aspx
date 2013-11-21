<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PetSociety.asp.Pages.index" %>
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
     function initialize() {
            var mapOptions = {
                center: new google.maps.LatLng(1.37, 103.84),
                zoom: 12
            };
            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(-25.363882, 131.044922),
                map: map,
                title: "Hello World!"
            });
            map = new google.maps.Map(document.getElementById("map-canvas"),
                mapOptions);
           
            //marker.setMap(map);
            
     }
    
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
    <!-- plotting the map -->
    <script type="text/javascript">
       // google.maps.event.addDomListener(window, 'load', initialize);
        function plot_Glocations(x,y) {
            var mapOptions = {
                center: new google.maps.LatLng(-25.363882, 131.044922),
                zoom: 10
            };
            var image = {
                url: '../images/icon2.png',
                // This marker is 20 pixels wide by 32 pixels tall.
                size: new google.maps.Size(20, 32)
                // The origin for this image is 0,0.
                
                // The anchor for this image is the base of the flagpole at 0,32.
                
            };
            var marker = new google.maps.Marker({
                // position: new google.maps.LatLng(-25.363882, 131.044922),
                position: new google.maps.LatLng(x, y),
                animation: google.maps.Animation.DROP,
                map: map,
                title: "Hello World!",
                icon: image
            });
            marker.setMap(map);
        }


        function plot_locations(x,y) {
            
          //  setTimeout(function () { plot_locations(); }, 10000);
            var body = document.getElementsByTagName('BODY')[0];
            // CONDITION DOES NOT WORK
            if (document.readyState === "complete") {
                alert("plotting");
                plot_Glocations(x,y);
            } else {
                alert("waitting");
                // CODE BELOW WORKS
                if (window.addEventListener) {
                    setTimeout(function () { plot_Glocations(x,y); }, 7000);
                } else {
                    setTimeout(function () { plot_Glocations(x,y); }, 7000);
                }
            }
        }

        
    </script>


    <script type="text/javascript">
        function btnAccept_onclick() {

            PageMethods.startPlotting(onSuccess, onFailure);
        }
        function onSuccess(result) {
            alert(result);
        }


        function onFailure(error) {
            alert(error);
        }
</script>
    



</head>

<body>

   <form id="form1" runat="server">
       <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" />
        <!--this form is needed to clal javascript form code behind -->
    </form>
    <div class="main">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="main-logo">
                        <h1>PetSociety</h1>
                        <p>Society of lost pets</p>
                        <div class="countdown">
                            <div id="countdown" class="hasCountdown"><span class="countdown_row countdown_show4"><span class="countdown_section"><span class="countdown_amount">24</span><br>
                                Pets</span><span class="countdown_section"><span class="countdown_amount">23</span><br>
                                    Events</span><span class="countdown_section"><span class="countdown_amount">54</span><br>
                                        Users</span><span class="countdown_section"><span class="countdown_amount">2350</span><br>
                                            Locations</span></span></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="subscription">
        <div class="container">
            <button  onclick="plot_events()" />
            add the navigation button here<br />
            <br />
        </div>
    </div>
    <div id="map-canvas" style="width: 100%; height: 600px;"></div>


    <script src="../Scripts/jquery.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/respond.min.js"></script>
    <script src="../Scripts/html5shiv.js"></script>
    <script src="../Scripts/jquery.countdown.min.js"></script>
    <script src="../Scripts/custom.js"></script>
    
</body>
</html>
