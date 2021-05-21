<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="themes_sulfer_premium_Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <!-- Define Charset -->
        <meta charset="utf-8"/>

        <!-- Responsive Metatag -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

        <!-- Page Description and Author -->
        <meta name="description" content="Sulfur - Responsive HTML5 Template"/>
        <meta name="author" content="Shahriyar Ahmed"/>

        <!-- Bootstrap CSS  -->
        <link rel="stylesheet" href="asset/bootstrap/css/bootstrap.min.css" type="text/css"/>

        <!-- Font Awesome CSS -->
        <link rel="stylesheet" href="asset/font-awesome/css/font-awesome.min.css" type="text/css"/>

        <!-- Owl Carousel CSS -->
        <link rel="stylesheet" href="asset/css/owl.carousel.css" type="text/css"/>
        <link rel="stylesheet" href="asset/css/owl.theme.css" type="text/css"/>
        <link rel="stylesheet" href="asset/css/owl.transitions.css" type="text/css"/>
        
        <!-- Css3 Transitions Styles  -->
        <link rel="stylesheet" type="text/css" href="asset/css/animate.css"/>
        
        <!-- Lightbox CSS -->
        <link rel="stylesheet" type="text/css" href="asset/css/lightbox.css"/>

        <!-- Sulfur CSS Styles  -->
        <link rel="stylesheet" type="text/css" href="asset/css/style.css"/>

        <!-- Responsive CSS Style -->
        <link rel="stylesheet" type="text/css" href="asset/css/responsive.css"/>


        <script src="asset/js/modernizrr.js"></script>

</head>
<body>
    <form id="form1" runat="server">
         <header>
            <!-- Start  Logo & Naviagtion  -->
            <div class="navbar navbar-default navbar-top">
                <div class="container">
                    <div class="navbar-header">
                        <!-- Stat Toggle Nav Link For Mobiles -->
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <i class="fa fa-bars"></i>
                        </button>
                        <!-- End Toggle Nav Link For Mobiles -->
                         <div class="row">
                            <div class="col-md-1">
                                <asp:Image runat="server" ID="logo" ImageUrl="~/themes/sulfer-premium/asset/images/logo.jpg" style="width:50px"/>
                            </div>
                            <div class="col-md-11">
                                <a class="navbar-brand" href="Home.aspx">Blood Bank Management</a>
                            </div>
                        </div>
                    </div>
                    <div class="navbar-collapse collapse">
                        
                        <!-- Start Navigation List -->
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="Home.aspx">Home</a>
                            </li>
                            <li>
                                <a href="About.aspx">About Us</a>
                            </li>
                            <li>
                                <a href="Services.aspx">Service</a>
                            </li>
                           
                            <li><a href="Contact.aspx">Contact</a>
                            </li>
                             <li>
                                <br />
                                   <asp:Button  ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-danger pull-right" OnClick="Button1_Click"/>
                            </li>
                        </ul>
                        <!-- End Navigation List -->
                        
                    </div>
                </div>
            </div>
            <!-- End Header Logo & Naviagtion -->
            
        </header>
       <!-- Start Header Section -->
        
                <div class="container-fluid">
       
                    <div class="row">
                        <div class="col-md-12" style="background-color:lightcoral;height:50px">
                            <h2 style="color:white;text-align:center">Contact with US</h2>
                        </div>
                    </div>
                </div>
        <section id="pricing-section" class="pricing-section">
        <div class="container">
           <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-center wow fadeInDown" data-wow-duration="2s" data-wow-delay="50ms">
                        <h2>Address</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="pricing">
                        <div class="pricing-header">
                            <i class="fa fa-building-o"></i>
                        </div>
                        <div class="pricing-body">
                            <h3 class="pricing-title">Reg. Office</h3>
                            <p>54, Brindavan Road, Alagapuram, Salem - 636004. Tamil Nadu, India.</p>
                          <i class="fa fa-envelope"></i>&nbsp; Info@raster.in<br />
                              <i class="fa fa-phone"></i>&nbsp;+91 427 4033100
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="pricing">
                        <div class="pricing-header colored-bg">
                            <i class="fa fa-building-o"></i>
                        </div>
                        <div class="pricing-body">
                            <h3 class="pricing-title">Head Office</h3>
                            <p>2nd Floor, #50/1, Brindavan Road, Alagapuram, Salem - 636004. Tamil Nadu, India.</p>
                            <i class="fa fa-envelope"></i>&nbsp; gowthaman.r@raster.in<br />
                           <i class="fa fa-phone"></i>&nbsp; +91 77085 99111
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="pricing">
                        <div class="pricing-header">
                            <i class="fa fa-building-o"></i>
                        </div>
                        <div class="pricing-body">
                            <h3 class="pricing-title">Branch Offices</h3>
                            <p>F-21, Second Floor, Sector 12,Noida - 201 301,<br />
                                Delhi, India</p>
                            <i class="fa fa-envelope"></i>&nbsp; krishnakumar.l@raster.in<br />
                           <i class="fa fa-phone"></i>&nbsp; +91 95666 27733
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
         <div class="google-map">
        <div id="map" data-position-latitude="48.858370" data-position-longitude="2.294481"></div>
    </div>
        <br /><br />
        <!-- Start CCopyright Section -->
        <div id="copyright-section" class="copyright-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="copyright">
                            Copyright © 2021 All Rights Reserved. Design and Developed by BloodBank
                        </div>
                    </div>
                    
                    <div class="col-md-5">
                        <div class="copyright-menu pull-right">
                            <ul>
                                <li><a href="Home.aspx" class="active">Home</a></li>
                                <li><a href="About.aspx">About Us</a></li>
                                <li><a href="Services.aspx">Services</a></li>
                                 <li><a href="Contact.aspx">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div><!--/.row -->
            </div><!-- /.container -->
        </div>
        <!-- End CCopyright Section -->
        
        
        
       <!-- Sulfur JS File -->
        <script src="asset/js/jquery-2.1.3.min.js"></script>
        <script src="asset/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="asset/bootstrap/js/bootstrap.min.js"></script>
        <script src="asset/js/owl.carousel.min.js"></script>
        <script src="asset/js/jquery.appear.js"></script>
        <script src="asset/js/jquery.fitvids.js"></script>
        <script src="asset/js/jquery.nicescroll.min.js"></script>
        <script src="asset/js/lightbox.min.js"></script>
        <script src="asset/js/count-to.js"></script>
        <script src="asset/js/styleswitcher.js"></script>
        
        <script src="asset/js/map.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
        <script src="asset/js/script.js"></script> 
    </form>
</body>
</html>
