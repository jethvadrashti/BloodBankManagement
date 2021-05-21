<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="themes_sulfer_premium_About" %>

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
                            <h2 style="color:white;text-align:center">About Us</h2>
                        </div>
                    </div>
                </div>
            
        
        <!-- End Header Section -->
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <asp:Image runat="server" ID="mainphoto" ImageUrl="~/themes/sulfer-premium/asset/images/blood-bank-management-system.jpg" />
                </div>
            </div>
        </div>
        
           <!-- Start About-section 2 -->
        <section id="about-section-2">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                   <div class="about-text">
                    
                   </div>
                   
                   <div class="skill-shortcode">
                        
                        <!-- Progress Bar -->
                        <div class="skill">
                            <p>Donation Ratio</p>          
                            <div class="progress">         
                                <div class="progress-bar" role="progressbar"  data-percentage="60">
                                    <span class="progress-bar-span" >60%</span>
                                    <span class="sr-only">60% Complete</span>
                                </div>
                            </div>  
                        </div>
                        
                        <!-- Progress Bar -->
                        <div class="skill">
                            <p>Acceptant Ration</p>          
                            <div class="progress">         
                                <div class="progress-bar" role="progressbar"  data-percentage="95">
                                    <span class="progress-bar-span" >95%</span>
                                    <span class="sr-only">95% Complete</span>
                                </div>
                            </div>  
                        </div>
                        
                        <!-- Progress Bar -->
                        <div class="skill">
                            <p>Our Client Satisfaction</p>          
                            <div class="progress">         
                                <div class="progress-bar" role="progressbar"  data-percentage="80">
                                    <span class="progress-bar-span" >80%</span>
                                    <span class="sr-only">80% Complete</span>
                                </div>
                            </div>  
                        </div>
                        
                        <!-- Progress Bar -->
                        <div class="skill">
                            <p>Donar Support</p>          
                            <div class="progress">         
                                <div class="progress-bar" role="progressbar"  data-percentage="100">
                                    <span class="progress-bar-span" >100%</span>
                                    <span class="sr-only">100% Complete</span>
                                </div>
                            </div>  
                        </div>
                        
                        <!-- Progress Bar -->
                        <div class="skill">
                            <p>Blood Stock</p>          
                            <div class="progress">         
                                <div class="progress-bar" role="progressbar"  data-percentage="70">
                                    <span class="progress-bar-span" >70%</span>
                                    <span class="sr-only">70% Complete</span>
                                </div>
                            </div>  
                        </div>
                                                            
                    </div>
                   
               </div>
                <div class="col-md-6 wow fadeInLeft" data-wow-duration="2s" data-wow-delay="300ms">
                    
                    <!-- Start Accordion Section -->
                    <div class="panel-group" id="accordion">

                        <!-- Start Accordion 1 -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse-1">
                                        <i class="fa fa-angle-left control-icon"></i> Who We are
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse-1" class="panel-collapse collapse in">
                                <div class="panel-body">Blood Bank is an Information Services & Technology Company with over 20 years of professional experience, providing software consultancy and solutions to cover the entire continuum of patient care and hospital administration to clients globally. We are involved in several verticals, of which healthcare is our primary focus.</div>								</div>
                        </div>
                        <!-- End Accordion 1 -->

                        <!-- Start Accordion 2 -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse-2" class="collapsed">
                                        <i class="fa fa-angle-left control-icon"></i> What we do
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse-2" class="panel-collapse collapse">
                                <div class="panel-body">Setting up a fully functional software infrastructure for any medical institute is a daunting process. Another challenge faced by medical institutes is the interoperability enabling seamless data exchange within various departments. At Raster, we believe in the power of open source and interoperability to achieve lower infrastructure cost. Pioneers in PACS, Raster has ventured into the Internet of Medical Things (IoMT) connecting the various medical devices, software applications and healthcare systems and services.</div>								</div>
                        </div>
                        <!-- End Accordion 2 -->
                        
                        <!-- Start Accordion 3 -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse-3" class="collapsed">
                                        <i class="fa fa-angle-left control-icon"></i> Our Goal
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse-3" class="panel-collapse collapse">
                                <div class="panel-body">Blood Bank is committed to supporting any organisation to build their “Next Generation Business Model” in order to meet the demands of their stakeholders. Our mission is to provide quality and cost-effective software development services in a timely manner to help our client stay competitive in the marketplace. At Raster Images, our customers come first and an integral part of our DNA is creating long-lasting partnerships and working with our customers to identify their needs and provide solutions that support their success.
