<%@ Control Language="C#" AutoEventWireup="true" CodeFile="footer.ascx.cs" Inherits="footer" %>

<footer class="main-footer">
            <div class="pattern-layer" style="background-image: url(/assets/images/shape/shape-5.png);"></div>
            <div class="widget-section p_relative pt_60 pb_55">
                <div class="container">
                    <div class="row clearfix">
                        <div class="col-lg-4 col-md-4 col-sm-12 footer-column">
                            <div class="footer-widget logo-widget">
                                <figure class="footer-logo"><a href="/"><img src="/assets/images/logo.png" alt=""></a></figure>
                                <div class="text-box">
                                    <p>We are committed to offering travel services of the highest quality, combining our energy and enthusiasm, with our years of experience. Our greatest satisfaction comes in serving large numbers of satisfied clients who have experienced the joys and inspiration of travel.</p>
                                    <ul class="socl-list clearfix">
                                        <li><a href="#"><i class="fa-brands fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa-brands fa-instagram"></i></a></li>
                                        <li><a href="#"><i class="fa-brands fa-youtube"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-12 footer-column">
                            <div class="footer-widget links-widget">
                                <div class="widget-title">
                                    <h3>Quick Links</h3>
                                </div>
                                <div class="widget-content">
                                    <ul class="links-list clearfix">
                                        <li><a href="/Default"><i class="fas fa-long-arrow-right"></i> Home</a></li>
                                        <li><a href="/about-us"><i class="fas fa-long-arrow-right"></i> About Us</a></li>
                                        <li><a href="/destination"><i class="fas fa-long-arrow-right"></i> Destination</a></li>
                                        <li><a href="#"><i class="fas fa-long-arrow-right"></i> Blog</a></li>
                                        <li><a href="/experiences"><i class="fas fa-long-arrow-right"></i> Experiences</a></li>
                                        <li><a href="/contact-us"><i class="fas fa-long-arrow-right"></i> Contact Us</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-12 footer-column">
                            <div class="footer-widget links-widget">
                                <div class="widget-title">
                                    <h3>Top Categories</h3>
                                </div>
                                <div class="widget-content">
                                    <ul class="links-list clearfix">
                                        <asp:Repeater ID="ft_txt" runat="server">
                                            <ItemTemplate>
                                        <li><a href="/tour-type/<%# Eval("typeID") %>/<%# Eval("URL") %>"><i class="fas fa-long-arrow-right"></i> <%# Eval("Name") %></a></li>
                                                </ItemTemplate>
                                  </asp:Repeater>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-12 footer-column">
                            <div class="footer-widget links-widget">
                                <div class="widget-title">
                                    <h3>Services</h3>
                                </div>
                                <div class="widget-content">
                                    <ul class="links-list clearfix">
                                        <li><a href="#"><i class="fas fa-long-arrow-right"></i> Airline Ticketing</a></li>
                                        <li><a href="#"><i class="fas fa-long-arrow-right"></i> Transportation</a></li>
                                        <li><a href="#"><i class="fas fa-long-arrow-right"></i> Hotel Booking</a></li>
                                    </ul>
                                </div>
                                
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-12 footer-column">
                            <div class="footer-widget links-widget">
                                <div class="widget-title">
                                    <h3>Travel Master</h3>
                                </div>
                                <div class="widget-content">
                                    <ul class="links-list clearfix">
                                        <li><a href="#"><i class="fas fa-long-arrow-right"></i> Do's and Don'ts</a></li>
                                        <li><a href="#"><i class="fas fa-long-arrow-right"></i> Visa Rules</a></li>
                                        <li><a href="#"><i class="fas fa-long-arrow-right"></i> Utilities</a></li>
                                        <li><a href="#"><i class="fas fa-long-arrow-right"></i> Online Payments</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="auto-container">
                    <div class="bottom-inner">
                        <div class="copyright "><p>Copyright &copy; 2025 <a href="/Default">Scarlet Holidays</a>. All Rights Reserved || Designed by <a href="#">@Rajat </a></p></div>
                       
                    </div>
                </div>
            </div>
        </footer>
        <!-- main-footer end -->


        <!--Scroll to top-->
        <div class="scroll-to-top">
            <div>
                <div class="scroll-top-inner">
                    <div class="scroll-bar">
                        <div class="bar-inner"></div>
                    </div>
                    <div class="scroll-bar-text">Go To Top</div>
                </div>
            </div>
        </div>