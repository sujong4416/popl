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

        

        

        <!--Animated CSS-->
        <link rel="stylesheet" type="text/css" href="/css/animate.min.css">

        <!-- Bootstrap -->
        <link href="/css/bootstrap.min.css" rel="stylesheet">
        <!--Bootstrap Carousel-->
        <link type="text/css" rel="stylesheet" href="/css/carousel.css" />

        <link rel="stylesheet" href="/css/isotope/style.css">

        <!--Main Stylesheet-->
        <link href="/css/style.css" rel="stylesheet">
        <!--Responsive Framework-->
        <link href="/css/responsive.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body data-spy="scroll" data-target="#header">

        <!--Start Hedaer Section-->
        <section id="header">
            <div class="header-area">
                <div class="top_header">
                    <div class="container">
                       
                        <!--End of row-->
                    </div>
                    <!--End of container-->
                </div>
                <!--End of top header-->
                <div class="header_menu text-center" data-spy="affix" data-offset-top="50" id="nav">
                    <div class="container">
                        <nav class="navbar navbar-default zero_mp ">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand custom_navbar-brand" href="#"><img src="/img/logo.png" alt=""></a>
                            </div>
                            <!--End of navbar-header-->

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse zero_mp" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav navbar-right main_menu">
                                    <li class="active"><a href="#header">Home <span class="sr-only">(current)</span></a></li>
                                    <li><a href="#welcome">게시판</a></li>
                                    <li><a href="#portfolio">project</a></li>
                                    <li><a href="#counter">achivment</a></li>
                                    <li><a href="#event">event</a></li>
                                    <li><a href="#testimonial">testimonial</a></li>
                                    <li><a href="#blog">blog</a></li>
                                    <li><a href="#contact">contact us</a></li>
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





        <!--Start of portfolio-->
       
        <!--end of portfolio-->






        <!--start of event-->
        
        <!--end of event-->



        <!--Start of testimonial-->
       
        <!--end of testimonial-->



      



        <!--Scroll to top-->
        <a href="#" id="back-to-top" title="Back to top">&uarr;</a>
        <!--End of Scroll to top-->


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>-->
        <script src="/js/jquery-1.12.3.min.js"></script>

        <!--Counter UP Waypoint-->
        <script src="/js/waypoints.min.js"></script>
        <!--Counter UP-->
        <script src="/js/jquery.counterup.min.js"></script>

        <script>
            //for counter up
            $('.counter').counterUp({
                delay: 10,
                time: 1000
            });
        </script>

        <!--Gmaps-->
        <script src="/js/gmaps.min.js"></script>
       
        <!--Google Maps API-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjxvF9oTfcziZWw--3phPVx1ztAsyhXL4"></script>


        <!--Isotope-->
        <script src="/js/isotope/min/scripts-min.js"></script>
        <script src="/js/isotope/cells-by-row.js"></script>
        <script src="/js/isotope/isotope.pkgd.min.js"></script>
        <script src="/js/isotope/packery-mode.pkgd.min.js"></script>
        <script src="/js/isotope/scripts.js"></script>


        <!--Back To Top-->
        <script src="/js/backtotop.js"></script>


        <!--JQuery Click to Scroll down with Menu-->
        <script src="/js/jquery.localScroll.min.js"></script>
        <script src="/js/jquery.scrollTo.min.js"></script>
        <!--WOW With Animation-->
        <script src="/js/wow.min.js"></script>
        <!--WOW Activated-->
        <script>
            new WOW().init();
        </script>


        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="/js/bootstrap.min.js"></script>
        <!-- Custom JavaScript-->
        <script src="/js/main.js"></script>
        <div>
			<sitemesh:write property='body'/>
			  <section id="footer">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-6">
                        <div class="copyright">
                            <p>@ 2016 - Design By <span><a href="">&#9798;</a></span></p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="designer">
                            <p>A Design By <a href="#">XpeedStudio</a></p>
                        </div>
                    </div>
                </div>
                <!--End of row-->
            </div>
            <!--End of container-->
        </section>
        <!--End of footer-->
		</div>
    </body>

</html>