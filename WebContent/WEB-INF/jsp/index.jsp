<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
          
    <%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 7 ]><html class="ie ie7 lte9 lte8 lte7" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 lte9 lte8" lang="en-US">	<![endif]-->
<!--[if IE 9]><html class="ie ie9 lte9" lang="en-US"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="noIE" lang="en-US">
<!--<![endif]-->
	<head>
	
		<!-- meta -->
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
			<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no"/>
			<link rel="icon" type="image/png" sizes="16x16"  src="<c:url value="/img/favicon.png" />" >
	<title>Travel Myanmar</title>

	<!-- popup login -->
	<link rel="stylesheet" href="<c:url value="/css/style.css" />">
	
	<link rel="stylesheet" href="<c:url value="/css/font-awesome.css" />">
	<link rel="stylesheet" href="<c:url value="/css/font-awesome.min.css" />">
	<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />">
	<link rel="stylesheet" href="<c:url value="/css/ionicons.css" />">
	<link rel="stylesheet" href="<c:url value="/css/ionicons.min.css" />">
	<link rel="stylesheet" href="<c:url value="/css/owl.carousel.css" />">
	<link rel="stylesheet" href="<c:url value="/css/owl.theme.css" />">
	<link rel="stylesheet" href="<c:url value="/css/flexslider.css" />">
    <link rel="stylesheet" href="<c:url value="/css/main.css" />">
		
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

	<nav class="navbar navbar-default navbar-fixed-top">
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
					<li class="active"><a href="${pageContext.request.contextPath}/index">Home</a></li>
					<li><a href="#bestOffer">Best Offer</a></li>
					<li><a href="#place">Top Places</a></li>
					<li><a class="tour" href="${pageContext.request.contextPath}/contact">Contact US</a></li>
					<li><a href="javascript:;" data-toggle="modal" data-target="#loginModal">Login</a></li>
					
				</ul> <!-- /.nav -->
		    </div><!-- /.navbar-collapse -->
	  	</div><!-- /.container -->
	</nav>
	
