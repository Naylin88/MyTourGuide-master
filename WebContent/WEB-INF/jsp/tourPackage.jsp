<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="noIE" lang="en-US">
<!--<![endif]-->
	<head>
		<!-- meta -->
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
			<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no"/>
	<title>About US, Travel Myanmar</title>

       
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
	<link rel="stylesheet" href="<c:url value="/css/ionicons.min.css" />">
	<link rel="stylesheet" href="<c:url value="/css/owl.carousel.css" />">
	<link rel="stylesheet" href="<c:url value="/css/owl.theme.css" />">	
    <link rel="stylesheet" href="<c:url value="/css/main.css" />">
    <link rel="stylesheet" href="<c:url value="/css/section.css" />">
    <link rel="stylesheet" href="<c:url value="/css/about.css" />">
    
    
    
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
					<a class="navbar-brand" href="${pageContext.request.contextPath}/index" title="HOME"><i class="ion-android-walk"></i> Travel <span>Myanmar</span></a>
				</div> <!-- /.navbar-header -->

		    <!-- Collect the nav links, forms, and other content for toggling -->
			    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="${pageContext.request.contextPath}/index">Home</a></li>
						<li class="active"><a href="${pageContext.request.contextPath}/tourPackage">Tour Packages</a></li>
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
				Tour Packages
			</h2>
			<p class="section-subtitle">
				Tour Packages offered by Tour Agencies
			</p>
			
			<!-- row -->
			
			<div class="row">
				<div class="col-sm-6 col-xs-6">
					
				</div> <!-- /.col-sm-3 -->
							
			</div> <!-- /.row -->
		</div> <!-- /.container -->
	</section> <!-- /.wwa -->


	

	<div class="subscribe section-wrapper">
		<a class="brand-logo" href="${pageContext.request.contextPath}/index" title="HOME"><i class="ion-android-walk"></i> Travel <span>Myanmar</span></a>
		
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

	<script type="text/javascript" src="<c:url value="/js/jquery-1.11.2.min.js" />"> </script>
    <script type="text/javascript" src="<c:url value="/js/bootstrap.min.js" />"> </script>
    <script type="text/javascript" src="<c:url value="/js/owl.carousel.min.js" />"> </script>
    <script type="text/javascript" src="<c:url value="/js/contact.js" />"> </script>
	<script type="text/javascript" src="<c:url value="/js/script.js" />"> </script>

	

</body>
</html>