<%@ Page Language="C#" AutoEventWireup="true" CodeFile="experiences.aspx.cs" Inherits="experiences" %>
<%@ Register TagName="header" TagPrefix="hd" Src="~/head.ascx" %>
<%@ Register TagName="footer" TagPrefix="ft" Src="~/footer.ascx" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<title>Scarlet Holidays | Experiences</title>

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

<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/module-css/page-title.css" rel="stylesheet">
<link href="assets/css/module-css/about.css" rel="stylesheet">
<link href="assets/css/module-css/chooseus.css" rel="stylesheet">
<link href="assets/css/module-css/offers.css" rel="stylesheet">
<link href="assets/css/module-css/subscribe.css" rel="stylesheet">
<link href="assets/css/responsive.css" rel="stylesheet">
<link href="assets/css/module-css/experience.css" rel="stylesheet">
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
                    <h1>Experiences</h1>
                    <ul class="brdcm-inst">
                        <li><a href="">Home <i class="fa fa-angle-right"></i></a></li>
                        <li><a href="">Experiences</a></li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- page-title end -->


        <!-- about-section -->
        <section class="about-section pt_60 pb_100">
            <div class="pattern-layer-2" style="background-image: url(assets/images/shape/shape-25.png);"></div>
            <div class="container">
                <div class="row">
                  <div class="column">
                    <img src="assets/images/resource/tour-1.jpg" style="width:100%" onclick="openModal();currentSlide(1)" class="hover-shadow cursor">
                  </div>
                  <div class="column">
                    <img src="assets/images/resource/tour-2.jpg" style="width:100%" onclick="openModal();currentSlide(2)" class="hover-shadow cursor">
                  </div>
                  <div class="column">
                    <img src="assets/images/resource/tour-3.jpg" style="width:100%" onclick="openModal();currentSlide(3)" class="hover-shadow cursor">
                  </div>
                  <div class="column">
                    <img src="assets/images/resource/tour-4.jpg" style="width:100%" onclick="openModal();currentSlide(4)" class="hover-shadow cursor">
                  </div>
                  <div class="column">
                    <img src="assets/images/resource/tour-5.jpg" style="width:100%" onclick="openModal();currentSlide(5)" class="hover-shadow cursor">
                  </div>
                  <div class="column">
                    <img src="assets/images/resource/tour-6.jpg" style="width:100%" onclick="openModal();currentSlide(6)" class="hover-shadow cursor">
                  </div>
                </div>

                <div id="myModal" class="modal">
                  <span class="close cursor" onclick="closeModal()">&times;</span>
                  <div class="modal-content">

                    <div class="mySlides">
                      <div class="numbertext">1 </div>
                      <img src="assets/images/resource/tour-1.jpg" style="width:100%">
                    </div>

                    <div class="mySlides">
                      <div class="numbertext">2</div>
                      <img src="assets/images/resource/tour-2.jpg" style="width:100%">
                    </div>

                    <div class="mySlides">
                      <div class="numbertext">3 </div>
                      <img src="assets/images/resource/tour-3.jpg" style="width:100%">
                    </div>
                    
                    <div class="mySlides">
                      <div class="numbertext">4 </div>
                      <img src="assets/images/resource/tour-4.jpg" style="width:100%">
                    </div>
                    
                    <div class="mySlides">
                      <div class="numbertext">5 </div>
                      <img src="assets/images/resource/tour-5.jpg" style="width:100%">
                    </div>

                    <div class="mySlides">
                      <div class="numbertext">6</div>
                      <img src="assets/images/resource/tour-6.jpg" style="width:100%">
                    </div>

                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                    <a class="next" onclick="plusSlides(1)">&#10095;</a>

                    <div class="caption-container">
                      <p id="caption"></p>
                    </div>
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

    <script>
        function openModal() {
          document.getElementById("myModal").style.display = "block";
        }

        function closeModal() {
          document.getElementById("myModal").style.display = "none";
        }

        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
          showSlides(slideIndex += n);
        }

        function currentSlide(n) {
          showSlides(slideIndex = n);
        }

        function showSlides(n) {
          var i;
          var slides = document.getElementsByClassName("mySlides");
          var dots = document.getElementsByClassName("demo");
          var captionText = document.getElementById("caption");
          if (n > slides.length) {slideIndex = 1}
          if (n < 1) {slideIndex = slides.length}
          for (i = 0; i < slides.length; i++) {
              slides[i].style.display = "none";
          }
          for (i = 0; i < dots.length; i++) {
              dots[i].className = dots[i].className.replace(" active", "");
          }
          slides[slideIndex-1].style.display = "block";
          dots[slideIndex-1].className += " active";
          captionText.innerHTML = dots[slideIndex-1].alt;
        }
    </script>

</body><!-- End of .page_wrapper -->
</html>