<!-- -Login Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
	<div class="modal-dialog">
    	<div class="modal-content login-modal">
      		<div class="modal-header login-modal-header">
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        		<h4 class="modal-title text-center" id="loginModalLabel">USER AUTHENTICATION</h4>
      		</div>
      		<div class="modal-body">
      			<div class="text-center">
	      			<div role="tabpanel" class="login-tab">
					  	<!-- Nav tabs -->
					  	<ul class="nav nav-tabs" role="tablist">
					    	<li class="active"><a id="signin-taba" href="#home" aria-controls="home" role="tab" data-toggle="tab">Sign In</a></li>
					    	<li><a id="signup-taba" href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Sign Up</a></li>
					    	<li><a id="forgetpass-taba" href="#forget_password" aria-controls="forget_password" role="tab" data-toggle="tab">Forget Password</a></li>
					  	</ul>
					
					  	<!-- Tab panes -->
					 	<div class="tab-content">
					    	<div role="tabpanel" class="tab-pane active text-center" id="home">
					    		&nbsp;&nbsp;
					    		<span id="login_fail" class="response_error" style="display: none;">Loggin failed, please try again.</span>
					    		<div class="clearfix"></div>
					    		<form>
									<div class="form-group">
								    	<div class="input-group">
								      		<div class="input-group-addon"><i class="fa fa-user"></i></div>
								      		<input type="text" class="form-control" id="login_username" placeholder="Email">
								    	</div>
								    	<span class="help-block has-error" id="email-error"></span>
								  	</div>
								  	<div class="form-group">
								    	<div class="input-group">
								      		<div class="input-group-addon"><i class="fa fa-lock"></i></div>
								      		<input type="password" class="form-control" id="password" placeholder="Password">
								    	</div>
								    	<span class="help-block has-error" id="password-error"></span>
								  	</div>
						  			<button type="button" id="login_btn" class="btn btn-block bt-login" data-loading-text="Signing In....">Login</button>
						  			<div class="clearfix"></div>
						  			<div class="login-modal-footer">
						  				<div class="row">
											<div class="col-xs-8 col-sm-8 col-md-8">
												<i class="fa fa-lock"></i>
												<a href="javascript:;" class="forgetpass-tab"> Forgot password? </a>
											
											</div>
											
											<div class="col-xs-4 col-sm-4 col-md-4">
												<i class="fa fa-check"></i>
												<a href="javascript:;" class="signup-tab"> Sign Up </a>
											</div>
										</div>
						  			</div>
								</form>
					    	</div>
							
							<!-- Registeration -->
					    	<div role="tabpanel" class="tab-pane" id="profile">
					    	    &nbsp;&nbsp;
					    	    <span id="registration_fail" class="response_error" style="display: none;">Registration failed, please try again.</span>
					    		<div class="clearfix"></div>
					    		<form>
									
									<div class="form-group">
								    	<div class="input-group">
								      		<div class="input-group-addon"><i class="fa fa-user"></i></div>
								      		<input type="text" class="form-control" id="username" placeholder="First Name">
								    	</div>
								    	<span class="help-block has-error" data-error='0' id="username-error"></span>
								  	</div>
									
									<div class="form-group">
								    	<div class="input-group">
								      		<div class="input-group-addon"><i class="fa fa-user"></i></div>
								      		<input type="text" class="form-control" id="username" placeholder="Last Name">
								    	</div>
								    	<span class="help-block has-error" data-error='0' id="username-error"></span>
								  	</div>
									
								  	<div class="form-group">
								    	<div class="input-group">
								      		<div class="input-group-addon"><i class="fa fa-at"></i></div>
								      		<input type="text" class="form-control" id="remail" placeholder="Email">
								    	</div>
								    	<span class="help-block has-error" data-error='0' id="remail-error"></span>
								  	</div>
																	
									<div class="form-group">
								    	<div class="input-group">
								      		<div class="input-group-addon"><i class="fa fa-intersex"></i></div>
								      		<input type="text" class="form-control" id="gender" placeholder="Gender">
								    	</div>
								    	<span class="help-block has-error" id="gender-error"></span>
								  	</div>
									
									<div class="form-group">
								    	<div class="input-group">
								      		<div class="input-group-addon"><i class="fa fa-flag"></i></div>
								      		<input type="text" class="form-control" id="country" placeholder="Country">
								    	</div>
								    	<span class="help-block has-error" id="country-error"></span>
								  	</div>
									
									<div class="form-group">
								    	<div class="input-group">
								      		<div class="input-group-addon"><i class="fa fa-phone"></i></div>
								      		<input type="text" class="form-control" id="phone" placeholder="Phone">
								    	</div>
								    	<span class="help-block has-error" id="phone-error"></span>
								  	</div>
									
						  			<button type="button" id="register_btn" class="btn btn-block bt-login" data-loading-text="Registering....">Register</button>
									<div class="clearfix"></div>
									<div class="login-modal-footer">
						  				<div class="row">
											<div class="col-xs-8 col-sm-8 col-md-8">
												<span><i class="fa fa-lock"></i></span>
												<a href="javascript:;" class="forgetpass-tab"> Forgot password? </a>
											
											</div>
											
											<div class="col-xs-4 col-sm-4 col-md-4">
												<i class="fa fa-check"></i>
												<a href="javascript:;" class="signin-tab"> Sign In </a>
											</div>
										</div>
						  			</div>
								</form>
					    	</div>
							
							<!-- ForgetPassword -->
					    	<div role="tabpanel" class="tab-pane text-center" id="forget_password">
					    		&nbsp;&nbsp;
					    	    <span id="reset_fail" class="response_error" style="display: none;"></span>
						    		<div class="clearfix"></div>
						    		<form>
										<div class="form-group">
									    	<div class="input-group">
									      		<div class="input-group-addon"><i class="fa fa-user"></i></div>
									      		<input type="text" class="form-control" id="femail" placeholder="Email">
									    	</div>
									    	<span class="help-block has-error" data-error='0' id="femail-error"></span>
									  	</div>
									  	
							  			<button type="button" id="reset_btn" class="btn btn-block bt-login" data-loading-text="Please wait....">Forget Password</button>
										<div class="clearfix"></div>
										<div class="login-modal-footer">
							  				<div class="row">
												<div class="col-xs-6 col-sm-6 col-md-6">
													<i class="fa fa-lock"></i>
													<a href="javascript:;" class="signin-tab"> Sign In </a>
												
												</div>
												
												<div class="col-xs-6 col-sm-6 col-md-6">
													<i class="fa fa-check"></i>
													<a href="javascript:;" class="signup-tab"> Sign Up </a>
												</div>
											</div>
							  			</div>
									</form>
						    	</div>
						  	</div>
							
						</div>
	      				
	      			</div>
	      		</div>
	      		
	    	</div>
	   </div>
 	</div>
 	<!-- - Login Model Ends Here -->
	
