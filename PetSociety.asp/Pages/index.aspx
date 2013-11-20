<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PetSociety.asp.Pages.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<!-- Title here -->
		<title>PetSociety</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet" type="text/css"/>
		<link href="http://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css"/>
		<link href="http://fonts.googleapis.com/css?family=Lobster+Two" rel="stylesheet" type="text/css"/>
		<!-- Styles -->
		<!-- Bootstrap CSS -->
		<link href="../css/bootstrap.min.css" rel="stylesheet"/>
		<!-- Font awesome CSS -->
		<link href="../css/font-awesome.min.css" rel="stylesheet"/>	
		<!-- Countdown CSS -->
		<link href="../css/jquery.countdown.css" rel="stylesheet"/>
		<!-- Custom CSS -->
		<link href="../css/style.css" rel="stylesheet"/>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="#"/>
     <style>
      #map_canvas {
        width: 100%;
        height: 500px;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script>
        function initialize() {
            var map_canvas = document.getElementById('map_canvas');
            var map_options = {
                center: new google.maps.LatLng(44.5403, -78.5463),
                zoom: 8,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(map_canvas, map_options)
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
	</head>
<body>

        <div class="main">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="main-logo">
                     <h1>PetSociety</h1>
                     <p>We are Coming Soon</p>
                     <div class="countdown">
						<div id="countdown" class="hasCountdown"><span class="countdown_row countdown_show4"><span class="countdown_section"><span class="countdown_amount">24</span><br>Pets</span><span class="countdown_section"><span class="countdown_amount">23</span><br>Events</span><span class="countdown_section"><span class="countdown_amount">54</span><br>Users</span><span class="countdown_section"><span class="countdown_amount">2350</span><br>Locations</span></span></div>
					 </div>
					 <div class="clearfix"></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
    <!--
      <div class="subscription">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="subscribe-text">
						<i class="icon-envelope"></i>
						<span>Subscribe<b>.</b></span>
					</div>
				</div>
				<div class="col-md-4">
					<div class="firstform">
						<form class="form-inline" role="form">
							 <div class="input-group">
							  <input type="text" class="form-control">
							  <span class="input-group-btn">
								<button class="btn btn-primary" type="button">Subscribe</button>
							  </span>
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-5">
					<div class="quote">
								Nam ut justo malesuada <span class="tblue">vestibulum</span>, <span class="tblue">malesuada </span> mauris at, condimentumjusto.
					</div>
				</div>
			</div>
		</div>
	  </div>  
    -->
        <div class="map">
			<iframe height="500" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/?ie=UTF8&amp;ll=16.200457,77.355809&amp;spn=900.022378,100.042272&amp;t=m&amp;z=15&amp;output=embed"></iframe>
						
		</div>
        <div id="map_canvas"></div>
  <script src="../Scripts/jquery.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/respond.min.js"></script>
    <script src="../Scripts/html5shiv.js"></script>
    <script src="../Scripts/jquery.countdown.min.js"></script>
    <script src="../Scripts/custom.js"></script>
</body>
</html>
