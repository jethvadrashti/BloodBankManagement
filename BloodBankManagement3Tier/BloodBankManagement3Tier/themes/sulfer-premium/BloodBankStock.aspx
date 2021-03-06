<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BloodBankStock.aspx.cs" Inherits="themes_sulfer_premium_BloodBankStock" %>

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
    <link href="StyleSheet4.css" rel="stylesheet" />
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
             </header>
             <!-- Start Header Section -->
               <table>
        <tr>
            <th>Blood Group</th>
             <th>Available Stock in(ml)</th>
        </tr>
        <tr>
            <td>A+</td>
            <td>
                <asp:Label ID="label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>A-</td>
            <td>
                <asp:Label ID="label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>B+</td>
            <td>
                <asp:Label ID="label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>B-</td>
            <td>
                <asp:Label ID="label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>O+</td>
            <td>
                <asp:Label ID="label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>O-</td>
            <td>
                <asp:Label ID="label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>AB+</td>
            <td>
                <asp:Label ID="label7" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>AB-</td>
            <td>
                <asp:Label ID="label8" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <br /><br /><br />
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
