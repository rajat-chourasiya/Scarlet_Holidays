<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register TagName="header" TagPrefix="hd" Src="~/head.ascx" %>
<%@ Register TagName="footer" TagPrefix="ft" Src="~/footer.ascx" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<title>Scarlet Holidays | Home</title>

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
<link href="assets/css/module-css/banner.css" rel="stylesheet">
<link href="assets/css/module-css/booking-form.css" rel="stylesheet">
<link href="assets/css/module-css/about.css" rel="stylesheet">
<link href="assets/css/module-css/chooseus.css" rel="stylesheet">
<link href="assets/css/module-css/tours.css" rel="stylesheet">
<link href="assets/css/module-css/category.css" rel="stylesheet">
<link href="assets/css/module-css/video.css" rel="stylesheet">
<link href="assets/css/module-css/place.css" rel="stylesheet">
<link href="assets/css/module-css/testimonial.css" rel="stylesheet">
<link href="assets/css/module-css/news.css" rel="stylesheet">
<link href="assets/css/module-css/subscribe.css" rel="stylesheet">
<link href="assets/css/responsive.css" rel="stylesheet">
</head>
    <script language="javascript" type="text/javascript">

        function validation() {

            if (document.getElementById("<%=destination_txt.ClientID%>").value == "Your Destination") {
                         alert("Please enter the Your Destination.");
            document.getElementById("<%=destination_txt.ClientID%>").focus();
            return false;
                     }
             else if (document.getElementById("<%=datepicker.ClientID%>").value == "") {
                 alert("Please enter Your Travel Date.");
            document.getElementById("<%=datepicker.ClientID%>").focus();
            return false;
                        }
             else if (document.getElementById("<%=name.ClientID%>").value == "") {
                 alert("Please enter Your Full Name.");
            document.getElementById("<%=name.ClientID%>").focus();
            return false;
             }    
                    
             else if (document.getElementById("<%=phone.ClientID%>").value == "") {
                 alert("Please enter Your Contact Number.");
            document.getElementById("<%=phone.ClientID%>").focus();
            return false;
             }
           
           
           
        return true;
        
    }

</script>