<!-- Find a Tour -->
	<section class="tour section-wrapper container" id="findTour">
		<h2 class="section-title">
			Find a Tour 
				</h2>
		<p class="section-subtitle">
			Where would you like to go?
		</p>
		
		<div class="row">
			<div class="col-md-2 col-sm-6">
				<form role="form" class="form-dropdown">
					<div class="form-group">
						<label for="sel1">Select list (select one):</label>
						<select class="form-control border-radius" id="sel1">
							<option>Adventure</option>
							<option>Cultural Tour</option>
							<option>SightSeeing</option>
							<option>Historical and Heritage Tour</option>
							<option>Religious sites</option>
							<option>Rural Tour</option>
						</select>
					</div>
				</form>
		
				
			</div>
			
			<div class="col-md-2 col-sm-6">
				<form role="form" class="form-dropdown">
					<div class="form-group">
						<label for="sel1">Select list (select one):</label>
						<select class="form-control border-radius" id="sel1" >
							<option>Ocean & Beach</option>
							<option>Hills & Hiking</option>
							<option>Pagoda & Temples</option>
							<option>Villages</option>
							<option>Biking & Walking</option>
							<option>Lake</option>
							<option>River Cruise</option>
						</select>
					</div>
				</form>
			</div>
						
			<div class="col-md-2 col-sm-6">
				<div class="input-group">
					<input type="text" class="form-control border-radius border-right" placeholder="Budget"/>
					<span class="input-group-addon border-radius custom-addon">
						<i class="ion-social-bitcoin"></i>
					</span>
				</div>
			</div>			

			<div class="col-md-2 col-sm-6">
				<a href="placeList.html"><div class="btn btn-default border-radius custom-button">
					Search
				</div></a>
			</div>
		</div>
		
	</section> <!-- /.tour -->

<!-- Home -->
		<div id="header">
		    <div class="flexslider">
		        <ul class="slides">
				
		            <li class="slider-item" style="background-image: url('images/item-1.png')">
		                <div class="container">
							<div class="offering">
				
				<div class="percent">
					<span>30%</span> off
				</div>
				<div class="FTour">
					for <strong>Hiking Tour</strong>
				</div>
						<a class="btn btn-default price-btn" href="tourPackage.html">
				see our price
						</a>
							</div> <!-- /.offering -->
						</div> <!-- /.container -->
		            </li> <!-- /.slider-item -->

					<li class="slider-item" style="background-image: url('assets/images/item-2.png')">
		                <div class="container">
							<div class="offering">
				
				<div class="percent">
					<span>50%</span> off
				</div>
				<div class="FTour">
					for <strong>Hiking Tour</strong>
				</div>
						<a class="btn btn-default price-btn" href="tourPackage.html">
				see our price
						</a>
							</div> <!-- /.offering -->
						</div> <!-- /.container -->
		            </li> <!-- /.slider-item -->
					
					<li class="slider-item" style="background-image: url('assets/images/item-3.png')">
		                <div class="container">
							<div class="offering">
				
				<div class="percent">
					<span>30%</span> off
				</div>
				<div class="FTour">
					for <strong>Cultural Tour</strong>
				</div>
						<a class="btn btn-default price-btn" href="#">
				see our price
						</a>
							</div> <!-- /.offering -->
						</div> <!-- /.container -->
		            </li> <!-- /.slider-item -->
					
					<li class="slider-item" style="background-image: url('assets/images/item-6.png')">
		                <div class="container">
							<div class="offering">
				
				<div class="percent">
					<span>30%</span> off
				</div>
				<div class="FTour">
					for <strong>Mountain Tour</strong>
				</div>
						<a class="btn btn-default price-btn" href="#">
				see our price
						</a>
							</div> <!-- /.offering -->
						</div> <!-- /.container -->
		            </li> <!-- /.slider-item -->
					
					<li class="slider-item" style="background-image: url('assets/images/item-5.png')">
		                <div class="container">
							<div class="offering">
				
				<div class="percent">
					<span>30%</span> off
				</div>
				<div class="FTour">
					for <strong>SightSeeing Tour</strong>
				</div>
						<a class="btn btn-default price-btn" href="#">
				see our price
						</a>
							</div> <!-- /.offering -->
						</div> <!-- /.container -->
		            </li> <!-- /.slider-item -->
					
					
		        </ul> <!-- /.slides -->
		    </div> <!-- /.flexslider -->
		</div> <!-- /#header -->
	
