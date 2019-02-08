<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
	margin-bottom: 0%
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>
	<%-- <div><tiles:insertAttribute name="header" /></div> --%>
	<!-- ===========================    HEADER        ========================== -->
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<!--  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button> -->
			<tiles:insertAttribute name="header" />
		</div>
		<!-- NAVIGATION BAR LINK BUTTONS -->
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Projects</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
		</div>

	</div>
	</nav>

	<!-- ==========================       Header Closed          ========================= -->


	<div class="container-fluid text-center">
		<div class="row content">
			<!--  =============================   SIDE MENU                   ================================= -->
			<div class="col-sm-2 sidenav">

				<tiles:insertAttribute name="menu" />

			</div>
			<!-- ==================  SID MENU CLOSED    ================== -->

			<!-- ================  BODY STARED HERE=============== -->

			<div class="col-sm-10 text-left">
				<tiles:insertAttribute name="body" />
			</div>
<!-- <div class="col-sm-2 text-left">
				JHUUUUU
			</div> -->

			<!-- ================  BODY CLOSED HERE=============== -->
		</div>
	</div>

	<!-- ======================= FOOTER STARTED HERE ====================== -->
	<footer class="container-fluid text-center"> <tiles:insertAttribute
		name="footer" /> </footer>


	<%-- <div style="float: left; padding: 10px; width: 15%;">
		<tiles:insertAttribute name="menu" />
	</div> --%>

	<%-- <div
			style="float: left; padding: 10px; width: 80%; border-left: 1px solid pink;">
			<tiles:insertAttribute name="body" />
		</div> --%>
	<%-- <div style="clear: both">
	<tiles:insertAttribute name="footer" />
	</div> --%>


</body>
</html>
