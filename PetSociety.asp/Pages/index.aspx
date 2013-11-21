﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PetSociety.asp.Pages.index" %>

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


        <!--Google api -->
        <script type="text/javascript" 
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCn7PCDcQ6el2OzBjdIKHgFF2xfxdwNj3o&sensor=false">
        </script>
        <style>
          #map-canvas {
            width: 100%;
            height: 500px;
          }
        </style>

        <script type="text/javascript">
           function initialize() {
               var mapOptions = {
                   center: new google.maps.LatLng(-34.397, 150.644),
                   zoom: 8
               };
               var map = new google.maps.Map(document.getElementById("map-canvas"),
                   mapOptions);
           }
           google.maps.event.addDomListener(window, 'load', initialize);
           function disp_confirm() {
               alert('dsad');
           }
        </script>
        
        <!-- plotting the map -->
        <script type="text/javascript">
           
            function plot_locations(x, y, image) {
                alert('works');
            }
            function plot_events(x, y, image) {

            }
            function plot_strays(x, y, image) {

            }
            function plot_losts(x, y, image) {

            }

        </script>

	</head>

    <body>

        <div class="main">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="main-logo">
                     <h1>PetSociety</h1>
                     <p>Society of lost pets</p>
                     <div class="countdown">
						<div id="countdown" class="hasCountdown"><span class="countdown_row countdown_show4"><span class="countdown_section"><span class="countdown_amount">24</span><br>Pets</span><span class="countdown_section"><span class="countdown_amount">23</span><br>Events</span><span class="countdown_section"><span class="countdown_amount">54</span><br>Users</span><span class="countdown_section"><span class="countdown_amount">2350</span><br>Locations</span></span></div>
					 </div>
					 <div class="clearfix"></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
    
      <div class="subscription">
		<div class="container">
			add the navigation button here<br /><br />
		</div>
	  </div>  
    
        <!--<div class="map">
			<iframe height="500" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/?ie=UTF8&amp;ll=16.200457,77.355809&amp;spn=900.022378,100.042272&amp;t=m&amp;z=15&amp;output=embed"></iframe>
						
		</div>-->
        <div id="map-canvas"></div>


        <script src="../Scripts/jquery.js"></script>
        <script src="../Scripts/bootstrap.min.js"></script>
        <script src="../Scripts/respond.min.js"></script>
        <script src="../Scripts/html5shiv.js"></script>
        <script src="../Scripts/jquery.countdown.min.js"></script>
        <script src="../Scripts/custom.js"></script>
    </body>
</html>