<!-- Our Blazzing offers -->
	<section class="offer section-wrapper" id="bestOffer">
		<div class="container">
			<h2 class="section-title">
				Best Offer
			</h2>
			<p class="section-subtitle">
				This is the best offer in the country.
			</p>
			<div class="row">
				<a  href="${pageContext.request.contextPath}/bestOffer">
					<div class="col-sm-4 col-xs-6">
					<div class="offer-item">
		
						<div class="icon">
							<i class="ion-ios-home"></i>
						</div>
						<h3>
							Affordable Pricing
						</h3>
						<p>
							Travel Myanmar is providing  Affordable Hotels service which is trustworthy for  your safety and convenience.
						</p>
						
					</div>
				</div> <!-- /.col-md-3 -->

				<div class="col-sm-4 col-xs-6">
					<div class="offer-item">
						<div class="icon">
							<i class="ion-ios-home"></i>
						</div>
						<h3>
							Lux Hotels
						</h3>
						<p>
							Travel Myanmar is providing High Class Hotels service which is trustworthy for  your safety and convenience.
						</p>
					</div>
				</div> <!-- /.col-md-3 -->

				<div class="col-sm-4 col-xs-6">
					<div class="offer-item">
						<div class="icon">
							<i class="ion-ios-home"></i>
						</div>
						<h3>
							Luxury Transport 
						</h3>
						<p>
							Travel Myanmar is providing Luxury Transport service which is trustworthy for  your safety and convenience.  
						</p>
					</div>
				</div> <!-- /.col-md-3 -->
				</a>
			</div> <!-- /.row -->
		</div> <!-- /.container -->
	</section> <!-- /.offer -->

<!-- Top place to visit -->
	<section class="visit section-wrapper" id="place">
		<div class="container" >
			<h2 class="section-title">
				Top Places to visit
			</h2>
			

			<div class="owl-carousel visit-carousel" id="">
				<div class="item">
	
					<button class="btn btn-default price-btn">SAVE</button>
					<img src="assets/images/visit-1.png" alt="visit-image" class="img-responsive visit-item">
	
				</div>
				<div class="item">
					<button class="btn btn-default price-btn">SAVE</button>
					<img src="assets/images/visit-2.png" alt="visit-image" class="img-responsive visit-item">
				</div>
				<div class="item">
					<button class="btn btn-default price-btn">SAVE</button>
					<img src="assets/images/visit-3.png" alt="visit-image" class="img-responsive visit-item">
				</div>
				<div class="item">
					<button class="btn btn-default price-btn">SAVE</button>
					<img src="assets/images/visit-4.png" alt="visit-image" class="img-responsive visit-item">
				</div>
				<div class="item">
					<button class="btn btn-default price-btn">SAVE</button>
					<img src="assets/images/visit-5.png" alt="visit-image" class="img-responsive visit-item">
				</div>
				<div class="item">
					<button class="btn btn-default price-btn">SAVE</button>
					<img src="assets/images/visit-6.png" alt="visit-image" class="img-responsive visit-item">
				</div>
			</div>
		</div> <!-- /.container -->
	</section> <!-- /.visit -->

<!-- TravelMyanmar -->
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

	<script type="text/javascript" src="<c:url value="/js/demo.js" />"> </script>
	<script type="text/javascript" src="<c:url value="/js/jquery.min.js" />"> </script>
	<script type="text/javascript" src="<c:url value="/js/jquery-1.11.2.min.js" />"> </script>
    <script type="text/javascript" src="<c:url value="/js/bootstrap.min.js" />"> </script>
    <script type="text/javascript" src="<c:url value="/js/owl.carousel.min.js" />"> </script>
    <script type="text/javascript" src="<c:url value="/js/contact.js" />"> </script>
    <script type="text/javascript" src="<c:url value="/js/jquery.flexslider.js" />"> </script>
	<script type="text/javascript" src="<c:url value="/js/script.js" />"> </script>
		

	<script>
$(document).ready(function(){
	$(document).on('click','.signup-tab',function(e){
		e.preventDefault();
	    $('#signup-taba').tab('show');
	});	
	
	$(document).on('click','.signin-tab',function(e){
	   	e.preventDefault();
	    $('#signin-taba').tab('show');
	});
	    	
	$(document).on('click','.forgetpass-tab',function(e){
	 	e.preventDefault();
	   	$('#forgetpass-taba').tab('show');
	});
});	
</script>

	


</body>
</html>