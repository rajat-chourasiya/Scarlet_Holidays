<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tour-details.aspx.cs" Inherits="tour_details" %>
<%@ Register TagName="header" TagPrefix="hd" Src="~/head.ascx" %>
<%@ Register TagName="footer" TagPrefix="ft" Src="~/footer.ascx" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<title>Scarlet Holidays | Tour Packages</title>

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
<link href="/assets/css/module-css/tour-details.css" rel="stylesheet">
<link href="/assets/css/module-css/subscribe.css" rel="stylesheet">
<link href="/assets/css/responsive.css" rel="stylesheet">
<link href="/assets/css/module-css/page-title.css" rel="stylesheet">

</head>


<!-- page wrapper -->
<body>

    <div class="boxed_wrapper ltr">

        <!-- main header -->
        <hd:header ID="head" runat="server" />


        <!-- page-title -->
        <section class="page-title centred">
            <div class="bg-layer" style="background-image: url(/assets/images/background/page-title-6.jpg);"></div>
            <div class="auto-container">
                <div class="content-box">
                    <h1>Tour Packages</h1>
                    <ul class="brdcm-inst">
                        <li><a href="#">Home <i class="fa fa-angle-right"></i></a></li>
                        <%-- <li><a href="#">Domestic <i class="fa fa-angle-right"></i></a></li>--%>
                          <li><a href="#">Beach</a></li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- page-title end -->

        <!-- tour-details -->
        <section class="tour-details pt_50 pb_20">
            <div class="auto-container">
                <div class="tour-details-content">
                    <div class="row clearfix">
                        <div class="col-lg-8 col-md-12 col-sm-12 content-side">
                            <div class="content-box">
                                <div class="title-box mb_35">
                                    <h2><asp:Label ID="n2_txt" runat="server" Text=""></asp:Label></h2>
                                    <div class="image-box mb_30">
                                        <figure class="image">
                                           <%-- <img src="/assets/images/resource/destination-14.jpg" alt="">--%>
                                            <asp:Image ID="pkg_img" runat="server" Style="height: 567px" />
                                        </figure>
                                    </div>
                                    <ul class="info-list clearfix">
                                        <li>
                                            <i>&#8377;</i>
                                            <span>Price</span>
                                            <h4 class="price" id="price" runat="server"></h4>
                                        </li>
                                        <li>
                                            <i class="icon-1"></i>
                                            <span>Duration</span>
                                              <h4 id="dura" runat="server"></h4>
                                        </li>
                                        
                                        <li>
                                            <i class="icon-22"></i>
                                            <span>Destination</span>
                                            <h4 id="type_txt" runat="server"></h4>
                                        </li>
                                        <li>
                                            <i class="far fa-star"></i>
                                            <span>Reviews</span>
                                            <h4><asp:Label ID="rating" runat="server" Text=""></asp:Label>
                                            </h4>
                                        </li>
                                    </ul>
                                </div>
                                
                                <div class="overview-inner pb_10 mb_55 border-bottom">
                                    <h3>Overview</h3>
                                    <p class="mb_40" id="ov_txt" runat="server"></p>
                                    <div class="tour-plans pb_60 mb_55 border-bottom">
                                    <h3>Itinerary</h3>
                                    <ul class="accordion-box">
                                        <asp:Repeater ID="det_txt" runat="server">
                                            <ItemTemplate>
                                        <li class="accordion block active-block">
                                            <div class="acc-btn active">
                                                <div class="icon-box"></div>
                                                <span>Day <%# Eval("sl") %></span>
                                                <h4><%# Eval("DayTitle") %></h4>
                                            </div>
                                            <div class="acc-content current">
                                                <div class="text">
                                                    <p><%# Eval("DayDetails") %></p>
                                                </div>
                                            </div>
                                        </li>
                                                </ItemTemplate>
                                        </asp:Repeater>


                                    </ul>
                                </div>
                                    <h3>Inclusion and Exclusion</h3>
                                    <div class="list-inner">
                                        <div class="row clearfix">
                                            <div class="col-lg-6 col-md-6 col-sm-12 list-column">
                                                <ul class="list-one mb_50 clearfix">
                                                   <span id="inc_txt" runat="server"></span>
                                                </ul>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-12 list-column">
                                                <ul class="list-two mb_50 clearfix">
                                                    <span id="exp" runat="server"></span>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12 sidebar-side">
                            <div class="tour-sidebar-two ml_20">
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
                            <div class="catg-sec-trpg" style="background: url(/assets/images/sidebar.jpg);">
                                    <h3 class="text-white">Travel by Activity</h3>
                                    <ul class="mt_20">
                                        <asp:Repeater ID="type_txt1" runat="server">
                                            <ItemTemplate>
                                        <li>
                                            <img src="/ServerImage/<%# Eval("Image") %>" alt="">
                                            <a href="/tour-type/<%# Eval("typeID") %>/<%# Eval("URL") %>"><%# Eval("Name") %></a>
                                        </li>
                                                </ItemTemplate>
                                        </asp:Repeater>

                                       
                                    </ul>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- tour-details end -->


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
                                <a href="tel:9930684491"><i class="icon-5"></i>9930684491 | 9930682339 | 02226483603</a>
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
