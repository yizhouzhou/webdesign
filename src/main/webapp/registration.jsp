<%--
  Register Page
  Author: YiZhou and Yifan
  Last Modify Date: 5/03/2022
  Version: # 018
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration | YiFanZhou Apartment Demo | by Team YYZ</title>
    <!-- custom-theme -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Yifanzhou Apartment; 一帆舟;Author Yifan; Team YYZ; Supervisor Dr. Marghitu & Prof. Fatemeh Jamshidi" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function validate() {
        var email = document.getElementById("email").value
        var password = document.getElementById("password").value
        var comfirpassword = document.getElementById("confirmpassword").value
        const re_email = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        if (email === "") {
            document.getElementById("error_msg").innerHTML = "Please enter email."
            result = false;
        } else if (password === "") {
            document.getElementById("error_msg").innerHTML = "Please enter password."
            result = false
        } else if (password !== comfirpassword) {
            document.getElementById("error_msg").innerHTML = "Please match the password."
            result = false
        } else if (re_email.test(email) == false) {
            document.getElementById("error_msg").innerHTML = "Email is not valid."
            result = false
        } else {
            result = true
        }
        return result
    }
    </script>
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
            <h2 class="w3l_header">Resident Portal</h2>
            <p class="quia">Comfortable, Joyful, Happiness, Luxury</p>
        </div>
        <div class="wthree-heading">

            <form action="registrationServlet" method="post" onsubmit="return validate()">
                <h4 class="w3l-register">Firstname:<input name="firstname" type="text" required/></h4>
                <h4 class="w3l-register">LastName: <input name="lastname" type="text" required/> </h4>
                <h4 class="w3l-register">Email: <input id="email" name="email" type="email" required/> </h4>
                <h4 class="w3l-register">Address1:<input name="address1" type="text" required/></h4>
                <h4 class="w3l-register">Address2:<input name="address2" type="text"/> </h4>
                <h4 class="w3l-register">Password: <input id="password" name="password" type="password" required/></h4>
                <h4 class="w3l-register">Confirm Password:<input id="confirmpassword" name="confirmpassword" type="password" required/> </h4>
                <p><span id="error_msg"></span></p>
                <h4><input type="submit" name="registration" value="Register"/></h4>
                <p class="quia">Please enter your info to register</p>
            </form>
            <p>${error}</p>
        </div>
    </div>
</section>
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
    </div>
</div>
<!-- //footer -->
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

<script src="js/simpleLightbox.js"></script>
<script>
    $('.w3_agile_gallery_grid a').simpleLightbox();
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

</body>
</html>

