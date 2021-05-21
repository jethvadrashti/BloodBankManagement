<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="themes_sulfer_premium_SignUp" %>

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
    <link href="StyleSheet7.css" rel="stylesheet" />
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
                                   <asp:Button  ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-danger pull-right" OnClick="btnLogin_Click"/>
                            </li>
                        </ul>
                        <!-- End Navigation List -->
                    </div>
                  
                </div>
            </div>
             </header>
          

    <label id="lblRegisterMessage" runat="server"></label>
        <h3 style="text-align:center;color:orangered;" class="alert-danger"><b>New Registration Form</b></h3>
        <br /><br /><br />
    <div class="container1">
        
       <b style="font-size:large">Name :</b>
        
         <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rdfName" runat="server" ControlToValidate="txtName" Display="Dynamic" Text="Enter Name" ForeColor="Red"  ValidationGroup="signup"></asp:RequiredFieldValidator>
        <br /><br />

       <b style="font-size:large">Email :</b>

        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rdfEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic"  Text="Enter Email"  ForeColor="Red"  ValidationGroup="signup"></asp:RequiredFieldValidator>
 
       
        <br /><br />

         <b style="font-size:large">Mobile :</b>
        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rdfMobile" runat="server" ControlToValidate="txtMobile" Display="Dynamic"  Text="Enter Mobile"  ForeColor="Red"  ValidationGroup="signup"></asp:RequiredFieldValidator>
        <br /><br />

         <b style="font-size:large">Gender :</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
        <asp:RadioButton ID="rbMale" runat="server"  GroupName="gen" Text="Male" Checked="true" />
       &nbsp&nbsp;
        <asp:RadioButton ID="rbFemale" runat="server"  GroupName="gen" Text="Female" Checked="true"/>
         &nbsp&nbsp;
        <asp:RadioButton ID="rbOther" runat="server"  GroupName="gen" Text="Other" Checked="true"/>
   
        <br />   <br />  

        <b style="font-size:large">Age :</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
        <asp:DropDownList ID="ddlAge" runat="server" AutoPostBack="true" CssClass="form-control">
            <asp:ListItem>(Select Age)</asp:ListItem>
             <asp:ListItem>Above 18</asp:ListItem>
             <asp:ListItem>Below 18</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rdfAge" runat="server" ControlToValidate="ddlAge" Display="Dynamic"  Text="Select Age"  ForeColor="Red"  ValidationGroup="signup"></asp:RequiredFieldValidator>
        <br /><br />

         <b style="font-size:large">Blood Group :</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
        <asp:DropDownList ID="ddlbg" runat="server" AutoPostBack="true" CssClass="form-control">
            <asp:ListItem>(Select Blood Group)</asp:ListItem>
             <asp:ListItem>A+</asp:ListItem>
             <asp:ListItem>B+</asp:ListItem>
             <asp:ListItem>A-</asp:ListItem>
             <asp:ListItem>B-</asp:ListItem>
             <asp:ListItem>AB+</asp:ListItem>
             <asp:ListItem>AB-</asp:ListItem>
             <asp:ListItem>O+</asp:ListItem>
             <asp:ListItem>O-</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rdfBloodGroup" runat="server" ControlToValidate="ddlbg" Display="Dynamic" Text="Select Blood Group"  ForeColor="Red"  ValidationGroup="signup"></asp:RequiredFieldValidator>
        <br /><br />

         <b style="font-size:large">Weight(In Kg) :</b> <asp:TextBox ID="txtWeight" runat="server"  CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rdfWeight" runat="server" ControlToValidate="txtWeight" Display="Dynamic"  Text="Enter Weight"  ForeColor="Red"  ValidationGroup="signup"></asp:RequiredFieldValidator>
        <br /><br />
        <b style="font-size:large">Height(In cm) : </b><asp:TextBox ID="txtHeight" runat="server"   CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rdfHeight" runat="server" ControlToValidate="txtHeight" Display="Dynamic"  Text="Enter Height"  ForeColor="Red"  ValidationGroup="signup"></asp:RequiredFieldValidator>
        <br /><br />

         <b style="font-size:large">Select Image :</b> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
         <asp:RequiredFieldValidator ID="rdfFile" runat="server" ControlToValidate="FileUpload1" Display="Dynamic"  Text="Upload File"  ForeColor="Red"  ValidationGroup="signup"></asp:RequiredFieldValidator>
        <br /><br />


        <b style="font-size:large">Password :</b><asp:TextBox ID="txtPassword" runat="server" TextMode="password" CssClass="form-control"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfdPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic"  Text="Enter Password"  ForeColor="Red"  ValidationGroup="signup"></asp:RequiredFieldValidator>


        <br /><br />


        <b style="font-size:large">Address : </b><asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" CssClass="form-control" Rows="4"></asp:TextBox>
         <asp:RequiredFieldValidator ID="rfdAddress" runat="server" ControlToValidate="txtAddress" Display="Dynamic"  Text="Enter Address"  ForeColor="Red"  ValidationGroup="signup"></asp:RequiredFieldValidator>
        <br /><br />
        <div class="row">
           <div class="col-md-3"></div>
            <div class="col-md-2">
                 <asp:Button ID="btnSubmit" runat="server" Text="Submit"  CssClass="btn btn-success text-center" Onclick="btnSubmit_Click"  ValidationGroup="signup"/>
            </div>
         
            <div class="col-md-2">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel"  CssClass="btn btn-danger  text-center"  Onclick="btnCancel_Click" ValidationGroup="cancel" />
            </div>
              <div class="col-md-3"></div>
        </div>
      
      
   </div>
        
    
  
    
    
     
    </form>
</body>
</html>