</div>								</div>
                        </div>
                        <!-- End Accordion 3 -->

                        <!-- Start Accordion 4 -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse-4" class="collapsed">
                                        <i class="fa fa-angle-left control-icon"></i> Why Choose Us ?
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse-4" class="panel-collapse collapse">
                                <div class="panel-body">Our softwares applications are powerful, flexible, and scalable to meet the needs of any business. We have always been innovators and pioneers, working with great leaders. Our success comes from the continuous faith in the excellence of our products and services, something we are committed to and would never sacrifice. We always strive to exceed our customers’ expectations and meet their requirements. Our customer service, especially in the after sales phase, guarantees the satisfaction of our clients.
</div>
                            </div>
                        </div>
                        <!-- End Accordion 4 -->

                        <!-- Start Accordion 5 -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse-5" class="collapsed">
                                        <i class="fa fa-angle-left control-icon"></i> Our Great Support
                                    </a>
                                </h4>
                            </div>
                            <div id="collapse-5" class="panel-collapse collapse">
                                <div class="panel-body">Dr. Suresh Viswanathan, a medical doctor with long-standing interests in medical informatics and imaging, started the software development company named Raster Images to pioneer medical imaging in the region over a decade ago. Today Raster Images has matured into a recognised organisation in the IT industry for designing, developing, implementing and training highly technological and innovative solutions for complex problems faced by both the private and public sector. Through market leadership, financial strength and responsible business practices, we demonstrate our enduring capacity to serve any business as key partners. Raster Images has been a “Trusted Adviser” for many medical institutes.</div>
                            </div>
                        </div>
                        <!-- End Accordion 5 -->

                    </div>
                    <!-- End Accordion section -->
                    
                </div><!--/.col-md-6 -->
                </div>
            </div>
        </section>
        <!-- Start About-section 2 -->
        
        
      
        
        
        
        <!-- Start Team Member Section -->
    <section id="team-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-center wow fadeInDown" data-wow-duration="2s" data-wow-delay="50ms">
                        <h2>Our Team</h2>
                        
                    </div>                        
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 wow fadeInLeft" data-wow-duration="2s" data-wow-delay="300ms">
                    <div class="team-member">
                        <img src="asset/images/team/team-1.jpg" class="img-responsive" alt="">
                        <div class="team-details">
                            <h4>John Doe</h4>
                            <p>Founder & Director</p>
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div><!-- /.col-md-3 -->
                <div class="col-md-3 wow fadeInLeft" data-wow-duration="2s" data-wow-delay="600ms">
                    <div class="team-member">
                        <img src="asset/images/team/team-2.jpg" class="img-responsive" alt="">
                        <div class="team-details">
                            <h4>Dom carel</h4>
                            <p>Founder & Director</p>
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div><!-- /.col-md-3 -->
                <div class="col-md-3 wow fadeInLeft" data-wow-duration="2s" data-wow-delay="900ms">
                    <div class="team-member">
                        <img src="asset/images/team/team-3.jpg" class="img-responsive" alt="">
                        <div class="team-details">
                            <h4>Dizard dul</h4>
                            <p>Founder & Director</p>
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div><!-- /.col-md-3 -->
                <div class="col-md-3 wow fadeInLeft" data-wow-duration="2s" data-wow-delay="1200ms">
                    <div class="team-member">
                        <img src="asset/images/team/team-4.jpg" class="img-responsive" alt="">
                        <div class="team-details">
                            <h4>John smith</h4>
                            <p>Founder & Director</p>
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div><!-- /.col-md-3 -->
            </div>
        </div>
    </section>
    <!-- End Team Member Section -->
        
        
        
        
        
        
         
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
