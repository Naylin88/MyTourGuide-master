<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
     <%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- meta -->
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
			<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no"/>
	<title>Best Offer, Travel Myanmar</title>



	<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
	<link rel="stylesheet" href="<c:url value="/css/ionicons.css" />">
	<link rel="stylesheet" href="<c:url value="/css/ionicons.min.css" />">
	<link rel="stylesheet" href="<c:url value="/css/owl.carousel.css" />">
	<link rel="stylesheet" href="<c:url value="/css/owl.theme.css" />">
    <link rel="stylesheet" href="<c:url value="/css/main.css" />">
    <link rel="stylesheet" href="<c:url value="/css/session.css" />">
	<link rel="stylesheet" href="<c:url value="/css/about.css" />">

	<style type="text/css">
	body
	{
  font-family  : Arial;
  font-size  : 12pt;
	
  
	}
	div.row
	{
		background-color: #60c9eb;
	}
</style>
	
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
			<!--[if lt IE 9]>
				<script src="assets/js/html5shiv.js"></script>
				<script src="assets/js/respond.js"></script>
			<![endif]-->

			<!--[if IE 8]>
		    	<script src="assets/js/selectivizr.js"></script>
		    <![endif]-->
				
</head>

<body>

<!-- Home -->
	<section class="header">
		
		<nav class="navbar navbar-default">
			<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html" title="HOME"><i class="ion-android-walk"></i> Travel <span>Myanmar</span></a>
				</div> <!-- /.navbar-header -->

		    <!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="${pageContext.request.contextPath}/index">Home</a></li>
						<li class="active"><a href="${pageContext.request.contextPath}/bestOffer">Best Offer</a></li>
						<li><a href="${pageContext.request.contextPath}/contact">Contact US</a></li>
					</ul> <!-- /.nav -->
			    </div><!-- /.navbar-collapse -->
		  	</div><!-- /.container -->
		</nav>
	</section> <!-- /#header -->

<!-- Who we are -->
	<section class="section-wrapper2">
		<div class="container">
			<h2 class="section-title">
				Best Offer
			</h2>
			<p class="section-subtitle">
				Best Offer in Myanmar 
			</p>
			
			<!-- row -->
			
			<div class="row">
			
			
				<div class="col-sm-4 col-xs-6">
						<h3>Affordalbe Hotels</h3>
					
						<div id="dvContent1">
    					<c:out value="${dvContent1}" />
						</div>
				</div> <!-- Col -->
				
				<div class="col-sm-4 col-xs-6">
						<h3>Luxury Hotels</h3>
					
						<div id="dvContent2">
    
						</div>
				</div> <!-- Col -->		
				
						
				<div class="col-sm-4 col-xs-6">
						<h3>Luxury Transport</h3>
					
						<div id="dvContent3">
    
						</div>
				</div> <!-- Col -->			
				
																			
			</div> <!-- /.row -->
		</div> <!-- /.container -->
	</section> <!-- /.wwa -->


	

	<div class="subscribe section-wrapper">
		<a class="brand-logo" href="index.html" title="HOME"><i class="ion-android-walk"></i> Travel <span>Myanmar</span></a>
		
		</div>
					
	
	
		<ul class="social-icon">
			<li><a href="#"><i class="ion-social-twitter"></i></a></li>
			<li><a href="#"><i class="ion-social-facebook"></i></a></li>
			<li><a href="#"><i class="ion-social-linkedin-outline"></i></a></li>
			<li><a href="#"><i class="ion-social-googleplus"></i></a></li>
		</ul>
	</div> <!-- /.subscribe -->


		<footer>
		<div class="container">
			<div class="row">
				<div class="col-xs-4">
					<div class="text-left">
						&copy; Copyright MyanmarTravelGuide
					</div>
				</div>
				
				<div class="col-xs-4">
					<div class="top">
						<a href="#header">
							<i class="ion-arrow-up-b"></i>
						</a>
					</div>
				</div>
			</div>
		</div>		
	</footer>

	
		
	
	<!-- <script src="assets/js/jquery-1.7.2.min.js" type="text/javascript"></script>  -->
    
    <script type="text/javascript" language="javascript">
	
	<!-- Affordalbe Hotel -->
    $(document).ready(function(){
        $("${pageContext.request.contextPath}/dvContent1").append("<ul></ul>");
        $.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/hotelList",
            dataType: "xml",
            success: function(xml){
                $(xml).find('Hotel').each(function(){
                var sName = $(this).find('Name').text();
                var sAddress = $(this).find('Address').text();
				var sPhone = $(this).find('Phone').text();
				var sWebSite = $(this).find('Website').text();
                $("<li></li>").html(sName + "<br> " + sAddress +"<br> " + sPhone + "<br> " + sWebSite+ "<hr> ").appendTo("${pageContext.request.contextPath}/dvContent1 ul");
				
            });
            },
            error: function() {
            alert("An error occurred while processing XML file.");
            }
        });
    });    
	<!-- LuxuryHotel -->
	$(document).ready(function(){
        $("#dvContent2").append("<ul></ul>");
        $.ajax({
            type: "GET",
            url: "LuxuryHotel.xml",
            dataType: "xml",
            success: function(xml){
                $(xml).find('Hotel').each(function(){
                var sName = $(this).find('Name').text();
                var sAddress = $(this).find('Address').text();
				var sPhone = $(this).find('Phone').text();
				var sWebSite = $(this).find('Website').text();
                $("<li></li>").html(sName + "<br>" + sAddress +"<br>" + sPhone + "<br>" + sWebSite+ "<hr> ").appendTo("#dvContent2 ul");
				
            });
            },
            error: function() {
            alert("An error occurred while processing XML file.");
            }
        });
    });    
	<!-- bus -->
	$(document).ready(function(){
        $("#dvContent3").append("<ul></ul>");
        $.ajax({
            type: "GET",
            url: "Bus.xml",
            dataType: "xml",
            success: function(xml){
                $(xml).find('Hotel').each(function(){
                var sName = $(this).find('Name').text();
                var sAddress = $(this).find('Address').text();
				var sPhone = $(this).find('Phone').text();
				var sWebSite = $(this).find('Website').text();
                $("<li></li>").html(sName + "<br> " + sAddress +"<br> " + sPhone + "<br> " + sWebSite+ "<hr> ").appendTo("#dvContent3 ul");
				
            });
            },
            error: function() {
            alert("An error occurred while processing XML file.");
            }
        });
    });    
</script>
	

</body>
</html>
