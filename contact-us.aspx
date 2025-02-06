<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact-us.aspx.cs" Inherits="contact_us" %>
<%@ Register TagName="header" TagPrefix="hd" Src="~/head.ascx" %>
<%@ Register TagName="footer" TagPrefix="ft" Src="~/footer.ascx" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<title>Scarlet Holidays | Contact Us</title>

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
<link href="assets/css/module-css/contact-info.css" rel="stylesheet">
<link href="assets/css/module-css/contact.css" rel="stylesheet">
<link href="assets/css/module-css/subscribe.css" rel="stylesheet">
<link href="assets/css/responsive.css" rel="stylesheet">

</head>


<!-- page wrapper -->
<body>

    <div class="boxed_wrapper ltr">
        <hd:header ID="haed" runat="server" />

        <!-- page-title -->
        <section class="page-title centred">
            <div class="bg-layer" style="background-image: url(assets/images/background/page-title-6.jpg);"></div>
            <div class="auto-container">
                <div class="content-box">
                    <h1>Contact Us</h1>
                    <ul class="brdcm-inst">
                        <li><a href="">Home <i class="fa fa-angle-right"></i></a></li>
                        <li><a href="">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- page-title end -->


        <!-- contact-info-section -->
        <section class="contact-info-section pt_80 pb_50 centred">
            <div class="auto-container">
                <div class="sec-title mb_50">
                    <h2>Contact Detail</h2>
                </div>
                <div class="row clearfix">
                    <div class="col-lg-4 col-md-6 col-sm-12 info-column">
                        <div class="info-block-one">
                            <div class="inner-box">
                                <div class="icon-box"><i class="icon-24"></i></div>
                                <h3>Our Location</h3>
                                <p>Lorem Ipsum is simply dummy <br>simply dummy</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 info-column">
                        <div class="info-block-one">
                            <div class="inner-box">
                                <div class="icon-box"><i class="icon-29"></i></div>
                                <h3>Email Address</h3>
                                <p>
                                   <a href="mailto:scarletholidays@yahoo.com">scarletholidays@yahoo.com</a><br />
                                   <a href="mailto:info@scarletholidays.in">info@scarletholidays.in</a>
                               </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 info-column">
                        <div class="info-block-one">
                            <div class="inner-box">
                                <div class="icon-box"><i class="icon-28"></i></div>
                                <h3>Phone Number</h3>
                                <p><a href="tel:9930684491">+91-99306 84491</a> <br> <a href="tel:9930682339">+91-99306 82339</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- contact-info-section end -->

        <!-- contact-section -->
        <section class="contact-section pt_20 pb_80">
            <div class="auto-container">
                <div class="sec-title centred mb_50">
                    <span class="sub-title">Connect</span>
                    <h2>Send us your feedback</h2>
                </div>
                <div class="form-inner">
                    <form method="post" action="sendemail.php" id="contact-form" class="default-form"> 
                        <div class="row clearfix">
                            <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                <input type="text" name="username" placeholder="Your Name" required="">
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                <input type="email" name="email" placeholder="Your email" required="">
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                <input type="text" name="phone" required="" placeholder="Phone">
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 form-group">
                                <input type="text" name="subject" required="" placeholder="Subject">
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 form-group">
                                <textarea name="message" placeholder="Type message"></textarea>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 form-group message-btn centred">
                                <button class="theme-btn btn-one" type="submit" name="submit-form">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <!-- contact-sectin end -->


        <!-- contact-map-section -->
        <section class="contact-map-section mb_50">
            <div class="auto-container">
                <div class="map-inner">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d55945.16225505631!2d-73.90847969206546!3d40.66490264739892!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1601263396347!5m2!1sen!2sbd" width="600" height="535" frameborder="0" style="border:0; width: 100%" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
            </div>
        </section>
        <!-- contact-map-section end -->

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
                                <a href="tel:0987654321"><i class="icon-5"></i>+91-0987654321 | +91-0987654321 | 0987654321</a>
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


        <!-- main-footer -->
        <ft:footer ID="footer" runat="server" />
        <!-- Scroll to top end -->
        
    </div>


    <!-- jequery plugins -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.js"></script>
    <script src="assets/js/wow.js"></script>
    <script src="assets/js/jquery.fancybox.js"></script>
    <script src="assets/js/appear.js"></script>
    <script src="assets/js/validation.js"></script>
    <script src="assets/js/isotope.js"></script>
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/jquery-ui.js"></script>

    <!-- main-js -->
    <script src="assets/js/script.js"></script>

</body><!-- End of .page_wrapper -->
</html>