<!-- page wrapper -->
<body>

    <div class="boxed_wrapper ltr">
     <hd:header ID="head" runat="server" />


        <!-- banner-section -->
        <section class="banner-section p_relative centred">
            <div class="banner-carousel owl-theme owl-carousel owl-dots-none owl-nav-none">
                <div class="slide-item p_relative">
                    <div class="bg-layer" style="background-image: url(assets/images/banner/banner-1.jpg);"></div>
                    <span class="big-text animation_text_word"></span>
                    <div class="auto-container">
                        <div class="content-box">
                            <span class="special-text">Welcome to</span>
                            <h2>Scarlet Holidays</h2>
                            <p>Vibrant destinations, unforgettable memories, Scarlet Holidays your passport to adventure and luxury.</p>
                        </div> 
                    </div>
                </div>
                <div class="slide-item p_relative">
                    <div class="bg-layer" style="background-image: url(assets/images/banner/banner-3.jpg);"></div>
                    <span class="big-text animation_text_word"></span>
                    <div class="auto-container">
                        <div class="content-box">
                            <span class="special-text">Explore the world</span>
                            <h2>Creating memories that last...</h2>
                            <p>Roam far and wide. Explore the world's beauty and wonders.</p>
                        </div> 
                    </div>
                </div>
                <div class="slide-item p_relative">
                    <div class="bg-layer" style="background-image: url(assets/images/banner/banner-2.jpg);"></div>
                    <span class="big-text animation_text_word"></span>
                    <div class="auto-container">
                        <div class="content-box">
                            <span class="special-text">Discover the Planet...</span>
                            <h2>Creating memories that last...</h2>
                            <p>Discover Earth's treasures. Explore the world, embrace its diversity.</p>
                        </div> 
                    </div>
                </div>
                <div class="slide-item p_relative">
                    <div class="bg-layer" style="background-image: url(assets/images/banner/banner-4.jpg);"></div>
                    <span class="big-text animation_text_word"></span>
                    <div class="auto-container">
                        <div class="content-box">
                            <span class="special-text">Coastal Bliss Awaits You</span>
                            <h2>Escape to Tranquil Beach Paradises....</h2>
                            <p>Indulge in coastal delights, where relaxation meets the rhythm of waves.</p>
                        </div> 
                    </div>
                </div>
            </div>
            <div class="booking-form">
                <div class="auto-container">
                    <div class="booking-inner">
                        <form id="from1" runat="server">
                            <div class="form-group">
                                <div class="icon"><i class="icon-8"></i></div>
                                <div class="select-box">
                                    <select class="wide" id="destination_txt" runat="server" >
                                       <option data-display="Your Destination">Your Destination</option>
                                       <option value="Domestic">Domestic</option>
                                       <option value="International">International</option>
                                       
                                    </select>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="icon"><i class="icon-10"></i></div>
                                <input type="text" name="date" id="datepicker" runat="server" placeholder="Travel Date">
                            </div>
                            <div class="form-group no-drpdwn">
                                <div class="icon"><i class="icon-7"></i></div>
                                <input type="text" placeholder="Name" id="name" runat="server">
                            </div>
                            <div class="form-group no-drpdwn">
                                <div class="icon"><i class="icon-5"></i></div>
                                <input type="text" id="phone" runat="server" placeholder="Phone">
                            </div>
                            <div class="btn-box">
                                <a id="send" runat="server" onclick="return validation();" onserverclick="send_ServerClick" type="submit">Send Now</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- banner-section end -->

                <!-- category-section -->
        <section class="category-section pt_80 pb_80 centred">
            <div class="container">
                <div class="sec-title mb_50">
                    <span class="sub-title">Travel by Activity</span>
                    <h2>TOP CATEGORIES</h2>
                </div>
                <div class="row">
                    <asp:Repeater ID="type_txt" runat="server">
                        <ItemTemplate>
                    <div class="col-md-2 col-sm-6 col-xs-6 category-block-one">
                        <div class="inner-box">
                            <figure class="image-box"><img src="/ServerImage/<%# Eval("Image") %>" alt=""></figure>
                            <h4><a href="/tour-type/<%# Eval("typeID") %>/<%# Eval("URL") %>"><%# Eval("Name") %></a></h4>
                        </div>
                    </div>
                            </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>
        <!-- category-section end -->

        <!-- tours-section -->
        <section class="tours-section pt_100 pb_70">
            <div class="pattern-layer" style="background-image: url(assets/images/shape/shape-2.png);"></div>
            <div class="auto-container">
                <div class="tabs-box">
                    <div class="upper-box mb_60">
                        <div class="sec-title">
                            <span class="sub-title">Tour Packages</span>
                            <h2>Featured Tours</h2>
                        </div>
                        <div class="tab-btn-box p_relative">
                            <ul class="tab-btns tab-buttons clearfix">
                                <li class="tab-btn active-btn" data-tab="#tab-1">Domestic</li>
                                <li class="tab-btn" data-tab="#tab-2">International</li>
                            </ul>
                        </div>
                    </div>
                    <div class="tabs-content">
                        <div class="tab active-tab" id="tab-1">
                            <div class="row clearfix">
                                <asp:Repeater ID="domestic_txt" runat="server">
                                    <ItemTemplate>
                                <div class="col-lg-3 col-md-6 col-sm-12 tours-block">
                                    <div class="tours-block-one">
                                        <div class="inner-box">
                                            <div class="image-box">
                                                <figure class="image"><img src="ServerImage/<%# Eval("Image") %>" alt=""></figure>
                                                <span class="rating"><img src="assets/images/icons/icon-1.png" alt=""> <%# Eval("rating") %></span>
                                            </div>
                                            <div class="lower-content">
                                                <h6><%# Eval("title") %></h6>
                                                <h4><a href="tour-details/<%# Eval("PackageID") %>/<%# Eval("URL") %>"><%# Eval("pName") %></a></h4>
                                                <span class="day-time"><i class="icon-1"></i><%# Eval("Duration") %></span>
                                                <ul class="inclsn">
                                                    <span>Inclusion:</span>
                                                    <li><img src="assets/images/icons/pkg1.png"></li>
                                                    <li><img src="assets/images/icons/pkg2.png"></li>
                                                    <li><img src="assets/images/icons/pkg3.png"></li>
                                                    <li><img src="assets/images/icons/pkg4.png"></li>
                                                </ul>
                                                <h5><span>Price - </span><%# Eval("price") %></h5>
                                                <div class="link">
                                                    <a href="tour-details/<%# Eval("PackageID") %>/<%# Eval("URL") %>">View Detail<i class="fas fa-long-arrow-right"></i></a>
                                                    <a href="https://api.whatsapp.com/send?phone=919930682339&text=Hi There ! I am interested to know more about the services that you offer. Kindly connect with me." class="wtsapp">Whatsapp<i class="fab fa-whatsapp"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                        </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="tab" id="tab-2">
                            <div class="row clearfix">
                                   <asp:Repeater ID="international" runat="server">
                                    <ItemTemplate>
                                <div class="col-lg-3 col-md-6 col-sm-12 tours-block">
                                    <div class="tours-block-one">
                                        <div class="inner-box">
                                            <div class="image-box">
                                                <figure class="image"><img src="ServerImage/<%# Eval("Image") %>" alt=""></figure>
                                                <span class="rating"><img src="assets/images/icons/icon-1.png" alt=""> <%# Eval("rating") %></span>
                                            </div>
                                            <div class="lower-content">
                                                <h6><%# Eval("title") %></h6>
                                                <h4><a href="tour-details/<%# Eval("PackageID") %>/<%# Eval("URL") %>"><%# Eval("pName") %></a></h4>
                                                <span class="day-time"><i class="icon-1"></i><%# Eval("Duration") %></span>
                                                <ul class="inclsn">
                                                    <span>Inclusion:</span>
                                                    <li><img src="assets/images/icons/pkg1.png"></li>
                                                    <li><img src="assets/images/icons/pkg2.png"></li>
                                                    <li><img src="assets/images/icons/pkg3.png"></li>
                                                    <li><img src="assets/images/icons/pkg4.png"></li>
                                                </ul>
                                                <h5><span>Price - </span><%# Eval("price") %></h5>
                                                <div class="link">
                                                    <a href="tour-details/<%# Eval("PackageID") %>/<%# Eval("URL") %>">View Detail<i class="fas fa-long-arrow-right"></i></a>
                                                    <a href="https://api.whatsapp.com/send?phone=919930682339&text=Hi There ! I am interested to know more about the services that you offer. Kindly connect with me." class="wtsapp">Whatsapp<i class="fab fa-whatsapp"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                 </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- tours-section end -->

        <!-- about-section -->
        <section class="about-section pt_80 pb_80">
            <div class="pattern-layer" style="background-image: url(assets/images/shape/shape-1.png);"></div>
            <div class="auto-container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-12 col-sm-12 content-column">
                        <div class="content_block_one">
                            <div class="content-box mr_60">
                                <div class="sec-title mb_30">
                                    <span class="sub-title">About us</span>
                                    <h2>Planning a trip should be very exciting adventure</h2>
                                </div>
                                <div class="text-box mb_35">
                                    <p>We are committed to offering travel services of the highest quality, combining our energy and enthusiasm, with our years of experience. Our greatest satisfaction comes in serving large numbers of satisfied clients who have experienced the joys and inspiration of travel. We’re here to help you do them, not just dream about them. We pride ourselves on being passionate, experienced, and opinionated when it comes to travel. Scarlet Holidays is not only committed to providing you with an unforgettable and inspiring trip, we’re also committed to ensuring your happiness and comfort throughout. From the moment you pick up the phone to after you return home, Scarlet Holidays ensures that your journey is seamless, authentic, and beyond what you had imagined. Give us a call or email us, and let us help you find a holiday.</p>
                                </div>
                               
                                <div class="mt_30 rdmr-btn"><a href="/about-us">Read More <i class="fas fa-long-arrow-right"></i></a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-12 image-column">
                        <div class="image_block_one">
                            <div class="image-box">
                                <figure class="image image-1"><img src="assets/images/resource/about-1.jpg" alt=""></figure>
                                <figure class="image image-2"><img src="assets/images/resource/about-2.jpg" alt=""></figure>
                                <figure class="image image-3"><img src="assets/images/resource/about-3.jpg" alt=""></figure>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- about-section end -->


        <!-- chooseus-section -->
        <section class="chooseus-section pt_60 pb_65 centred">
            <div class="container">
                <div class="row clearfix">
                    <div class="col-lg-3 col-md-6 col-sm-12 chooseus-block rg-bdr">
                        <div class="chooseus-block-one wow fadeInUp animated" data-wow-delay="00ms" data-wow-duration="1500ms">
                            <div class="inner-box ">
                                <div class="icon-box mb_20"><i class="icon-15"></i></div>
                                <h5>BEST PRICE GUARENTEE</h5>
                                <p>We guarantee you're getting the best price on Tour Package.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 chooseus-block rg-bdr">
                        <div class="chooseus-block-one wow fadeInUp animated" data-wow-delay="200ms" data-wow-duration="1500ms">
                            <div class="inner-box">
                                <div class="icon-box mb_20"><i class="icon-16"></i></div>
                                <h5>100% SECURE PAYMENTS</h5>
                                <p>All major credit & debit cards accepted</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 chooseus-block rg-bdr">
                        <div class="chooseus-block-one wow fadeInUp animated" data-wow-delay="400ms" data-wow-duration="1500ms">
                            <div class="inner-box">
                                <div class="icon-box mb_10"><img src="assets/images/icons/yus-1.png" width="55px"></div>
                                <h5>CAR ON RENT</h5>
                                <p>Complete transportation solution rent a Car with driver as per your need</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 chooseus-block">
                        <div class="chooseus-block-one wow fadeInUp animated" data-wow-delay="600ms" data-wow-duration="1500ms">
                            <div class="inner-box">
                                <div class="icon-box mb_10"><img src="assets/images/icons/yus-2.png" width="55px"></div>
                                <h5>24/7 SUPPORT</h5>
                                <p>Provided with responsive service when you need it most.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- chooseus-section end -->
        <section style="background: url(assets/images/home-bg.jpg);" class="bch-img-sec">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="bch-img-crnt-holder">
                            <h3>Travel with us to the most scenic tropical islands of India <span>Lakshadweep, Andaman and more...</span></h3>
                            <h5>Get exciting offers. Book your Trip now</h5>
                            <div class="bk-btn-bch-img">
                                <a href="#">Book Now <i class="fas fa-long-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>
            </div>
        </section>
        <!-- place-section -->
        <section class="place-section centred pt_50 pb_40">
            <div class="auto-container">
                <div class="sec-title mb_50">
                    <span class="sub-title">Popular Destiantion</span>
                    <h2>Top Visited Places </h2>
                </div>
                <div class="row clearfix">
                    <div class="col-lg-4 col-md-6 col-sm-12 place-block">
                        <div class="place-block-one">
                            <div class="inner-box">
                                <a href="#"><figure class="image-box"><img src="assets/images/resource/place-1.jpg" alt=""></figure>
                                <span class="text">Indonesia</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 place-block">
                        <div class="place-block-one">
                            <div class="inner-box">
                                <a href="#"><figure class="image-box"><img src="assets/images/resource/place-2.jpg" alt=""></figure>
                                <span class="text">Dubai</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 place-block">
                        <div class="place-block-one">
                            <div class="inner-box">
                                <a href="#"><figure class="image-box"><img src="assets/images/resource/place-3.jpg" alt=""></figure>
                                <span class="text">India</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 place-block">
                        <div class="place-block-one">
                            <div class="inner-box">
                                <a href="#"><figure class="image-box"><img src="assets/images/resource/place-4.jpg" alt=""></figure>
                                <span class="text">Singapore</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 place-block">
                        <div class="place-block-one">
                            <div class="inner-box">
                                <a href="#"><figure class="image-box"><img src="assets/images/resource/place-6.jpg" alt=""></figure>
                                <span class="text">Thailand</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12 place-block">
                        <div class="place-block-one">
                            <div class="inner-box">
                                <a href="#"><figure class="image-box"><img src="assets/images/resource/place-5.jpg" alt=""></figure>
                                <span class="text">Nepal</span></a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- place-section end -->

        <!-- tours-section -->
        <section class="tours-section pt_80 pb_70">
            <div class="pattern-layer" style="background-image: url(assets/images/shape/shape-2.png);"></div>
            <div class="auto-container">
                <div class="tabs-box">
                    <div class="upper-box mb_60">
                        <div class="sec-title cs-sec-title">
                            <span class="sub-title">Popular Tours</span>
                            <h2>Best Honeymoon Packages</h2>
                        </div>
                        
                    </div>
                    <div class="tabs-content">
                        <div class="tab active-tab" >
                            <div class="row clearfix">
                                <asp:Repeater ID="best_pkg" runat="server">
                                    <ItemTemplate>
                                <div class="col-lg-3 col-md-6 col-sm-12 tours-block">
                                    <div class="tours-block-one">
                                        <div class="inner-box">
                                            <div class="image-box">
                                                <figure class="image"><img src="ServerImage/<%# Eval("Image") %>" alt=""></figure>
                                                <span class="rating"><img src="assets/images/icons/icon-1.png" alt=""> <%# Eval("rating") %></span>
                                            </div>
                                            <div class="lower-content">
                                                <h6><%# Eval("title") %></h6>
                                                <h4><a href="tour-details/<%# Eval("PackageID") %>/<%# Eval("URL") %>"><%# Eval("pName") %></a></h4>
                                                <span class="day-time"><i class="icon-1"></i><%# Eval("Duration") %></span>
                                                <ul class="inclsn">
                                                    <span>Inclusion:</span>
                                                    <li><img src="assets/images/icons/pkg1.png"></li>
                                                    <li><img src="assets/images/icons/pkg2.png"></li>
                                                    <li><img src="assets/images/icons/pkg3.png"></li>
                                                    <li><img src="assets/images/icons/pkg4.png"></li>
                                                </ul>
                                                <h5><span>Price - </span><%# Eval("price") %></h5>
                                                <div class="link">
                                                    <a href="tour-details/<%# Eval("PackageID") %>/<%# Eval("URL") %>">View Detail<i class="fas fa-long-arrow-right"></i></a>
                                                    <a href="https://api.whatsapp.com/send?phone=919930682339&text=Hi There ! I am interested to know more about the services that you offer. Kindly connect with me." class="wtsapp">Whatsapp<i class="fab fa-whatsapp"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                        </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- tours-section end -->
        
        <!-- testimonial-section -->
        <section class="testimonial-section pt_60 pb_50">
            <div class="pattern-layer" style="background-image: url(assets/images/shape/shape-3.png);"></div>
            <div class="container">
                <div class="sec-title centred mb_50">
                    <span class="sub-title">Testimonials</span>
                    <h2>Happy Customer's Review</h2>
                    <img src="assets/images/google.png" width="160px" class="mt_20">
                </div>
                <div class="two-item-carousel owl-carousel owl-theme dots-style-one nav-style-one">
                    <asp:Repeater ID="testi_txt" runat="server">
                        <ItemTemplate>
                    <div class="testimonial-block-one">
                        <div class="inner-box">
                            <ul class="rating">
                                <li><img src="assets/images/icons/icon-1.png" alt=""></li>
                                <li><img src="assets/images/icons/icon-1.png" alt=""></li>
                                <li><img src="assets/images/icons/icon-1.png" alt=""></li>
                                <li><img src="assets/images/icons/icon-1.png" alt=""></li>
                                <li><img src="assets/images/icons/icon-1.png" alt=""></li>
                            </ul>
                            <div class="author-box">
                                
                                <h3><%# Eval("Name") %></h3>
                                <span class="designation"><%# Eval("Position") %></span>
                            </div>
                            <p>“<%# Eval("Description") %> ”</p>
                        </div>
                    </div>
                            </ItemTemplate>
                    </asp:Repeater>
                    
                </div>
            </div>
        </section>
        <!-- testimonial-section end -->

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
    <script src="assets/js/isotope.js"></script>
    <script src="assets/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/jquery-ui.js"></script>
    <script src="assets/js/text_animation.js"></script>
    <script src="assets/js/text_plugins.js"></script>
    <script src="assets/js/parallax-scroll.js"></script>

    <!-- main-js -->
    <script src="assets/js/script.js"></script>

</body><!-- End of .page_wrapper -->
</html>
