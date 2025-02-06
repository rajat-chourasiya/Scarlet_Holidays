<%@ Control Language="C#" AutoEventWireup="true" CodeFile="head.ascx.cs" Inherits="head" %>

<!-- main header -->
        <header class="main-header">
            
            <div class="header-upper">
                <div class="auto-container">
                    <div class="upper-inner">
                        <figure class="logo-box"><a href="/"><img src="/assets/images/logo.png" alt=""></a></figure>
                        <div class="right-column">
                            <ul class="info-list mr_50">
                                <li>
                                    <i class="icon-5"></i><a href="tel:0987654321">+91-987654321 </a>
                                </li>
                                <li>
                                    <i class="fab fa-whatsapp"></i>
                                    <a href="tel:0987654321">+91-0987654321</a>
                                </li>
                                <li><i class="icon-6"></i>
                                    <a href="mailto:scarletholidays@yahoo.com">scarletholidays@yahoo.com</a>
                                </li>
                            </ul>
                            <ul class="social-links">
                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                                <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- header-lower -->
            <div class="header-lower">
                <div class="container">
                    <div class="outer-box">
                        <div class="menu-area">
                            <!--Mobile Navigation Toggler-->
                            <div class="mobile-nav-toggler">
                                <i class="icon-bar"></i>
                                <i class="icon-bar"></i>
                                <i class="icon-bar"></i>
                            </div>
                            <nav class="main-menu navbar-expand-md navbar-light clearfix">
                                <div class="collapse navbar-collapse show clearfix" id="navbarSupportedContent">
                                    <ul class="navigation clearfix">
                                        <li class="current"><a href="/Default">Home</a></li> 
                                        <li><a href="/about-us">About Us</a></li>
                                        <li><a href="/destination">Destinations</a></li> 
                                        <li class="dropdown"><a href="#">Tour Packages</a>
                                            <ul>
                                                <li class="dropdown"><a href="#">Domestic Destinations</a>
                                                    <ul>
                                                        <asp:Repeater ID="dom_txt" runat="server">
                                                            <ItemTemplate>
                                                        <li><a href="/tour/<%# Eval("DestID") %>/<%# Eval("URL") %>"><%# Eval("Name") %></a></li>
                                                                </ItemTemplate>
                                                      </asp:Repeater>
                                                    </ul>
                                                </li>
                                               <li class="dropdown"><a href="#">International Destinations</a>
                                                    <ul>
                                                        <asp:Repeater ID="Repeater1" runat="server">
                                                            <ItemTemplate>
                                                        <li><a href="/tour/<%# Eval("DestID") %>/<%# Eval("URL") %>"><%# Eval("Name") %></a></li>
                                                                </ItemTemplate>
                                                      </asp:Repeater>
                                                    </ul>
                                                </li>
                                                
                                            </ul>
                                            
                                        </li> 
                                        <li><a href="#">Blog</a></li>  
                                        <li><a href="/experiences">Experiences</a></li> 
                                        <li><a href="/contact-us">Contact Us</a></li> 
                                    </ul>
                                </div>
                            </nav>
                        </div>
                        
                    </div>
                </div>
            </div>

            <!--sticky Header-->
            <div class="sticky-header">
                <div class="auto-container">
                    <div class="outer-box">
                        <div class="logo-box">
                            <figure class="logo"><a href="/"><img src="/assets/images/logo.png" alt=""></a></figure>
                        </div>
                        <div class="menu-area">
                            <nav class="main-menu clearfix">
                                <!--Keep This Empty / Menu will come through Javascript-->
                            </nav>
                        </div>
                        
                    </div>
                </div>
            </div>
        </header>
        <!-- main-header end -->


        <!-- Mobile Menu  -->
        <div class="mobile-menu">
            <div class="menu-backdrop"></div>
            <div class="close-btn"><i class="fas fa-times"></i></div>
            
            <nav class="menu-box">
                <div class="nav-logo"><a href="#"><img src="/assets/images/logo.png" alt="" title=""></a></div>
                <div class="menu-outer"><!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header-->
                    
                </div>
                <div class="contact-info">
                    <h4>Contact Info</h4>
                    <ul>
                        <li><a href="tel:9930684491">9930684491</a></li>
                        <li><a href="mailto:scarletholidays@yahoo.com">scarletholidays@yahoo.com</a></li>
                    </ul>
                </div>
                <div class="social-links">
                    <ul class="clearfix">
                       
                        <li><a href="#"><span class="fab fa-facebook-square"></span></a></li>
                      
                        <li><a href="#"><span class="fab fa-instagram"></span></a></li>
                        <li><a href="#"><span class="fab fa-youtube"></span></a></li>
                    </ul>
                </div>
            </nav>
        </div><!-- End Mobile Menu -->