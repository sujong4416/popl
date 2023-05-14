<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>GreenFair</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap"
	rel="stylesheet">

<!--Animated CSS-->
<link rel="stylesheet" type="text/css" href="css/animate.min.css">

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!--Bootstrap Carousel-->
<link type="text/css" rel="stylesheet" href="css/carousel.css" />

<link rel="stylesheet" href="css/isotope/style.css">

<!--Main Stylesheet-->
<link href="css/style.css" rel="stylesheet">
<!--Responsive Framework-->
<link href="css/responsive.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap')
	;
</style>
<style type="text/css">
* {
	font-family: 'Sunflower', sans-serif;
}
</style>
</head>

<body data-spy="scroll" data-target="#header">

	<!--Start Hedaer Section-->
	<section id="header">
		<div class="header-area">
			<div class="top_header">
				<div class="container">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 zero_mp">
							<div class="address">
								<i class="fa fa-home floatleft"></i>
								<p>Elephant Road, Dhaka 1205, Bangladesh</p>
							</div>
						</div>
						<!--End of col-md-4-->
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 zero_mp">
							<div class="phone">
								<i class="fa fa-phone floatleft"></i>
								<p>+ 8801532-987039</p>
							</div>
						</div>
						<!--End of col-md-4-->
						<div class="col-md-4">
							<div class="social_icon text-right">
								<a href=""><i class="fa fa-facebook"></i></a> <a href=""><i
									class="fa fa-twitter"></i></a> <a href=""><i
									class="fa fa-google-plus"></i></a> <a href=""><i
									class="fa fa-youtube"></i></a>
							</div>
						</div>
						<!--End of col-md-4-->
					</div>
					<!--End of row-->
				</div>
				<!--End of container-->
			</div>
			<!--End of top header-->
			<div class="header_menu text-center" data-spy="affix"
				data-offset-top="50" id="nav">
				<div class="container">
					<nav class="navbar navbar-default zero_mp ">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand custom_navbar-brand" href="#"><img
								src="img/logo.png" alt=""></a>
						</div>
						<!--End of navbar-header-->

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse zero_mp"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right main_menu">
								<li><a href="/">메인</a></li>
								<li><a href="/board/list.do">게시판</a></li>
								<li><a href="#portfolio">이미지 게시판</a></li>
								
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</nav>
					<!--End of nav-->
				</div>
				<!--End of container-->
			</div>
			<!--End of header menu-->
		</div>
		<!--end of header area-->
	</section>
	<!--End of Hedaer Section-->



	<!--Start of slider section-->
	<section id="slider">
		<div id="carousel-example-generic"
			class="carousel slide carousel-fade" data-ride="carousel"
			data-interval="3000">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<div class="slider_overlay">
						<img src="img/img1.jpg" alt="...">
						<div class="carousel-caption">
							<div class="slider_text">
								<h3>안녕하십니까</h3>
								<h2>이수종</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
								<a href="" class="custom_btn">Read More</a>
							</div>
						</div>
					</div>
				</div>
				<!--End of item With Active-->
				<div class="item">
					<div class="slider_overlay">
						<img src="img/img2.jpg" alt="...">
						<div class="carousel-caption">
							<div class="slider_text">
								<h3>Protect</h3>
								<h2>nature the environment</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
								<a href="" class="custom_btn">Read More</a>
							</div>
						</div>
					</div>
				</div>
				<!--End of Item-->
				<div class="item">
					<div class="slider_overlay">
						<img src="img/img3.jpg" alt="...">
						<div class="carousel-caption">
							<div class="slider_text">
								<h3>Protect</h3>
								<h2>nature the environment</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
								<a href="" class="custom_btn">Read More</a>
							</div>
						</div>
					</div>
				</div>
				<!--End of item-->
			</div>
			<!--End of Carousel Inner-->
		</div>
	</section>
	<!--end of slider section-->



	<!--Start of welcome section-->
	<section id="welcome">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="wel_header">
						<h2>welcome to green fair</h2>
						<p>Our Green Fire Organization is one of the non profit
							organization near you. Get our services like</p>
					</div>
				</div>
			</div>
			<!--End of row-->
			<div class="row">
				<div class="col-md-3">
					<div class="item">
						<div class="single_item">
							<div class="item_list">
								<div class="welcome_icon">
									<i class="fa fa-leaf"></i>
								</div>
								<h4>eco system</h4>
								<p>Lorem ipsum dolor sit amet, eu qui modo expetendis
									reformidans ex sit set appetere sententiae seo eum in simul
									homero.</p>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-3-->
				<div class="col-md-3">
					<div class="item">
						<div class="single_item">
							<div class="item_list">
								<div class="welcome_icon">
									<i class="fa fa-refresh"></i>
								</div>
								<h4>recycling</h4>
								<p>Lorem ipsum dolor sit amet, eu qui modo expetendis
									reformidans ex sit set appetere sententiae seo eum in simul
									homero.</p>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-3-->
				<div class="col-md-3">
					<div class="item">
						<div class="single_item">
							<div class="item_list">
								<div class="welcome_icon">
									<i class="fa fa-tint"></i>
								</div>
								<h4>water refine</h4>
								<p>Lorem ipsum dolor sit amet, eu qui modo expetendis
									reformidans ex sit set appetere sententiae seo eum in simul
									homero.</p>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-3-->
				<div class="col-md-3">
					<div class="item">
						<div class="single_item">
							<div class="item_list">
								<div class="welcome_icon">
									<i class="fa fa-cog"></i>
								</div>
								<h4>solar system</h4>
								<p>Lorem ipsum dolor sit amet, eu qui modo expetendis
									reformidans ex sit set appetere sententiae seo eum in simul
									homero.</p>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-3-->
			</div>
			<!--End of row-->
		</div>
		<!--End of container-->
	</section>
	<!--end of welcome section-->



	<!--Start of volunteer-->



	<!--Start of portfolio-->

	<!--end of portfolio-->



	<!--Start of counter-->
	<section id="counter">
		<div class="counter_img_overlay">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="counter_header">
							<h2>OUR achivement</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
						</div>
					</div>
					<!--End of col-md-12-->
				</div>
				<!--End of row-->
				<div class="row">
					<div class="col-md-3">
						<div class="counter_item text-center">
							<div class="sigle_counter_item">
								<img src="img/tree.png" alt="">
								<div class="counter_text">
									<span class="counter">1542</span>
									<p>tree cut</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="counter_item text-center">
							<div class="sigle_counter_item">
								<img src="img/hand.png" alt="">
								<div class="counter_text">
									<span class="counter">1458</span>
									<p>animal lost</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="counter_item text-center">
							<div class="sigle_counter_item">
								<img src="img/tuhnder.png" alt="">
								<div class="counter_text">
									<span class="counter">9854</span>
									<p>blubs collected</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="counter_item text-center">
							<div class="sigle_counter_item">
								<img src="img/cloud.png" alt="">
								<div class="counter_text">
									<span class="counter">5412</span>
									<p>water level</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--End of row-->
			</div>
			<!--End of container-->
		</div>
	</section>
	<!--end of counter-->



	<!--start of event-->

	<!--end of event-->



	<!--Start of testimonial-->

	<!--end of testimonial-->



	<!--Start of blog-->
	<section id="blog">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="latest_blog text-center">
						<h2>latest blog</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Illo cum libero vitae quos eaque commodi.</p>
					</div>
				</div>
			</div>
			<!--End of row-->
			<div class="row">
				<div class="col-md-4">
					<div class="blog_news">
						<div class="single_blog_item">
							<div class="blog_img">
								<img src="img/climate_effect.jpg" alt="">
							</div>
							<div class="blog_content">
								<a href=""><h3>Climate change is affecting bird
										migration</h3></a>
								<div class="expert">
									<div class="left-side text-left">
										<p class="left_side">
											<span class="clock"><i class="fa fa-clock-o"></i></span> <span
												class="time">Aug 19, 2016</span> <a href=""><span
												class="admin"><i class="fa fa-user"></i> Admin</span></a>
										</p>
										<p class="right_side text-right">
											<a href=""><span class="right_msg text-right"><i
													class="fa fa-comments-o"></i></span> <span class="count">0</span></a>
										</p>
									</div>
								</div>

								<p class="blog_news_content">Lorem ipsum dolor sit amet,
									consectetur adipscing elit. Lorem ipsum dolor sit amet, conse
									ctetur adipiscing elit. consectetur Lorem ipsum dolor sitamet,
									conse ctetur adipiscing elit.</p>
								<a href="" class="blog_link">read more</a>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-4-->
				<div class="col-md-4">
					<div class="blog_news">
						<div class="single_blog_item">
							<div class="blog_img">
								<img src="img/air_pollutuon.jpg" alt="">
							</div>
							<div class="blog_content">
								<a href=""><h3>How to avoid indoor air pollution?</h3></a>
								<div class="expert">
									<div class="left-side text-left">
										<p class="left_side">
											<span class="clock"><i class="fa fa-clock-o"></i></span> <span
												class="time">Aug 19, 2016</span> <a href=""><span
												class="admin"><i class="fa fa-user"></i> Admin</span></a>
										</p>
										<p class="right_side text-right">
											<a href=""><span class="right_msg text-right"><i
													class="fa fa-comments-o"></i></span> <span class="count">0</span></a>
										</p>
									</div>
								</div>

								<p class="blog_news_content">Lorem ipsum dolor sit amet,
									consectetur adipscing elit. Lorem ipsum dolor sit amet, conse
									ctetur adipiscing elit. consectetur Lorem ipsum dolor sitamet,
									conse ctetur adipiscing elit.</p>
								<a href="" class="blog_link">read more</a>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-4-->
				<div class="col-md-4">
					<div class="blog_news">
						<div class="single_blog_item">
							<div class="blog_img">
								<img src="img/threat_bear.jpg" alt="">
							</div>
							<div class="blog_content">
								<a href=""><h3>Threat to Yellowstone’s grizzly bears.</h3></a>
								<div class="expert">
									<div class="left-side text-left">
										<p class="left_side">
											<span class="clock"><i class="fa fa-clock-o"></i></span> <span
												class="time">Aug 19, 2016</span> <a href=""><span
												class="admin"><i class="fa fa-user"></i> Admin</span></a>
										</p>
										<p class="right_side text-right">
											<a href=""><span class="right_msg text-right"><i
													class="fa fa-comments-o"></i></span> <span class="count">0</span></a>
										</p>
									</div>
								</div>

								<p class="blog_news_content">Lorem ipsum dolor sit amet,
									consectetur adipscing elit. Lorem ipsum dolor sit amet, conse
									ctetur adipiscing elit. consectetur Lorem ipsum dolor sitamet,
									conse ctetur adipiscing elit.</p>
								<a href="" class="blog_link">read more</a>
							</div>
						</div>
					</div>
				</div>
				<!--End of col-md-4-->
			</div>
			<!--End of row-->
		</div>
		<!--End of container-->
	</section>
	<!-- end of blog-->



	<!--Start of Purches-->

	<!--End of purches-->



	<!--Start of Market-->

	<!--End of market-->



	<!--Start of contact-->



	<!--Start of footer-->
	<section id="footer">
		<div class="container">
			<div class="row text-center">
				<div class="col-md-6">
					<div class="copyright">
						<p>
							@ 2016 - Design By <span><a href="">&#9798;</a></span>
						</p>
					</div>
				</div>
				<div class="col-md-6">
					<div class="designer">
						<p>
							A Design By <a href="#">XpeedStudio</a>
						</p>
					</div>
				</div>
			</div>
			<!--End of row-->
		</div>
		<!--End of container-->
	</section>
	<!--End of footer-->



	<!--Scroll to top-->
	<a href="#" id="back-to-top" title="Back to top">&uarr;</a>
	<!--End of Scroll to top-->


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>-->
	<script src="js/jquery-1.12.3.min.js"></script>

	<!--Counter UP Waypoint-->
	<script src="js/waypoints.min.js"></script>
	<!--Counter UP-->
	<script src="js/jquery.counterup.min.js"></script>

	<script>
		//for counter up
		$('.counter').counterUp({
			delay : 10,
			time : 1000
		});
	</script>

	<!--Gmaps-->
	<script src="js/gmaps.min.js"></script>

	<!--Google Maps API-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjxvF9oTfcziZWw--3phPVx1ztAsyhXL4"></script>


	<!--Isotope-->
	<script src="js/isotope/min/scripts-min.js"></script>
	<script src="js/isotope/cells-by-row.js"></script>
	<script src="js/isotope/isotope.pkgd.min.js"></script>
	<script src="js/isotope/packery-mode.pkgd.min.js"></script>
	<script src="js/isotope/scripts.js"></script>


	<!--Back To Top-->
	<script src="js/backtotop.js"></script>


	<!--JQuery Click to Scroll down with Menu-->
	<script src="js/jquery.localScroll.min.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<!--WOW With Animation-->
	<script src="js/wow.min.js"></script>
	<!--WOW Activated-->
	<script>
		new WOW().init();
	</script>


	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Custom JavaScript-->
	<script src="js/main.js"></script>
</body>

</html>