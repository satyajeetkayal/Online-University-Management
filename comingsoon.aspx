<%@ Page Language="C#" AutoEventWireup="true" CodeFile="comingsoon.aspx.cs" Inherits="comingsoon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <style>
   /* Header */
.large-header {
	position: relative;
	width: 100%;
	background: #333;
	overflow: hidden;
	background-size: cover;
	background-position: center center;
	z-index: 1;
}

.demo-1 .large-header {
	background-image: url('../img/demo-1-bg.jpg');
}

.demo-2 .large-header {
	background-image: url('../img/demo-2-bg.jpg');
	background-position: center bottom;
}

.demo-3 .large-header {
	background: #7f8c8d;
}

.demo-4 .large-header {
	background: #f9f1e9;
}

.main-title {
	position: absolute;
	margin: 0;
	padding: 0;
	color: #f9f1e9;
	text-align: center;
	top: 50%;
	left: 50%;
	-webkit-transform: translate3d(-50%,-50%,0);
	transform: translate3d(-50%,-50%,0);
}

.demo-1 .main-title, 
.demo-3 .main-title {
	text-transform: uppercase;
	font-size: 4.2em;
	letter-spacing: 0.1em;
}

.demo-2 .main-title {
	font-family: 'Clicker Script', cursive;
	font-weight: normal;
	font-size: 8em;
	padding-left: 10px;
	text-shadow: 2px 2px 4px rgba(0,0,0,0.4);
}

.demo-2 .main-title::before {
	content: '';
	width: 20vw;
	height: 20vw;
	min-width: 3.5em;
	min-height: 3.5em;
	background: url(../img/deco.svg) no-repeat center center;
	background-size: cover;
	position: absolute;
	top: 50%;
	left: 50%;
	border-radius: 50%;
	z-index: -1;
	-webkit-transform: translate3d(-50%,-50%,0);
	transform: translate3d(-50%,-50%,0);
}

.demo-3 .main-title {
	padding: 10px 40px;
	border: 10px double #f9f1e9;
	text-transform: uppercase;
	font-family: Londrina Outline, sans-serif;
}

.demo-4 .main-title {
	font-size: 6em;
	font-weight: 300;
	padding: 10px 30px;
	text-transform: uppercase;
	color: #222;
}

.main-title .thin {
	font-weight: 200;
}

@media only screen and (max-width : 768px) {
	.demo-1 .main-title, 
	.demo-3 .main-title,
	.demo-4 .main-title {
		font-size: 3em;
	}

	.demo-2 .main-title {
		font-size: 4em;
	}
}

@font-face {
	font-weight: normal;
	font-style: normal;
	font-family: 'codropsicons';
	src:url('../fonts/codropsicons/codropsicons.eot');
	src:url('../fonts/codropsicons/codropsicons.eot?#iefix') format('embedded-opentype'),
		url('../fonts/codropsicons/codropsicons.woff') format('woff'),
		url('../fonts/codropsicons/codropsicons.ttf') format('truetype'),
		url('../fonts/codropsicons/codropsicons.svg#codropsicons') format('svg');
}

*, *:after, *:before { -webkit-box-sizing: border-box; box-sizing: border-box; }
.clearfix:before, .clearfix:after { content: ''; display: table; }
.clearfix:after { clear: both; }

body {
	background: #fff;
	color: #383a3c;
	font-weight: 400;
	font-size: 1em;
	line-height: 1.25;
	font-family: 'Raleway', Calibri, Arial, sans-serif;
}

a, button {
	outline: none;
}

a {
	color: #566473;
	text-decoration: none;
}

a:hover, a:focus {
	color: #34495e;
}

section {
	padding: 1em;
	text-align: center;
}

p.ref {
	text-align: center;
	padding: 2em 1em;
}

/* Header */
.codrops-header {
	margin: 0 auto;
	padding: 2em;
	text-align: center;
	max-width: 900px;
}

