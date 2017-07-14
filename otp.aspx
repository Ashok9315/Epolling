<%@ Page Language="C#" AutoEventWireup="true" CodeFile="otp.aspx.cs" Inherits="otp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>E-POLLING SYSTEM</title>
    <link href="Content/fonts.googleapis.com" rel="stylesheet" type="text/css" />
  <link href="Content/materialize.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="Content/icon.css" />    <link href="Content/material-cards.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="Content/font-awesome.min.css" />
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css"/>--%>
    <style type="text/css">
        
        #RadioButtonList1{
            display:inline;
        }
        label{
            margin-right: 40px;
        }
    </style>
</head>
<body>

    <!--Nav bar-->
    <form id="form1" runat="server">
        <div class="navbar-fixed">

    <nav class="teal" role="navigation">
        <div class="nav-wrapper container">
            <a id="logo-container" href="Default.aspx" class="brand-logo">E-POLLING</a>
            <ul class="right hide-on-med-and-down">
                <li><a href="Elections.aspx">ELECTIONS</a></li>
                <li><a href="Register.aspx">REGISTER</a></li>
                 <li style="text-transform:uppercase;">
                    <asp:LoginStatus ID="LoginStatus2" runat="server"/></li>
               
               
            </ul>
     </div>
    </nav>
    <!--Nav bar End-->
</div>

   
        <br/>
        <br/>

    <div class="container ">
        
            <div class="row">
                <div class="row">
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-large waves-effect waves-light teal lighten-1 hoverable" OnClick="LinkButton2_Click">
                    <i class="material-icons left">send</i>
                    GENERATE OTP</asp:LinkButton>
            </div>
                <div class="row">
                <div class="input-field col 6">
                    <i class="material-icons prefix">room</i>
                    <input id="otp1" type="text" class="validate" runat="server" maxlength="20" />
                    <label for="otp1">ENTER YOU OPT</label>
                </div>
                    </div>
                <div class="row">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-large waves-effect waves-light teal lighten-1 hoverable" OnClick="LinkButton1_Click"><i class="material-icons left">input</i>AUTHENTICATE</asp:LinkButton>
                 </div>
            </div>
        </div>  
        
        <div class="row">
                
            </div> 
         </form>
   <asp:Label ID="lblOTP" runat="server" Font-Bold="True" ForeColor="Red" />
    <!--Form End-->

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
    <%--<script src="Scripts/bootstrap.min.js" type="text/javascript"></script>--%>
</body>
</html>
