<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tour.aspx.cs" Inherits="tour" %>
<%@ Register TagName="header" TagPrefix="hd" Src="~/head.ascx" %>
<%@ Register TagName="footer" TagPrefix="ft" Src="~/footer.ascx" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<title>Scarlet Holidays | Tour List</title>

<!-- Fav Icon -->
<link rel="icon" href="/assets/images/favicon.png" type="image/x-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Seaweed+Script&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Urbanist:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

<!-- Stylesheets -->
<link href="/assets/css/font-awesome-all.css" rel="stylesheet">
<link href="/assets/css/flaticon.css" rel="stylesheet">
<link href="/assets/css/owl.css" rel="stylesheet">
<link href="/assets/css/bootstrap.css" rel="stylesheet">
<link href="/assets/css/jquery.fancybox.min.css" rel="stylesheet">
<link href="/assets/css/animate.css" rel="stylesheet">
<link href="/assets/css/nice-select.css" rel="stylesheet">
<link href="/assets/css/jquery-ui.css" rel="stylesheet">
<link href="/assets/css/elpath.css" rel="stylesheet">
<link href="/assets/css/color.css" id="jssDefault" rel="stylesheet">
<link href="/assets/css/rtl.css" rel="stylesheet">
<link href="/assets/css/style.css" rel="stylesheet">
<link href="/assets/css/module-css/page-title.css" rel="stylesheet">
<link href="/assets/css/module-css/booking-form.css" rel="stylesheet">
<link href="/assets/css/module-css/tour-sidebar.css" rel="stylesheet">
<link href="/assets/css/module-css/tours.css" rel="stylesheet">
<link href="/assets/css/module-css/offers.css" rel="stylesheet">
<link href="/assets/css/module-css/subscribe.css" rel="stylesheet">
<link href="/assets/css/responsive.css" rel="stylesheet">
<link href="/assets/css/module-css/tour-details.css" rel="stylesheet">

</head>