.codrops-header h1 {
	margin: 0;
	font-size: 4.5em;
	line-height: 1;
	font-weight: 200;
}

.codrops-header h1 span {
	display: block;
	padding: 1em 0 1.5em;
	font-size: 36%;
	color: #95a5a6;
	line-height: 1.4;
}

/* To Navigation Style */
.codrops-top {
	width: 100%;
	text-transform: uppercase;
	font-weight: 700;
	font-size: 0.69em;
	text-align: center;
	padding: 3em 0;
}

.codrops-top a {
	display: inline-block;
	padding: 1.5em;
	text-decoration: none;
	letter-spacing: 1px;
}

.codrops-icon:before {
	margin: 0 4px;
	text-transform: none;
	font-weight: normal;
	font-style: normal;
	font-variant: normal;
	font-family: 'codropsicons';
	line-height: 1;
	speak: none;
	-webkit-font-smoothing: antialiased;
}

.codrops-icon-drop:before {
	content: "\e001";
}

.codrops-icon-prev:before {
	content: "\e004";
}

/* Demo Buttons Style */
.codrops-demos {
	padding-top: 1em;
	font-size: 0.8em;
}

.codrops-demos a {
	display: inline-block;
	margin: 0.35em 0.1em;
	padding: 0.5em 1.2em;
	outline: none;
	text-decoration: none;
	text-transform: uppercase;
	letter-spacing: 1px;
	font-weight: 700;
	border-radius: 2px;
	font-size: 110%;
	border: 2px solid transparent;
}

.codrops-demos a:hover,
.codrops-demos a.current-demo {
	border-color: #383a3c;
}

.codrops-demos h3 {
	margin: 0;
	padding: 1em 0 0.5em 0;
	font-size: 0.9em;
	float: left;
	min-width: 90px;
	clear: left;
}

.codrops-demos div:not(:first-child) h3 {
	padding-top: 2em;
}

.codrops-demos a:hover,
.codrops-demos a.current-demo {
	color: inherit;
	border-color: initial;
}

/* Related demos */
.related {
	padding: 10em 0;
}

.related p {
	font-size: 1.5em;
}

.related > a {
	display: inline-block;
	text-align: center;
	margin: 20px 10px;
	padding: 25px;
	vertical-align: middle;
}

.related a img {
	max-width: 100%;
	opacity: 0.8;
	border-radius: 10px;
}

.related a:hover img,
.related a:active img {
	opacity: 1;
}

.related a h3 {
	margin: 0;
	min-height: 63px;
	padding: 0.5em 0 0.3em;
	max-width: 300px;
	text-align: center;
	font-weight: 400;
	font-size: 1em;
}

@media screen and (max-width: 40em) {

	.codrops-header h1 {
		font-size: 2.5em;
	}
}

