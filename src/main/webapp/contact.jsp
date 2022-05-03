<%--
  Contact Page
  Author: yzz0090 from Team YYZ (Yifan Yizhou Ziwen)
  Version: # 0017
  Date: May.3 2022
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact Us | YiFanZhou Apartment Demo | by Team YYZ</title>
    <!-- custom-theme -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Yifanzhou Apartment; 一帆舟;Author Yifan; Team YYZ; Supervisor Dr. Marghitu & Prof. Fatemeh Jamshidi" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //custom-theme -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <link href="//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
</head>
<body>
<!-- banner -->
<div class="header">
    <div class="w3layouts_header_right">
        <ul>
            <li><i class="fa fa-phone" aria-hidden="true"></i>(334) 000 0000</li>
            <li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:china@auburn.edu">china@auburn.edu</a></li>
        </ul>
    </div>
</div>
<div class="top_heder_agile_info">
    <div class="w3ls_agile_header_inner">
        <nav class="navbar navbar-default">
            <div class="navbar-header navbar-left">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h3><a class="navbar-brand" href="index.jsp"><i class="fa fa-home" aria-hidden="true"></i> YiFanZhou Student Apartment </a></h3>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                <nav class="menu menu--juliet">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="login_index.jsp" >Login</a></li>
                        <li><a href="registration.jsp">Register</a></li>
                        <li><a href="gallery.jsp">Gallery</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                        </li>
                    </ul>

                </nav>
            </div>
        </nav>
    </div>
</div>
<!-- //banner -->
<!-- banner -->
<div class="banner1">

</div>
<!-- //banner -->

<!-- contact -->
<section class="contact-w3ls">
    <div class="container">
        <div class="wthree-heading">
            <h2 class="w3l_header">Contact Us</h2>
            <p class="quia">Comfortable, Joyful, Happiness, Luxury</p>
        </div>
        <div class="con-top">

            <div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile1" data-aos="flip-right">
                <h4 class="w3l-contact">Chat with US</h4>
                <p class="contact-agile1"><strong>Phone :</strong> +1 (334)000-0000</p>
                <p class="contact-agile1"><strong>Email :</strong> <a href="mailto:china@auburn.edu">china@auburn.edu</a></p>
                <p class="contact-agile1"><strong>Address :</strong> 5213 Yifan the Best Street,Auburn, AL</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</section>
<!-- map -->
<div class="w3l-map">
    <iframe src=https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3361.481199827702!2d-85.49735498482262!3d32.593357381027786!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x888cf30b116620af%3A0xec90525c51d712f7!2z5aWl5pys5aSn5a2m!5e0!3m2!1sen-US!2sus!4v1588133257226!5m2!1sen-US!2sus" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" allowfullscreen></iframe>
</div>
<!-- //map -->
<!-- myModal -->

<!-- //myModal -->

<!-- footer -->
<div class="footer">
    <div class="container">
        <div class="col-md-4 agile_footer_grid">
            <h3>Contact Info</h3>

            <div id="main"  style="width:1200px;">
                <div id="left" style="width:400px;float:left;" class="glyphicon glyphicon-map-marker" aria-hidden="true">5213 Yifan the Best Street, <span> Auburn, AL.</span></div>
                <div id="middle" style="width:400px;float:left;" class="glyphicon glyphicon-envelope" aria-hidden="true"><a href="mailto:china@auburn.edu">china@auburn.edu</a></div>
                <div id="right" style="width:400px;float:left;"  class="glyphicon glyphicon-earphone" aria-hidden="true"> +1 (334) 000 0000 </div>

            </div>

        </div>

        <!-- //footer -->
        <!-- js -->
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                $(".scroll").click(function(event){
                    event.preventDefault();
                    $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
                });
            });
        </script>

        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                $(".scroll").click(function(event){
                    event.preventDefault();
                    $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
                });
            });
        </script>
        <!-- start-smoth-scrolling -->
        <!-- here stars scrolling icon -->
        <script type="text/javascript">
            $(document).ready(function() {
                /*
                    var defaults = {
                    containerID: 'toTop', // fading element id
                    containerHoverID: 'toTopHover', // fading element hover id
                    scrollSpeed: 1200,
                    easingType: 'linear'
                    };
                */

                $().UItoTop({ easingType: 'easeOutQuart' });

            });
        </script>
        <!-- //here ends scrolling icon -->
        <!-- for bootstrap working -->
        <script src="js/bootstrap.js"></script>
        <!-- //for bootstrap working -->
    </div>
</div>
</body>
</html>