<!-- page wrapper -->
<body>

    <div class="boxed_wrapper ltr">

     <!-- main header -->
        <hd:header ID="head" runat="server" />
        <!-- main-header end -->


        <!-- Mobile Menu  -->
        <!-- End Mobile Menu -->


        <!-- page-title -->
        <section class="page-title alternat-2 centred">
            <div class="bg-layer" style="background-image: url(/assets/images/background/page-title.jpg);"></div>
            <div class="auto-container">
                <div class="content-box">
                    <h1><asp:Label ID="Label1" runat="server" Text=""></asp:Label> Packages</h1>
                    <ul class="brdcm-inst">
                        <li><a href="#">Home <i class="fa fa-angle-right"></i></a></li>
                        <li><a href="#">Domestic <i class="fa fa-angle-right"></i></a></li>
                        <li><a href="#" id="lable2" runat="server"></a></li>
                    </ul>
                </div>
            </div>
            
        </section>
        <!-- page-title end -->


        <!-- sidebar-page-container -->
        <section class="sidebar-page-container pt_80 pb_80">
            <div class="pattern-layer">
                <div class="pattern-1" style="background-image: url(/assets/images/shape/shape-26.png);"></div>
                <div class="pattern-2" style="background-image: url(/assets/images/shape/shape-15.png);"></div>
            </div>
            <div class="auto-container">
                <div class="row clearfix">
                    
                    <div class="col-lg-9 col-md-12 col-sm-12 content-side">
                        <div class="tour-list-content">
                            
                            <div class="row clearfix">
                                <asp:Repeater ID="tour_txt" runat="server">
                                    <ItemTemplate>
                                <div class="col-lg-4 col-md-6 col-sm-12 tours-block">
                                     <div class="tours-block-one">
                                        <div class="inner-box">
                                            <div class="image-box">
                                                <figure class="image"><img src="/ServerImage/<%# Eval("Image") %>" alt=""></figure>
                                                <span class="rating"><img src="/assets/images/icons/icon-1.png" alt=""> 4.8</span>
                                            </div>
                                            <div class="lower-content">
                                                <h6><%# Eval("title") %></h6>
                                                <h4><a href="/tour-details/<%# Eval("PackageID") %>/<%# Eval("URL") %>"><%# Eval("pName") %></a></h4>
                                                <span class="day-time"><i class="icon-1"></i><%# Eval("pName") %></span>
                                                <ul class="inclsn">
                                                    <span>Inclusion:</span>
                                                    <li><img src="/assets/images/icons/pkg1.png"></li>
                                                    <li><img src="/assets/images/icons/pkg2.png"></li>
                                                    <li><img src="/assets/images/icons/pkg3.png"></li>
                                                    <li><img src="/assets/images/icons/pkg4.png"></li>
                                                </ul>
                                                <h5><span>Price - </span><%# Eval("Price") %></h5>
                                                <div class="link">
                                                    <a href="/tour-details/<%# Eval("PackageID") %>/<%# Eval("URL") %>">View Detail<i class="fas fa-long-arrow-right"></i></a>
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
                    <div class="col-lg-3 col-md-12 col-sm-12 sidebar-side">
                        <div class="tour-sidebar">
                            <!-- <div class="sidebar-widget filter-widget pb_40 mb_40">
                                <div class="widget-title mb_35">
                                    <h4>Filter by Price</h4>
                                </div>
                                <div class="range-slider clearfix p_relative">
                                    <div class="price-range-slider"></div>
                                    <div class="range-box">
                                        <div class="price-range mb_20">
                                            <p>Price:</p>
                                            <div class="input p_relative d_iblock"><input type="text" class="property-amount" name="field-name" readonly=""></div>
                                        </div>
                                        <div class="btn-box">
                                            <button type="button" class="clear-btn">Clear</button>
                                            <button type="button" class="theme-btn btn-one">Apply</button>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                            <div class="sidebar-widget category-widget pb_5">
                                <div class="widget-title mb_25">
                                    <h4>Categories</h4>
                                </div>
                                <div class="cswidget-content">
                                    <ul>
                                        <asp:Repeater ID="type_txt" runat="server">
                                            <ItemTemplate>
                                        <li><a href="/tour-type/<%# Eval("typeID") %>/<%# Eval("URL") %>"><i class="fa fa-dot-circle"></i> <%# Eval("Name") %></a></li>
                                                </ItemTemplate>
                                      </asp:Repeater>
                                    </ul>
                                </div>
                            </div>
                            
                        </div>
                        <div class="tour-sidebar-two">
                                <h3 class="text-white mb_30">Get free Quote</h3>
                                <form method="post" action="tour-details.html">
                                    <div class="date-box mb_30 p_relative">
                                        <div class="icon-box"><i class="icon-7"></i></div>
                                        <input type="text" name="" placeholder="Name">
                                    </div>
                                    <div class="date-box mb_30 p_relative">
                                        <div class="icon-box"><i class="icon-5"></i></div>
                                        <input type="text" name="" placeholder="Phone">
                                    </div>
                                    <div class="date-box mb_30 p_relative">
                                        <div class="icon-box"><i class="icon-29"></i></div>
                                        <input type="text" name="" placeholder="Email">
                                    </div>
                                    <div class="date-box p_relative">
                                        <div class="icon-box"><i class="fa fa-pen"></i></div>
                                        <textarea placeholder="Type your message here"></textarea>
                                    </div>
                                    <div class="btn-box">
                                        <button type="submit" class="theme-btn btn-one">Book Now</button>
                                    </div>
                                </form>

                            </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- sidebar-page-container end -->


        <!-- subscribe-section -->
        <section class="subscribe-section">
            <div class="bg-color"></div>
            <div class="auto-container">
                <div class="inner-container">
                    <div class="shape" style="background-image: url(/assets/images/shape/shape-4.png);"></div>
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
    <script src="/assets/js/jquery.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>
    <script src="/assets/js/owl.js"></script>
    <script src="/assets/js/wow.js"></script>
    <script src="/assets/js/jquery.fancybox.js"></script>
    <script src="/assets/js/appear.js"></script>
    <script src="/assets/js/isotope.js"></script>
    <script src="/assets/js/jquery.nice-select.min.js"></script>
    <script src="/assets/js/jquery-ui.js"></script>
    <script src="/assets/js/text_animation.js"></script>
    <script src="/assets/js/text_plugins.js"></script>
    <script src="/assets/js/parallax-scroll.js"></script>
    <script src="/assets/js/jquery.lettering.min.js"></script>
    <script src="/assets/js/jquery.circleType.js"></script>

    <!-- main-js -->
    <script src="/assets/js/script.js"></script>

</body><!-- End of .page_wrapper -->
</html>