article,aside,details,figcaption,figure,footer,header,hgroup,main,nav,section,summary{display:block;}audio,canvas,video{display:inline-block;}audio:not([controls]){display:none;height:0;}[hidden]{display:none;}html{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%;}body{margin:0;}a:focus{outline:thin dotted;}a:active,a:hover{outline:0;}h1{font-size:2em;margin:0.67em 0;}abbr[title]{border-bottom:1px dotted;}b,strong{font-weight:bold;}dfn{font-style:italic;}hr{-moz-box-sizing:content-box;box-sizing:content-box;height:0;}mark{background:#ff0;color:#000;}code,kbd,pre,samp{font-family:monospace,serif;font-size:1em;}pre{white-space:pre-wrap;}q{quotes:"\201C" "\201D" "\2018" "\2019";}small{font-size:80%;}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline;}sup{top:-0.5em;}sub{bottom:-0.25em;}img{border:0;}svg:not(:root){overflow:hidden;}figure{margin:0;}fieldset{border:1px solid #c0c0c0;margin:0 2px;padding:0.35em 0.625em 0.75em;}legend{border:0;padding:0;}button,input,select,textarea{font-family:inherit;font-size:100%;margin:0;}button,input{line-height:normal;}button,select{text-transform:none;}button,html input[type="button"],input[type="reset"],input[type="submit"]{-webkit-appearance:button;cursor:pointer;}button[disabled],html input[disabled]{cursor:default;}input[type="checkbox"],input[type="radio"]{box-sizing:border-box;padding:0;}input[type="search"]{-webkit-appearance:textfield;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box;}input[type="search"]::-webkit-search-cancel-button,input[type="search"]::-webkit-search-decoration{-webkit-appearance:none;}button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0;}textarea{overflow:auto;vertical-align:top;}table{border-collapse:collapse;border-spacing:0;}

   
  body, html {
    height: 100%;
    margin: 0;
}

.bgimg 
{
	background-color:#FC4A1A;
  
    height: 100%;
    background-position: center;
    background-size: cover;
    position: relative;
    color: black;
    font-family: "Courier New", Courier, monospace;
    font-size: 25px;
}

.topleft {
    position: absolute;
    top: 0;
    left: 16px;
}

.bottomleft {
    position: absolute;
    bottom: 0;
    left: 16px;
}

.middle {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
}

hr {
    margin: auto;
    width: 40%;
} 
   </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
         
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Animated Background Headers | Demo 1</title>
		<meta name="description" content="Examples for creative website header animations using Canvas and JavaScript" />
		<meta name="keywords" content="header, canvas, animated, creative, inspiration, javascript" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<link href='http://fonts.googleapis.com/css?family=Raleway:200,400,800' rel='stylesheet' type='text/css'>
		<!--[if IE]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
	<body>
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<h1 class="main-title"><big>Coming </big><span class="thin">SOON!</br><small><small><small>by</small></br></small><small>SYS Developers</small></small></span></h1>
				
				</div>
				
				<div class="codrops-header">
					
					<nav class="codrops-demos">
						
						
					</nav>
				</div>
			</div>
			</div>
			</body>
			<!-- Related demos -->
			<body>
  
   

			<body>
				<div>
    <div class="bgimg">
  <div class="topleft">
    <p><big></big></p>
  </div>
  <div class="middle">
    <h1>NEXT PROJECT</h1>
    <hr>
    <p id="demo" style="font-size:30px"></p>
  </div>
  <div class="bottomleft">
    <p></p>
  </div>
  </div>
 </form>
			
			
		</div><!-- /container -->
		<script src="js/TweenLite.min.js"></script>
		<script src="js/EasePack.min.js"></script>
		<script src="js/rAF.js"></script>
		<script src="js/demo-1.js"></script>
		
		<script>
		    // Set the date we're counting down to
		    var countDownDate = new Date("Jan 25, 2018 15:37:25").getTime();

		    // Update the count down every 1 second
		    var countdownfunction = setInterval(function() {

		        // Get todays date and time
		        var now = new Date().getTime();

		        // Find the distance between now an the count down date
		        var distance = countDownDate - now;

		        // Time calculations for days, hours, minutes and seconds
		        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
		        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
		        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

		        // Output the result in an element with id="demo"
		        document.getElementById("demo").innerHTML = days + "days " + hours + "hours "
    + minutes + "minutes " + seconds + "seconds ";

		        // If the count down is over, write some text 
		        if (distance < 0) {
		            clearInterval(countdownfunction);
		            document.getElementById("demo").innerHTML = "EXPIRED";
		        }
		    }, 1000);
</script>

	</body>
</html>
  
			
			
		</div><!-- /container -->
		<script src="js/TweenLite.min.js"></script>
		<script src="js/EasePack.min.js"></script>
		<script src="js/rAF.js"></script>
		<script src="js/demo-1.js"></script>
		
		
</body>
</html>


    </div>
 </form>
</body>
</html>
