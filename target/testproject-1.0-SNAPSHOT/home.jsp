<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="models.UserModel" %>
<%@ page import="models.Fatchinfor" %>
<%@ page import="services.mysqldb" %>
<%@ page import="models.ApartmentModels" %>
<%@ page import="java.util.List" %>
<%--
  Author: Yizhou Zhou
  2nd Author: Yifan Zhang
  Reviewer: Yifan Zhang
  Quality Control: Yifan Zhang
  SQL developer: Yizhou Zhou
  UI Designer: Yifan Zhang
  UX Designer: Yifan Zhang
  Tech Office: Yifan Zhang
  Member: Ziwen Wang
  --
  Date: 4/27/2022
  Version: # 002
  Modify Date: May. 3 2022
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resident Panel | YiFanZhou Apartment Demo | by Team YYZ</title>
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
<%
    if (request.getSession() != null) {
        if (session.getAttribute("user") != null) {
            UserModel user = (UserModel) session.getAttribute("user");
            mysqldb db = mysqldb.getInstance();
            List<ApartmentModels> apartmentmodels = db.Allaprtment();
            request.setAttribute("list", apartmentmodels);

%>
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
            <h2 class="w3l_header">Hello, <%= user.getName() %></h2>
            <p class="quia">Email: <%= user.getEmail()%></p>
        </div>
        <div class="con-top">
            <div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile1" data-aos="flip-right">
                <form action="FatchstatusServlet">
                    <br/>
                    <table id="panels">
                        <tr>
                            <th>Apartment Information</th>
                            <th>Apartment Total bedrooms</th>
                            <th>Rent Price</th>
                            <th>Total Number of Bedrooms Have Been Taken</th>
                        </tr>
                        <c:forEach var="each_game" items="${game}">
                            <tr>
                                <td>${each_game.getApartmentinfo()}</td>
                                <td>${each_game.getAparttotalbedroom()}</td>
                                <td>$${each_game.getApartprice()}</td>
                                <td>${each_game.getApartbedrooms()}</td>
                            </tr>
                        </c:forEach>
                    </table>

                    <input type="submit" value="Show information"/>
                </form>
                <form action="UpdateServlet">
                    <h1>YifanZhou Apartment Panel</h1>
                    <br/>
                    <table id="panels">
                        <tr>
                            <th>Apartment Information</th>
                            <th>Apartment Total bedrooms</th>
                            <th>Rent Price</th>
                        </tr>
                        <c:forEach var="each_list" items="${list}">
                            <tr>
                                <td>${each_list.getApartmentinfo()}</td>
                                <td>${each_list.getAparttotalbedroom()}</td>
                                <td>$${each_list.getApartprice()}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </form>
                <form action="LogoutServlet">
                    <input type="submit" value="logout"/>

                </form>
<%
        } else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("login_index.jsp");
            request.setAttribute("error", "Please login to continue..!!!");
            requestDispatcher.forward(request, response);
        }
    } else {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("login_index.jsp");
        request.setAttribute("error", "Please login to continue..!!!");
        requestDispatcher.forward(request, response);
    }

%>
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