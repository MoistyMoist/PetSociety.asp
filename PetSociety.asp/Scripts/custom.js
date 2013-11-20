/* Countdown */

$(function(){
	launchTime = new Date(); 
	launchTime.setDate(launchTime.getDate() + 365); 
	$("#countdown").countdown({until: launchTime, format: "dHMS"});
});