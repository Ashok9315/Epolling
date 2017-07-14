<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sltsymbol.aspx.cs" Inherits="sltsymbol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>E-POLLING </title>
    <link href="Content/fonts.googleapis.com" rel="stylesheet" type="text/css" />
  <link href="Content/materialize.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="Content/icon.css" />    <link href="Content/material-cards.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="Content/font-awesome.min.css" />
     <link rel="stylesheet" href="Content/dd.css" />
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css"/>--%>
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.dd.js" type="text/javascript"></script>
 
     
    <script type="text/javascript" >
    $(document).ready(function (e) {
        try {
            $("#ddlprofile").msDropDown();
        } catch (e) {
            alert(e.message);
        }
    });
</script>
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

           
    </nav>
    <!--Nav bar End-->
</div>

   
        <br/>
        <br/>

    <div class="container">
        <asp:DropDownList ID="ddlprofile" runat="server" Width="300px"></asp:DropDownList>
        </div>  
        <div class="row center">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-large waves-effect waves-light teal lighten-1 hoverable" OnClick="LinkButton1_Click"><i class="material-icons left">assignment</i>SELECT SYMBOL</asp:LinkButton>
            </div>
        <asp:Label ID="Label1" runat="server" Text="" ForeColor="#33CC33"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red"></asp:Label>
         </form>
   
    <!--Form End-->

    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.dd.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/Content/dd.css" />
    <script src="Scripts/materialize.min.js"></script>
    <script src="Scripts/init.js" type="text/javascript"></script>
    <%--<script src="Scripts/bootstrap.min.js" type="text/javascript"></script>--%>

    
</body>
</html>
