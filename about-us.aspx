<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about-us.aspx.cs" Inherits="about_us" %>
<%@ Register TagName="header" TagPrefix="hd" Src="~/head.ascx" %>
<%@ Register TagName="footer" TagPrefix="ft" Src="~/footer.ascx" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>Scarlet Holidays | About Us</title>
<!-- Fav Icon -->
<link rel="icon" href="assets/images/favicon.png" type="image/x-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Seaweed+Script&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Urbanist:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

<!-- Stylesheets -->
<link href="assets/css/font-awesome-all.css" rel="stylesheet">
<link href="assets/css/flaticon.css" rel="stylesheet">
<link href="assets/css/owl.css" rel="stylesheet">
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/jquery.fancybox.min.css" rel="stylesheet">
<link href="assets/css/animate.css" rel="stylesheet">
<link href="assets/css/nice-select.css" rel="stylesheet">
<link href="assets/css/jquery-ui.css" rel="stylesheet">
<link href="assets/css/elpath.css" rel="stylesheet">
<link href="assets/css/color.css" id="jssDefault" rel="stylesheet">
<link href="assets/css/rtl.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/module-css/page-title.css" rel="stylesheet">
<link href="assets/css/module-css/about.css" rel="stylesheet">
<link href="assets/css/module-css/chooseus.css" rel="stylesheet">
<link href="assets/css/module-css/offers.css" rel="stylesheet">
<link href="assets/css/module-css/video.css" rel="stylesheet">
<link href="assets/css/module-css/testimonial.css" rel="stylesheet">
<link href="assets/css/module-css/subscribe.css" rel="stylesheet">
<link href="assets/css/responsive.css" rel="stylesheet">

</head>


<!-- page wrapper -->
<body>

    <div class="boxed_wrapper ltr">

       <hd:header ID="head" runat="server" />


        <!-- page-title -->
        <section class="page-title centred">
            <div class="bg-layer" style="background-image: url(assets/images/background/page-title.jpg);"></div>
            <div class="auto-container">
                <div class="content-box">
                    <h1>About us</h1>
                    <ul class="brdcm-inst">
                        <li><a href="">Home <i class="fa fa-angle-right"></i></a></li>
                        <li><a href="">About Us</a></li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- page-title end -->


        <!-- about-section -->
        <section class="about-section pt_60 pb_100">
            <div class="pattern-layer-2" style="background-image: url(assets/images/shape/shape-25.png);"></div>
            <div class="auto-container">
                <div class="row align-items-center">
                    <div class="col-lg-8 col-md-12 col-sm-12 content-column">
                        <div class="content_block_one">
                            <div class="content-box mr_60">
                                <div class="sec-title mb_30">
                                    <span class="sub-title">About</span>
                                    <h2>Scarlet Holidays</h2>
                                </div>
                                <div class="text-box mb_35">
                                    <p>We are committed to offering travel services of the highest quality, combining our energy and enthusiasm, with our years of experience. Our greatest satisfaction comes in serving large numbers of satisfied clients who have experienced the joys and inspiration of travel. We’re here to help you do them, not just dream about them. We pride ourselves on being passionate, experienced, and opinionated when it comes to travel. Scarlet Holidays is not only committed to providing you with an unforgettable and inspiring trip, we’re also committed to ensuring your happiness and comfort throughout. From the moment you pick up the phone to after you return home, Scarlet Holidays ensures that your journey is seamless, authentic, and beyond what you had imagined. Give us a call or email us, and let us help you find a holiday.</p>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12 image-column">
                        <img src="assets/images/resource/about-2.jpg" alt="">
                    </div>
                </div>
            </div>
        </section>
        <!-- about-section end -->



        <!-- subscribe-section -->
        <section class="subscribe-section">
            <div class="bg-color"></div>
            <div class="auto-container">
                <div class="inner-container">
                    <div class="shape" style="background-image: url(assets/images/shape/shape-4.png);"></div>
                    <div class="row align-items-center">
                        
                        <div class="col-lg-8 col-md-12 col-sm-12 form-column">
                            <div>
                                <h3 class="ftr-nbrsec repv-mg">
                                    <span>Call Us</span>
                                <a href="tel:9930684491"><i class="icon-5"></i>+91-99306 84491 | +91-99306 82339 | 022264 83603</a>
                                </h3>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12 form-column">
                            <div>
                                <h3 class="ftr-nbrsec">
                                    <span>Mail Us</span>
                                    <a href="mailto:scarletholidays@yahoo.com"><i class="icon-6"></i>scarletholidays@yahoo.com</a>
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- subscribe-section end -->


       <ft:footer ID="footer" runat="server" />
        
    </div>


    <!-- jequery plugins -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.js"></script>
    <script src="assets/js/wow.js"></script>
    <script src="assets/js/jquery.fancybox.js"></script>
    <script src="assets/js/appear.js"></script>
    <script src="assets/js/isotope.js"></script>
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/jquery-ui.js"></script>
    <script src="assets/js/text_animation.js"></script>
    <script src="assets/js/text_plugins.js"></script>
    <script src="assets/js/parallax-scroll.js"></script>
    <script src="assets/js/jquery.lettering.min.js"></script>
    <script src="assets/js/jquery.circleType.js"></script>

    <!-- main-js -->
    <script src="assets/js/script.js"></script>

</body><!-- End of .page_wrapper -->
</html>
