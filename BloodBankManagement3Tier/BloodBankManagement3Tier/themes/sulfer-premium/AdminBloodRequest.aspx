<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminBloodRequest.aspx.cs" Inherits="themes_sulfer_premium_AdminBloodRequest" %>

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
    <link href="StyleSheet8.css" rel="stylesheet" />
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
                            
                        </ul>
                        <!-- End Navigation List -->
                    </div>
                </div>
            </div>
             </header>
         <a href="Admin.aspx"><h3 class="text-center">Admin Home</h3></a><br /><br />
    <h3 class="text-center">Request For Blood :</h3><br /><br />
        <div class="container">
             <nav class="navbar navbar-inverse">
  
    
      <div class="row">
      <div class="form-group col-md-6">
        <asp:TextBox runat="server" ID="txtSearch" Placeholder="Search by BloodType" CssClass="form-control"></asp:TextBox></div>
          <div class="col-md-3">
         <asp:Button ID="btnSearch" runat="server"  CssClass="btn btn-success" Text="Search" Onclick="btnSearch_Click"/></div>
      </div>
     
   
</nav>
            <div class="row">
                <div class="col-md-12">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" BackColor="Yellow" CssClass="gv1 table text-center"
      BorderColor="#DEBAB4" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"   OnRowCommand="GridView1_RowCommand">
         <Columns>
             <asp:BoundField  DataField="Id" HeaderText="Id" InsertVisible="false" ReadOnly="true" SortExpression="Id"/>
             <asp:BoundField  DataField="Name" HeaderText="Name" SortExpression="Name"/>
             <asp:BoundField  DataField="BloodType" HeaderText="BloodType" SortExpression="BloodType"/>
             <asp:BoundField  DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile"/>
             <asp:BoundField  DataField="Email" HeaderText="Email" SortExpression="Email"/>
             <asp:BoundField  DataField="Address" HeaderText="Address" SortExpression="Address"/>
             <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger btn-sm" CommandName="DeleteRecord" CommandArgument='<%# Eval("Id") %>'/>
                   
                </ItemTemplate>
             </asp:TemplateField>
         </Columns>
          <FooterStyle BackColor="White" ForeColor="#DC4510"/>
        <HeaderStyle  BackColor="#A55129" Font-Bold="true" ForeColor="White"/>
        <PagerStyle  ForeColor="#BC4510" HorizontalAlign="Center"/>
        <RowStyle  BackColor="#FFF2E7" ForeColor="#BC4510"/>
        <SelectedRowStyle  BackColor="#73BADC" Font-Bold="true" ForeColor="White"/>
        <SortedAscendingCellStyle BackColor="#FFF1DA" />
        <SortedDescendingCellStyle  BackColor="White"/>
        <SortedDescendingHeaderStyle BackColor="#93451F"/>
     </asp:GridView></div></div></div>
     
        <br /><br /><br />
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
    </form>
</body>
</html>
